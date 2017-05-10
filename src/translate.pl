#!/usr/bin/perl

# Examples ##############################################################################
#                              
# $./translate -help # print help and exit
#                           
# $./translate -print-map # parse and print map files
#                           
# $./translate -in file  -out file # translates qhasm to C
#
# $./translate (...) -in-variables "name:type" -- to fix a given variable type
#
#########################################################################################

use strict;
use warnings;
use Getopt::Long; # get options http://perldoc.perl.org/Getopt/Long.html

(my $path = $0) =~ s/translate.pl$//g;
push @INC, $path; # adds the current folder in the environment variable INC

require 'doc.pl';  # for loading mapping/types/... files
require 'parse.pl'; # transforms a qhasm file into a set of variables/function arguments and functions
require 'map.pl';  # it performs the match between actual instructions and instructions specifications; type resolution;

# translate arguments/options
my ($help, #
    $print_map, #
    $print_parsed, #
    $print_parsed_exit, #
    $in_file, $out_file, #
    $ext_variable_types, #
    $in_variable_types, #
    $map_file, # 
    $mil, # 
    $debug_regex, #
    $types_file, #
    $ext_variable_values_str
   ) = ("","","","","","","","","../config/map","","","../config/types", "");

# local variables
my $parsed_file = ""; # 
my %ext_mandatory_types = (); #
my %in_mandatory_types = (); #
my %ext_variable_values = (); #

# get translate.pl arguments
GetOptions('help' => \$help, 
           'print-map' => \$print_map,
           'map-file=s' => \$map_file,
           'in=s' => \$in_file, 
           'out=s' => \$out_file, 
           'print-parsed' => \$print_parsed,
           'print-parsed-exit' => \$print_parsed_exit,
           'ext-variables=s' => \$ext_variable_types,
           'in-variables=s' => \$in_variable_types,
           'mil' => \$mil,
           'debug-regex' => \$debug_regex,
           'types-file=s' => \$types_file,
           'ext-variable-values=s' => \$ext_variable_values_str,
          );

# print help and exit
if(!$print_map && ($help or !$in_file or (!$out_file && !$print_parsed_exit)))
{ print_help();
  exit;
}

# load map file :: default is 'map'
my @map_info = get_map_info($map_file);

# print map info
if($print_map)
{ print_map_info(\@map_info);
  exit;
}

# load qhasm input file
$parsed_file = parse_file($in_file);

# check if there are global/external variables that have to be considered...
if($ext_variable_types)
{
  my @vars = split ';', $ext_variable_types; # ext. vars have the following format: 'array:uip;result:ui'
  for my $var (@vars) # for each one of the vars...
  { 
    my ($name,$type) = split ':', $var; # split name and type
    $parsed_file->{declarations}{$name} = "iv"; # add var to parsed file information
    $ext_mandatory_types{$name} = $type; # the types is mandatory
  }
}

# check if there are mandatory types... (same format as above)
if($in_variable_types)
{
  %in_mandatory_types = split /:|;/, $in_variable_types;
}

# load external variable values
if($ext_variable_values_str)
{
  %ext_variable_values = split /:|;/, $ext_variable_values_str;
}

# print info from qhasm file
if($print_parsed)
{
  my ($n, $t) = ("","");

  # print arguments
  print "Arguments:\n";
  print "\t".$parsed_file->{arguments}{$_}." ".$_."\n" for (sort keys %{$parsed_file->{arguments}});

  # print variable declarations
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
  exit if $print_parsed_exit; # exit
}

# init the output file
open OUT, ">".$out_file; 
print OUT "#include \"qhasm-translator.h\"\n\n" if(!$mil);
close OUT;

# foreach function... 
for my $f (@{$parsed_file->{functions}})
{
  translate_function(
    \@map_info,
    $f,
    \%{$parsed_file->{arguments}},
    \@{$parsed_file->{sorted_arguments}},
    \%{$parsed_file->{declarations}},
    \%ext_mandatory_types,
    \%ext_variable_values,
    \%in_mandatory_types,
    $out_file,
    $mil,
    $debug_regex,
    $types_file
  );
}

1;
