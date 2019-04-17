#!/usr/bin/perl

use strict;
use warnings;

sub _tr_4u2
{
  my $n = shift;
  my @_4u2 = map { ($n >> $_) & 3 } (6,4,2,0);
  my $r = join ',', @_4u2;
  return "$r";
}

sub _tr_8u1
{
  my $n = shift;
  my @_8u1 = map { ($n >> $_) & 1 } (7,6,5,4,3,2,1,0);
  my $r = join ',', @_8u1;
  return "$r";
}

1;
