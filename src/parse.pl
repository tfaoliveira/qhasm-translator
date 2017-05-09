#!/usr/bin/perl

use strict;
use warnings;
use constants qw(RX_REG RX_ASSIGN RX_NAME RX_ARG RX_VART CL_FINAL);

our ($RX_REG, $RX_ASSIGN, $RX_NAME, $RX_ARG, $RX_VART, $CL_FINAL) =
    (RX_REG, RX_ASSIGN, RX_NAME, RX_ARG, RX_VART, CL_FINAL);

sub parse_file
{
  #Load the file into file array
  open IN, "<".$_[0] or die $!; 
  my @file = <IN>;
  close IN;              
  chomp @file;

  @file = grep {!/$CL_FINAL/} @file; # delete useless instructions
  map { s/^[ \t]*// } @file; # delete spaces and tabs
  my @variables = grep {/^$RX_VART $RX_NAME/} @file; # get variable declarations
  my @arguments = grep {/^input $RX_NAME/} @file; # get arguments

  @file = grep {! /^(($RX_VART $RX_NAME)|(input $RX_NAME))/} @file;   # delete variable declarations and arguments from file
  
  my ($variables_hash_ref, $arguments_hash_ref) = get_variables(\@variables, \@arguments);
  map { $_ =~ s/input // } @arguments;
  my $functions_ref = get_functions(\@file);

  my $r = { arguments        => { %$arguments_hash_ref },
            sorted_arguments => [ @arguments    ],
            declarations     => { %$variables_hash_ref },
            functions        => [ @$functions_ref      ]
          };

  return $r;
}

sub get_functions
{
  my $file_r = shift;

  my ($in_func, $temp_name, $temp_constants, $temp_align, @temp_inst, @func_list, @comments) = (0, "", "", "", (), (), ());

  for my $line (@$file_r)
  {
    push @comments, $line if(!$in_func && $line =~ m/^#/);

    if($line =~ m/^enter ($RX_NAME)/)
    { 
        $in_func   = 1;
        $temp_name = $1;
        @temp_inst = ();
    }
    elsif($line =~ m/^leave$/)
    {
      $in_func = 0;
      chomp @temp_inst;
      my $r = { name  => $temp_name, inst => [ @temp_inst ], comments => [ @comments ]};
      unshift @func_list, $r;
      @comments = ();
    }
    elsif($line =~ m/^(.)+$/ && $in_func == 1)
    { 
      push(@temp_inst,$line);
    }
  }
  
  return \@func_list;
}

sub get_variables
{
  my ($v_r, $a_r) = @_;
  
  my %variables = map {reverse split ' ', $_ } @$v_r;
  my %arguments = map {reverse split ' ', $_ } @$a_r;

  for (keys %arguments)
  {
    $arguments{$_} = $variables{$_};
    delete $variables{$_};
  }
  return (\%variables, \%arguments);
}

1;
