#!/usr/bin/perl

use strict;
use warnings;

require 'doc.pl';   # get_types_info
require 'gotos.pl'; # search_flow_control

# Constants
my $RX_NAMES  = '([a-zA-Z_][a-zA-Z0-9_]*)';

my %FLAGS_NEG = ('='          => '!=',
                 '!='         => '==',
                 'unsigned>'  => '<=',
                 'unsigned<'  => '>=',
                 '!unsigned>' =>  '>',
                 '!unsigned<' =>  '<',
                 'signed>'    => '<=',
                 'signed<'    => '>=',
                 '!signed>'   =>  '>',
                 '!signed<'   => '<'
                );

my %FLAGS     = ('='          => '==',
                 '!='         => '!=',
                 'unsigned>'  =>  '>',
                 'unsigned<'  =>  '<',
                 '!unsigned>' => '<=',
                 '!unsigned<' => '>=',
                 'signed>'    =>  '>',
                 'signed<'    =>  '<',
                 '!signed>'   => '<=',
                 '!signed<'   => '>='
                );


sub translate_function
{
  my ($map_ref, $func, $args_ref, $args_sorted_ref, $decs_ref, $ext_mtypes_ref, $in_mtypes_ref, $outfile, $mli) = @_;

  my %alltypes                    = (%$args_ref, %$decs_ref);  # Merge the two hashes and build a hash that contains all types
  my %variabletypes              = (%$ext_mtypes_ref, %$in_mtypes_ref);
  my (@stack, @translations)        = ( (), (), () );
  my (%usedvarstypes, %usedvarsindex)  = ( (), () );
  my @comments = ();
  my $linenumber                 = 0;

  for my $line (@{$func->{inst}})
  {
    if($line =~ m/^#(.+)/)
    {
      my $comment = $1;
      if($comment =~ m/^@(.+)/){
        push @comments, $1;  #acsl comment
      }else{
        my @alltrans = ("//".$comment);  #normal comment
        push @translations, \@alltrans;
      }
    }
    else{
      if($#comments > -1)
      {
        $comments[0] = "/*@\n@".$comments[0];
        $comments[$#comments] .= "\n\t  @*/";

        my @alltrans = ($comments[0]);
        push @translations, \@alltrans;

        for (my $i = 1; $i <= $#comments; $i++)
        {
          my @alltrans = ("\t  @".$comments[$i]);
          push @translations, \@alltrans;
        }
        @comments = ();
      }
      my ($found, $index, $usedvars_ref, $alltrans_ref) = find_mapping($map_ref, \%alltypes, $line, $linenumber, \@stack);

      if ($found)
      {
        push @translations, $alltrans_ref;
        actualize_used_vars_types($index, $linenumber, \@translations, $usedvars_ref, \%usedvarsindex, \%usedvarstypes);
      }
      else
      {
        my @alltrans = ("// UNMATCHED: $line\n");
        push @translations, \@alltrans;
        #TODO not supported instructions
      }
    }
    $linenumber++;
  }

  assign_types(\@translations, \%usedvarsindex, \%usedvarstypes, \%variabletypes);

  #DEBUG: 
  #  my $ii = $#stack;
  #  for (reverse @stack){print "\t$ii ", $_->{type}." ".$_->{arg1}."\t\t ".$_->{line}, "\n"; $ii--;}

  search_flow_control(\@stack,\@translations);
  print_function($func, $args_sorted_ref, \%variabletypes, $ext_mtypes_ref, \@translations, $outfile, $mli);
}


sub print_function
{
  my ($f, $args_r, $vt_r, $mt_r, $tr_r, $of, $mli) = @_;
  my %ty = get_types_info($INC[$#INC] . "../config/types");
  open OUT, ">>".$of or die "Couldn't open the file: $of\n $! \n";

  #comments
  my @comment_stack = ();
  for my $c (@{$f->{comments}})
  {
    if($c =~ m/^#@(.+)/){
      push @comment_stack, $1;
    }
    elsif ($c =~ m/^#(.+)/)
    {
      if($#comment_stack > -1){print OUT "/*@\n   @".(join "\n   @ ", @comment_stack)."\n   @*/\n";}
      @comment_stack = ();
      print OUT "//$1\n";
    }
  }
  if($#comment_stack > -1){print OUT "/*@\n   @".(join "\n   @ ", @comment_stack)."\n   @*/\n";}

  # include clause if not mli
  print OUT "#include \"qhasm-translator.h\"\n\n" if(!$mli);

  # global params
  if($mli)
  { print OUT join(' ', (map { my ($p,$n) = split '---', $ty{$mt_r->{$_}}; "/*CHECKME*/\n$p $_ : $n = 0;" } (keys %$mt_r)))."\n\n";
  }else
  { print OUT join(' ', (map { "/*CHECKME*/\nextern $ty{$mt_r->{$_}} $_;" } (keys %$mt_r)))."\n\n";
  }

  # f. signature
  if($mli)
  { print OUT "fn ",$f->{name},"(";  
    my @args_str = ();
    foreach my $arg (@$args_r)
    { my @grp = sort ( grep { ! /^$/ } (map { $_->[0] =~ m/$arg\[(\d+)\]/ ? $1 : "" } @$tr_r) );
      my ($p, $n) = split '---', $ty{$vt_r->{$arg}};
      push @args_str, "$arg : $p $n"."[".($grp[$#grp]+1)."]" if(@grp);
      push @args_str, "$arg : $p $n" if(!@grp);
    }
    print OUT join(', ',@args_str)."){\n";
  }
  else
  { print OUT "void ",$f->{name},"(", (join ', ', map { defined $vt_r->{$_} ? $ty{$vt_r->{$_}}." ".$_ : "void* ".$_ } (@$args_r)), "){\n"; 
  }
  
  # delete unnecessary keys
  for (@$args_r){delete $vt_r->{$_};}
  for (keys %$mt_r){delete $vt_r->{$_};}
 
  # var. declarations
  # check if carry flag is used (only if mli)
  print OUT "  reg bool cf;\n" if ($mli and (grep {defined $_->[0] and $_->[0] =~ m/cf\?/} @$tr_r));
  print OUT "  uint64_t carry;\n" if (!$mli and (grep {defined $_->[0] and $_->[0] =~ m/carry/} @$tr_r));

  if($mli)
  { print OUT "\n",(join "\n", map { my ($p,$n) = split '---', $ty{$vt_r->{$_}}; "\t $p $n $_;"} (sort keys %$vt_r)), "\n"; }
  else
  { print OUT "\n",(join "\n", map {"\t $ty{$vt_r->{$_}} $_;"} (sort keys %$vt_r)), "\n"; }

  # instructions 
  for my $tr (@$tr_r)
  {
    if(defined $tr->[0])
    {
      my @spl = (split '---', $tr->[0]);
      print OUT "\n\t".$spl[0] if $#spl > -1;
    }
    else
    {
      print OUT "\n// NOT DEFINED\n";      
    }
  }

  print OUT "\n\treturn;\n}\n\n\n";
  close OUT;
}


sub assign_types # many variables have several possible types: this sub fix the type foreach var
{
  my ($translations_ref, $usedvarsindex_ref, $usedvarstypes_ref, $variabletypes_ref) = @_;

  my $completed = 0;
  my @fixedvarstypes = ();
  
  # Check wich variables passed by argument (-variables flag) are used in function 
  # (their entry is deleted if they aren't used), and copy them to auxiliar array fixedvarstypes.

  for (keys %$variabletypes_ref)           # Copy the defined variables (that appear in function) to array fixed_vars_types
  {  
    if (defined $usedvarstypes_ref->{$_})
    {
      push @fixedvarstypes, $_;
      delete $usedvarstypes_ref->{$_};      # The variable type is already determined. Delete their occurrence in the hash
    }
    else
    {
      delete $variabletypes_ref->{$_};      # The variable don't appear in function
    }
  }

  # Check wich variables only have one possible type and actualize the final hash. 
  my @names = keys %$usedvarstypes_ref;
  for my $name (@names)
  {
    my @keys = keys %{$usedvarstypes_ref->{$name}};
    if($#keys == 0)
    {
      $variabletypes_ref->{$name} = $keys[0];
      delete $usedvarstypes_ref->{$name};
    }
  }

  # While there is variables to fix...
  while(!$completed)
  {
    # Remove incompatible translations (and actualize hashes) for the already fixed variable type.
    for (@fixedvarstypes)
    {    
      actualize_translations($_, $translations_ref, $usedvarsindex_ref, $usedvarstypes_ref, $variabletypes_ref);
    }

    @fixedvarstypes = ();

    if(! keys %$usedvarstypes_ref )
    { 
      # There are no more keys so the job is done.
      $completed = 1;
    }
    else
    {
      # Select one variable, them the best type for it, put the pair name/type in the final hash... 
      # Delete the entry from the usedvarstypes hash and, finally, update de fixedvarstypes array (so the incompatible translations can be removed)
      my $name = get_variable_name_to_fix($usedvarstypes_ref, $usedvarsindex_ref);
      my $type = get_variable_type_to_fix($name, $usedvarstypes_ref, $usedvarsindex_ref, $translations_ref);

      $variabletypes_ref->{$name} = $type;
      delete $usedvarstypes_ref->{$name};
      push @fixedvarstypes, $name;
    }
  }
}


sub get_variable_name_to_fix #TODO: this sub can be improved: return the most used variable
{
  my ($uvt_r) = @_;

  my @names = keys %$uvt_r;

  return $#names > -1 ? $names[0] : "";
}


sub get_variable_type_to_fix
{
  my ($n, $uvt_r, $uvi_r, $tr_r) = @_;                                      # Arguments: name, usedvarstypes_ref

  my @t = sort {$uvt_r->{$n}{$b} <=> $uvt_r->{$n}{$a}} (keys %{$uvt_r->{$n}});            # Get the types in descendent order


  return $t[0] if ($#t == 0) || ( ($#t > 0) && ( $uvt_r->{$n}{$t[0]} > $uvt_r->{$n}{$t[1]}) ); # Return first type if it is absolutely greater

  my @m = sort {$uvi_r->{$n}{mapindex}{$b} <=> $uvi_r->{$n}{mapindex}{$a}} (keys %{$uvi_r->{$n}{mapindex}});
  my $l = shift @{ $uvi_r->{$n}{mapline}{$m[0]} };                               # Get the line
  my $ty = get_var_type($n, $tr_r->[$l]->[0]);

  return $ty;
}


sub actualize_translations
{
  my ($name, $translations_ref, $usedvarsindex_ref, $usedvarstypes_ref, $variabletypes_ref) = @_;

  for my $line ( @{ $usedvarsindex_ref->{$name}{linenumber} } )
  {
    my $is_empty  = 1;
    my @final    = ();
    my $trans_ref = $translations_ref->[$line];

    for (@$trans_ref)
    {
      if( get_var_type($name,$_) eq $variabletypes_ref->{$name} )
      {
        push @final, $_;
        $is_empty = 0;
      }
      else
      {
        decrement_used_vars_types($name, $_, $usedvarstypes_ref, $variabletypes_ref);
      }
    }

    # there are no possible translations this line... 
    if($is_empty)
    {
      if(defined $trans_ref->[0]){
        push @final, "//Check the map file: there are no possible translations for this: ".
                 $trans_ref->[0]."\n";
      }else{
        push @final, "//Not enough possible translations to meet the resolved types : var name ($name); var type: (".
                 $variabletypes_ref->{$name}."); line ($line); ".
                 "\n//  edit the map file in config folder.\n"; 
      }
      $translations_ref->[$line] = \@final;
    }
    else
    {
      $translations_ref->[$line] = \@final;
    }
  }
}

sub decrement_used_vars_types
{
  my ($name, $line, $usedvarstypes_ref, $variabletypes_ref) =  @_;

  my @pairs = (split '---', $line);
  my @types = ($#pairs > 0) ? split ';', $pairs[1] : ();

  for (@types)
  {
    my ($n,$t) = split ':', $_;
    if ($n ne $name && !(defined $variabletypes_ref->{$n}) && defined $usedvarstypes_ref->{$n}{$t})
    {
      $usedvarstypes_ref->{$n}{$t} -= 1;
      delete $usedvarstypes_ref->{$n}{$t} if $usedvarstypes_ref->{$n}{$t} <= 0;
    }
  }
}


sub get_var_type
{
  my ($name, $line) = @_;

  my @pairs = (split '---', $line);
  my @types = ($#pairs > 0) ? split ';', $pairs[1] : ();

  for (@types)
  {
    my ($n,$t) = split ':', $_;
    return $t if $name eq $n;
  }

  return "na";
}


sub actualize_used_vars_types
{
  my ($index, $linenumber, $alltrans_ref, $usedvars_ref, $usedvarsindex_ref, $usedvarstypes_ref) = @_;
  
  my %delete = ();

  for my $name (keys %$usedvars_ref)
  {
    if(defined $usedvarstypes_ref->{$name}) # already defined
    {
      build_variable_types_intersection($name, \%delete, $usedvars_ref, $usedvarstypes_ref);
    }
    else # is new
    {
      for ( keys %{$usedvars_ref->{$name}} )
      { 
        $usedvarstypes_ref->{$name}{$_} = $usedvars_ref->{$name}{$_}; 
      }
    }

    $usedvarsindex_ref->{$name}{mapindex}{$index} += 1;             # Increment the mapping index of the instruction in which the variable appears
    push @{ $usedvarsindex_ref->{$name}{mapline}{$index} }, $linenumber;   # Save the lines that are corresponding to a map entry
    push @{ $usedvarsindex_ref->{$name}{linenumber} }, $linenumber;     # Save the lines that a variable appears
  }

   delete_incompatible_types(\%delete, $alltrans_ref, $usedvars_ref, $usedvarsindex_ref, $usedvarstypes_ref);
}

sub delete_incompatible_types{
  my ($delete_ref, $alltrans_ref, $used_vars_ref, $used_vars_index_ref, $used_vars_types_ref) = @_;

  for my $name (keys %$delete_ref)
  {
    my @types = keys %{$delete_ref->{$name}};
    my @lines = @{ $used_vars_index_ref->{$name}{linenumber} };

    for my $line (@lines)
    {
      $alltrans_ref->[$line] = actualize_possible_translations($name, $used_vars_types_ref, \@types, $alltrans_ref->[$line]);
    }
  }
}

sub actualize_possible_translations{
  my ($name, $used_var_types_ref, $types_ref, $trans_ref) = @_;

  my $counter = 0;
  my @trans_ref_copy = ();

  while($counter <= $#$trans_ref)
  {
    my $type = get_var_type($name, $trans_ref->[$counter]);
    # if( ! ($type ~~ @$types_ref) ) # Smartmatch is experimental 
    if( ! ( grep $_ eq $type, @$types_ref ) )
    {
      push @trans_ref_copy, $trans_ref->[$counter];
    }
    else
    {
      delete $used_var_types_ref->{$name}{$type};
    }
    $counter++;
  }

  return \@trans_ref_copy;
}


sub build_variable_types_intersection
{
  my ($name, $delete_ref, $used_vars_ref, $used_vars_types_ref) = @_;

  my @new = keys %{$used_vars_ref->{$name}};
  my @old = keys %{$used_vars_types_ref->{$name}};

  for my $n (@new)
  {
    # $delete_ref->{$name}{$n} = 1 unless $n ~~ @old; # Smartmatch is experimental
    $delete_ref->{$name}{$n} = 1 unless (grep $_ eq $n, @old);
  }

  for my $o (@old)
  {
    # if ($_ ~~ @new){ # Smartmatch is experimental
    if (grep $_ eq $o, @new){ 
      $used_vars_types_ref->{$name}{$o} += $used_vars_ref->{$name}{$o};
    }else{
      $delete_ref->{$name}{$o} = 1;
    }
  }
}


sub find_mapping
{
  my ($map_ref, $alltypes_ref, $line, $linenumber, $stack_ref) = @_; 

  my ($found, $index, $usedvars_ref, $alltrans_ref, $alltrans_ref_final, $cline) = (0, -1, undef, undef, undef, $line);

  $cline =~ s/[ ]+/ /g; # replace several spaces by one space
  #print $cline."\n";

  for my $m (@$map_ref)
  {
    $index++;
    my $rexp = $m->{rexp};
    #print "\t\t".$rexp."\n";
    if($cline =~ m/$rexp/)
    {
        my @mat   = ($1, $2, $3, $4, $5, $6, $7, $8, $9); # Possible matched variables or constants
        my @inp   = split ',', $m->{in};   # List of inputs
        my $c     = 0; $found = 1;         # We have found the correspondent entry until we have evidence to the contrary

        my @temp      = @{$m->{trans}};    # Create a copy of possible translations
        $alltrans_ref = \@temp;
        my $ps        = $m->{ps};

        for (@inp)
        {
          my ($t,$n) = split ' ', $_;
          if ( ($t =~ m/(ii|it|flg|tflg)/) || ($t !~ m/(ii|it|flg|tflg)/ && $alltypes_ref->{$mat[$c]} eq $t) )
          {
            for (@$alltrans_ref)
            { 
              s/\$$n/$mat[$c]/g; 
            }
            $ps =~ s/\$$n/$mat[$c]/g unless $ps eq "";
          }
          else
          {
            @$alltrans_ref = ();
            $found = 0; last;
          }
          $c++;
        }
        if($found)
        {
          if($ps ne "")
          {
            my ($type, $arg1, $arg2, $arg3) = split ';',$ps;
            my $r = {type => $type, arg1 => $arg1, arg2 => $arg2, arg3 => $arg3, line => $linenumber};
            unshift @$stack_ref, $r;

            if($type eq "gotoif" or $type eq "attr") #WARN: DEPENDENT
            {
              # same flag can be used more than once
              # - search first stack entry that has $type eq to test
              my $test_index = 1;
              $test_index++ while($test_index <= $#$stack_ref && $stack_ref->[$test_index]->{type} ne "test");

              my $w   = $stack_ref->[$test_index]->{arg2};
              my $z   = $stack_ref->[$test_index]->{arg3};
              my $cnd = $FLAGS{$arg2};
              $alltrans_ref->[0] =~ s/\$w/$w/g;
              $alltrans_ref->[0] =~ s/\$z/$z/g;
              $alltrans_ref->[0] =~ s/\$cnd/$cnd/g;
            }
          }
          ($usedvars_ref, $alltrans_ref_final) = process_translations($alltrans_ref);
          last;
        }
    }
  }

  return ($found, $index, $usedvars_ref, $alltrans_ref_final);
}


sub process_translations
{
  my $alltrans_ref = shift;
  my $alltrans_copy = calculate_lets($alltrans_ref);
  my $usedvars_ref  = get_used_vars($alltrans_ref);
  return ($usedvars_ref,$alltrans_copy);
}


sub calculate_lets
{
  my $alltrans_ref  = shift;

  my @alltrans_copy = ();

  for (@$alltrans_ref)
  {
    my ($i, $allok) = (0,1);
    my @tran = split '---', $_;
    for ($i = 2; $i <= $#tran; $i++)
    {
      my ($isok, $name, $value) = calculate_let($tran[$i]);
      $_ =~ s/\$$name/$value/;
      $allok &= $isok;
    }    
    push @alltrans_copy, drop_let($_) if $allok;
  }

  return \@alltrans_copy;
}


sub calculate_let
{
  my $let = shift;

  my %siz = ('sizeof\(char\)' => 1, 'sizeof\(short\)' => 2, 'sizeof\(int\)' => 4, 'sizeof\(uint64\)' => 8);
  my ($isok, $name, $value) = (0, "", "");
  if($let =~ m/^let \$$RX_NAMES=(.+)/)
  {
    my ($m1, $m2) = ($1, $2);
    for (keys %siz) {$m2 =~ s/$_/$siz{$_}/g;}
    if($m2 =~ m/\//)
    {
      (my $m2_c = $m2) =~ s/\//%/;
      return ($isok, $name, $value) if eval ($m2_c) != 0;
    }
    ($isok, $name, $value) = (1, $m1, eval $m2);
  }

  return ($isok, $name, $value);
}


sub get_used_vars
{
  my $alltrans_ref = shift;

  my %usedvars     = ();

  for (@$alltrans_ref)
  {
    my @tran = split '---', $_;
    if($#tran > 0)
    {
      for (split ';', $tran[1])
      {
        my ($name, $type) = split ':', $_;
        $usedvars{$name}{$type} += 1;
      }
    }
  }

  return \%usedvars;
}


sub drop_let
{
  my @cont = split '---', $_[0];

  return $cont[0].'---'.$cont[1] if $#cont >= 1;

  return $_[0];
}


1;
