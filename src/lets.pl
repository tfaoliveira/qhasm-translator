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

1;
