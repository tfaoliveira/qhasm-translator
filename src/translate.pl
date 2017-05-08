#!/usr/bin/perl

# Examples ##############################################################################
#                              
# $./translate -help                Print help and exit
#                           
# $./translate -print-doc           Parse and print doc's files and then exit
#                           
# $./translate -in file  -out file    Translate the qhasm code into C code
#
#########################################################################################

use strict;
use warnings;

use Getopt::Long;   # Used to get the arguments

(my $path = $0) =~ s/translate.pl$//g;
push @INC, $path;  # This line adds the current folder in the environment variable include

require 'doc.pl';   # Get qhasm documentation
require 'parse.pl';  # Parse information present in qhasm file
require 'map.pl';    # Match the instructions collected by parse.pl with avaiable instructions in documentation

# Arguments
my ($temp_file, $help, $print_doc, $print_parsed, $print_parsed_exit, $in_file, $out_file, $ext_variable_types, $in_variable_types, $map_file, $mil) = 
   ("temporary.q","","","","","","","","","./config/map","");

# Variables
my ($parsed_file, %ext_mandatory_types, %in_mandatory_types) = ( "", (), () );

# Get arguments
GetOptions('help' => \$help, 
           'print-doc' => \$print_doc, 
           'temp-file' => \$temp_file,
           'map-file=s' => \$map_file,
           'in=s' => \$in_file, 
           'out=s' => \$out_file, 
           'print-parsed' => \$print_parsed,
           'print-parsed-exit' => \$print_parsed_exit,
           'ext-variables=s' => \$ext_variable_types,
           'in-variables=s' => \$in_variable_types,
           'mil' => \$mil
          );

# Print help menu if is intended or if are missing mandatory arguments
if(!$print_doc && ($help or !$in_file or (!$out_file && !$print_parsed_exit)))
{
  print_help();
}

# Get translation information
my @map_info = get_map_info($map_file);

# Print translation information
if($print_doc)
{ 
  print_map_info(\@map_info);
  exit;
}

# Parse the input file
$parsed_file = parse_file($in_file, $temp_file);

# Check if there are global variables to be considered
if($ext_variable_types)
{
    my @vars = split ';', $ext_variable_types;    # Variables are in following form: 'array:uip;result:ui'. Split them
    for my $var (@vars)                    # For each one of the entries
    {
      my ($name,$type) = split ':', $var;        # Make another split
      $parsed_file->{declarations}{$name} = "iv";  # Add them to the parsed file information
      $ext_mandatory_types{$name} = $type;      # These types are mandatory
    }
}
else
{
    $ext_variable_types = "";                      # Ensure that the variable are empty
}

# Check if there are variables with fixed types
if($in_variable_types)
{
  %in_mandatory_types = split /:|;/, $in_variable_types;
}


# Print the information from parsed qhasm file
if($print_parsed)
{
  my ($n, $t) = ("","");

  # Print arguments
  print "Arguments:\n";
  print "\t".$parsed_file->{arguments}{$_}." ".$_."\n" for (sort keys %{$parsed_file->{arguments}});
  #  print "\t$t $n\n" while( ($n, $t) = each %{$parsed_file->{arguments}} );

  # Print other declarations
  print "Variables:\n";
  print "\t".$parsed_file->{declarations}{$_}." ".$_."\n" for (sort keys %{$parsed_file->{declarations}});

  print "Functions:\n";
  for my $f (@{$parsed_file->{functions}})
  {
    print "\tComments: ", (join ' ::: ', @{$f->{comments}}), "\n";
    print "\tName: ", $f->{name}, "\n";
    print "\tInstructions: \n";
    for my $i (@{$f->{inst}})
    {
      print "\t\t$i\n";
    }
    print "\n";
  }
  exit if $print_parsed_exit; # Exit
}

# init the output file
open OUT, ">".$out_file; 
  # include clause if not mil
  if(!$mil)
  { print OUT "#include \"qhasm-translator.h\"\n\n"; }
close OUT;

# Translate all functions in qhasm file
for my $f (@{$parsed_file->{functions}})
{
  translate_function(\@map_info, $f, \%{$parsed_file->{arguments}}, \@{$parsed_file->{sorted_arguments}},  
    \%{$parsed_file->{declarations}}, \%ext_mandatory_types, \%in_mandatory_types, $out_file, $mil);

}

1;
