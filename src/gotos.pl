#!/usr/bin/perl

use strict;
use warnings;

use List::Util qw(reduce);
use constants qw(RX_NAME RX_VD CONDITIONS);

our $CONDITIONS 	 = CONDITIONS;
our %NEG_CONDITION = ( (split ' ', $CONDITIONS), (reverse split ' ', $CONDITIONS) );
our $RX_CONDITIONS = "(".(join '|', (split ' ', $CONDITIONS)).")";
our $RX_VD  		 = RX_VD;
our $RX_NAME  		 = RX_NAME;

sub print_tree
{
	my ($tree_ref, $stack_ref, $level) = @_;
	for (@$tree_ref)
	{
		print "\n", (("  ")x$level), "type: ", $_->{type}, " b/e: ", $_->{begin}, " ", $_->{end}, 
				" arg1: ",$stack_ref->[$_->{begin}]->{arg1},"\n";
		if($level < 30)
		{
			print_tree($_->{childs_left}, $stack_ref, $level+1);
			print_tree($_->{childs_right}, $stack_ref, $level+1);
		}
	}
}

sub search_flow_control
{
	my ($stack_ref, $trans_ref) = @_;

	my ($up, $down, @tree) = ( $#$stack_ref, 0, () );
	my $label_index_ref = build_label_index($stack_ref);
	my $goto_index_ref  = build_goto_index($stack_ref);

	search_structures($#$stack_ref, $up, $down, $stack_ref, \@tree, $label_index_ref, $goto_index_ref, 0, "");

	# search structure changes the goto_index_ref
	$goto_index_ref  = build_goto_index($stack_ref);

	update_structures(\@tree, $stack_ref, $trans_ref, $label_index_ref, $goto_index_ref);

	#DEBUG: print_tree(\@tree, $stack_ref, 0);
}

sub search_structures
{
	my ($lim_sup, $up, $down, $stack_ref, $tree_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop) = @_;

	my ($up_cpy, $down_cpy, $found) = ($up, $down, 0);
	for ($down = $down_cpy; $down < $up_cpy; $down++)
	{
		for ($up = $up_cpy; $up > $down; $up--)
		{
			$found = search_do_while($lim_sup, $up, $down, $stack_ref, $tree_ref, $label_index_ref, 
											 $goto_index_ref, $inside_loop, $label_loop);

			if(!$found){ 
				$found = search_while($lim_sup, $up, $down, $stack_ref, $tree_ref, $label_index_ref, 
											 $goto_index_ref, $inside_loop, $label_loop);
			}else{ 
				last;
			}

			if(!$found){ 
				$found = search_if($lim_sup, $up, $down, $stack_ref, $tree_ref, $label_index_ref, 
										 $goto_index_ref, $inside_loop, $label_loop);
				}else{
					last;
				}

			if(!$found){ 
				$found = search_if_else($lim_sup, $up, $down, $stack_ref, $tree_ref, $label_index_ref, 
												$goto_index_ref, $inside_loop, $label_loop);
			}else{
				last;
			}

		}
		last if $found;
	}
}

sub update_structures
{
	my ($tree_ref, $stack_ref, $trans_ref, $l_i_ref, $g_i_ref) = @_;

	for (@$tree_ref)
	{
		if($_->{type} eq "dowhile")
		{
			update_do_while($_, $stack_ref, $trans_ref, $g_i_ref);
		}
		elsif($_->{type} eq "while")
		{
			update_while($_, $stack_ref, $trans_ref, $g_i_ref);
		}
		elsif($_->{type} eq "if")
		{
			update_if($_, $stack_ref, $trans_ref);
		}
		elsif($_->{type} eq "ifelse")
		{
			update_if_else($_, $stack_ref, $trans_ref);
		}
		update_structures($_->{childs_left}, $stack_ref, $trans_ref, $l_i_ref, $g_i_ref);
		update_structures($_->{childs_right}, $stack_ref, $trans_ref, $l_i_ref, $g_i_ref);
	}
}

sub negate_condition
{
	my $c = shift;
	
	if( $c =~ m/^$RX_VD[ ]*$RX_CONDITIONS[ ]*$RX_VD$/)
	{
		return $1." ".$NEG_CONDITION{$2}." ".$3;
	}
	else
	{
		return "!(".$c.")";
	}
}

sub break_it_all
{
	my ($label, $top, $bottom, $stack_ref, $trans_ref, $g_i_ref) = @_;

	if(defined $g_i_ref->{$label})
	{	
		my @gotos = @{$g_i_ref->{$label}};
		for (@gotos)
		{
			if( $_ <= $top && $_ >= $bottom )
			{
				if($stack_ref->[$_]->{type} eq "goto") # WARN:
				{
					$trans_ref->[$stack_ref->[$_]->{line}]->[0] = "break;";
				}
				elsif($stack_ref->[$_]->{type} eq "gotoif")
				{
					my $trans = $trans_ref->[$stack_ref->[$_]->{line}]->[0];
					if($trans =~ m/if\((.+)\){/){$trans_ref->[$stack_ref->[$_]->{line}]->[0] = "if($1){break;}"}
				}
			}
		}
	}
	else
	{
		print "#ERROR (break_it_all): label not defined: (",(join '|',(keys %$g_i_ref)),")\n";
	}
}

sub update_do_while
{
	my ($info, $stack_ref, $trans_ref, $g_i_ref) = @_;

	my $trans = $trans_ref->[$stack_ref->[$info->{end}+2]->{line}]->[0]; 

	if( $trans =~ m/if\((.+)\){/)
	{
		my $c = negate_condition($1);

		# L1 && TEST
		$trans_ref->[$stack_ref->[$info->{begin}]->{line}]->[0] = "do{";
		$trans_ref->[$stack_ref->[$info->{end}+3]->{line}]->[0] = "";

		# GOTO IF
		$trans_ref->[$stack_ref->[$info->{end}+2]->{line}]->[0] = "}while($c);";

		# GOTO
		$trans_ref->[$stack_ref->[$info->{end}+1]->{line}]->[0] = "";

		break_it_all($stack_ref->[$info->{end}]->{arg1}, $info->{begin} - 1, 
						 $info->{end} + 4, $stack_ref, $trans_ref, $g_i_ref);
		# L2
		$trans_ref->[$stack_ref->[$info->{end}]->{line}]->[0] = "";
	}
}

sub update_while
{
	my ($info, $stack_ref, $trans_ref, $g_i_ref) = @_;

	my $trans = $trans_ref->[$stack_ref->[$info->{begin}-2]->{line}]->[0]; 
	if( $trans =~ m/if\((.+)\){/)
	{
		my $c = negate_condition($1);

		# L1 && TEST
		$trans_ref->[$stack_ref->[$info->{begin}]->{line}]->[0] = "";
		$trans_ref->[$stack_ref->[$info->{begin}-1]->{line}]->[0] = "";

		# GOTO IF
		$trans_ref->[$stack_ref->[$info->{begin}-2]->{line}]->[0] = "while($c){";

		 # GOTO
		$trans_ref->[$stack_ref->[$info->{end}+1]->{line}]->[0] = "";
		
		break_it_all($stack_ref->[$info->{end}]->{arg1}, $info->{begin} - 3, 
						 $info->{end} + 2, $stack_ref, $trans_ref, $g_i_ref);

		#L2
		$trans_ref->[$stack_ref->[$info->{end}]->{line}]->[0] = "}";
	}
}


sub update_if
{
	my ($info, $stack_ref, $trans_ref) = @_;
	
	my $trans = $trans_ref->[$stack_ref->[$info->{begin}-1]->{line}]->[0]; 
	if( $trans =~ m/if\((.+)\){/)
	{
		my $c = negate_condition($1);
		# GOTO IF
		$trans_ref->[$stack_ref->[$info->{begin}]->{line}]->[0] = "";
		$trans_ref->[$stack_ref->[$info->{begin}-1]->{line}]->[0] = "if($c){";

		# L1
		my $label1 = $trans_ref->[$stack_ref->[$info->{end}]->{line}]->[0];
		$label1 = "" if $label1 =~ m/^($RX_NAME):$/;
		
		$trans_ref->[$stack_ref->[$info->{end}]->{line}]->[0] = 
			"}\n\t".$label1;
	}
}

sub update_if_else
{
	my ($info, $stack_ref, $trans_ref) = @_;
	
	my $trans = $trans_ref->[$stack_ref->[$info->{begin}-1]->{line}]->[0]; 
	if( $trans =~ m/if\((.+)\){/)
	{
		my $c = negate_condition($1);
		# BEGIN
		$trans_ref->[$stack_ref->[$info->{begin}]->{line}]->[0] = "";
		$trans_ref->[$stack_ref->[$info->{begin}-1]->{line}]->[0] = "if($c){";

		# MIDDLE
		$trans_ref->[$stack_ref->[$info->{middle}+1]->{line}]->[0] = "}else{";

		$trans_ref->[$stack_ref->[$info->{middle}]->{line}]->[0] = "";
 
		# END
		my $label1 = $trans_ref->[$stack_ref->[$info->{end}]->{line}]->[0];
		$label1 = "" if $label1 =~ m/^($RX_NAME):$/;

		$trans_ref->[$stack_ref->[$info->{end}]->{line}]->[0] = 
			"}\n\t".$label1;
	}
}


sub search_do_while
{
	my ($lim_sup, $up, $down, $stack_ref, $tree_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop) = @_;

	if( ($up - $down) >= 4								  								&&
		  $stack_ref->[$up]->{type}     eq "label"  								&&
		  $stack_ref->[$down]->{type}   eq "label"  								&&
		  $stack_ref->[$down+1]->{type} eq "goto"   								&&
		  $stack_ref->[$down+2]->{type} eq "gotoif" 								&&
		  $stack_ref->[$down+3]->{type} eq "test"   								&&
		  $stack_ref->[$down]->{arg1}   eq $stack_ref->[$down+2]->{arg1} 	&&
		  $stack_ref->[$up]->{arg1}     eq $stack_ref->[$down+1]->{arg1}  &&  
		  ($stack_ref->[$down+2]->{line} - $stack_ref->[$up]->{line})     >= 3)
	{
		return 0 if ! check_validity($up-1, $down+4, $stack_ref, $label_index_ref, $goto_index_ref, 1, $stack_ref->[$down]->{arg1}, 0, "");

		my (@childs_left, @childs_right) = ((),());
		my $r = {type => "dowhile", begin => $up, end => $down, childs_left => \@childs_left, childs_rigth => \@childs_right};
		push @$tree_ref, $r;

		search_structures($lim_sup, $lim_sup, $up+1, $stack_ref, $tree_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop); # up
		search_structures($up-1, $up-1, $down+4, $stack_ref, \@childs_left, $label_index_ref, $goto_index_ref, 1, $stack_ref->[$down]->{arg1});  # inside

		return 1;
	}

	return 0;
}


sub search_while
{
	my ($lim_sup, $up, $down, $stack_ref, $tree_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop) = @_;

	if( ($up - $down) >= 4								  									&&
		  $stack_ref->[$up]->{type}       eq "label"  								&&
		  $stack_ref->[$up-1]->{type}     eq "test"  								&&
		  $stack_ref->[$up-2]->{type}     eq "gotoif" 								&&
		  $stack_ref->[$down]->{type}     eq "label"  								&&
		  $stack_ref->[$down+1]->{type}   eq "goto"   								&&
		  $stack_ref->[$down]->{arg1}     eq $stack_ref->[$up-2]->{arg1} 		&&
		  $stack_ref->[$down+1]->{arg1}   eq $stack_ref->[$up]->{arg1}   	 	&&  
		  ($stack_ref->[$down+1]->{line} - $stack_ref->[$up]->{line})     >= 4)
	{
		return 0 if ! check_validity($up-3, $down+2, $stack_ref, $label_index_ref, $goto_index_ref, 1, $stack_ref->[$down]->{arg1}, 0, "");

		my (@childs_left, @childs_right) = ((),());
		my $r = {type => "while", begin => $up, end => $down, childs_left => \@childs_left, childs_rigth => \@childs_right};
		push @$tree_ref, $r;

		search_structures($lim_sup, $lim_sup, $up+1, $stack_ref, $tree_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop); # up
		search_structures($up-3, $up-3, $down+2, $stack_ref, \@childs_left, $label_index_ref, $goto_index_ref, 1, $stack_ref->[$down]->{arg1}); # inside

		return 1;
	}

	return 0;
}

sub search_if
{
	my ($lim_sup, $up, $down, $stack_ref, $tree_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop) = @_;

	if( ($up - $down) >= 2								  								&&
		  $stack_ref->[$up]->{type}     eq "test"  								&&
		  $stack_ref->[$up-1]->{type}   eq "gotoif" 								&&
		  $stack_ref->[$down]->{type}   eq "label"  								&&
		  $stack_ref->[$down]->{arg1}   eq $stack_ref->[$up-1]->{arg1}   	 )
	{
		return 0 if ! check_validity($up-2, $down+1, $stack_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop, 1, $stack_ref->[$down]->{arg1});

		my (@childs_left, @childs_right) = ((),());
		my $r = {type => "if", begin => $up, end => $down, childs_left => \@childs_left, childs_rigth => \@childs_right};
		push @$tree_ref, $r;

		search_structures($lim_sup, $lim_sup, $up+1, $stack_ref, $tree_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop); #up

		my $of = (reduce {$a + $b} 0, map {$_ <= ($up-2) && $_ >= ($down+1) ? 1 : 0} @{ $goto_index_ref->{$stack_ref->[$down]->{arg1}} }) > 0 ? 0 : 1;		
		search_structures($up-2, $up-2, $down+$of, $stack_ref, \@childs_left, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop); #inside

		return 1;
	}

	return 0;
}

sub search_if_else
{
	my ($lim_sup, $up, $down, $stack_ref, $tree_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop) = @_;

	if( ($up - $down) >= 4								  								&&
		  $stack_ref->[$up]->{type}     eq "test"  								&&
		  $stack_ref->[$up-1]->{type}   eq "gotoif" 								&&
		  $stack_ref->[$down]->{type}   eq "label"  								 )
	{
		my $p = 0;
		for ($p = $down; $p < ($up - 2); $p++)
		{
			if( $stack_ref->[$p]->{type}   eq "label"  							&&
				 $stack_ref->[$p+1]->{type} eq "goto" 								&&
				 $stack_ref->[$p]->{arg1}   eq $stack_ref->[$up-1]->{arg1} 	&&
				 $stack_ref->[$p+1]->{arg1} eq $stack_ref->[$down]->{arg1} 	 )
			{
				return 0 if ! check_validity($up-2, $p+2, $stack_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop, 0, "");
				return 0 if ! check_validity($p-1, $down+1, $stack_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop, 1, $stack_ref->[$down]->{arg1});
			
				my (@childs_left, @childs_right) = ((),());

				my $r = {type => "ifelse", begin => $up, middle => $p, end => $down, childs_left => \@childs_left, childs_rigth => \@childs_right};
				push @$tree_ref, $r;

				search_structures($lim_sup, $lim_sup, $up+1, $stack_ref, $tree_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop); #up
				search_structures($up-2, $up-2, $p+2, $stack_ref, \@childs_left, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop); #inside then
				my $of = (reduce {$a + $b} 0, map {$_ <= ($up-2) && $_ >= ($down+1) ? 1 : 0} @{ $goto_index_ref->{$stack_ref->[$down]->{arg1}} }) > 0 ? 0 : 1;
				search_structures($p-1, $p-1, $down+$of, $stack_ref, \@childs_right, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop); #inside else

				return 1;
			}
		}
	}
	return 0;
}

#p1: labels inside the structure: they can not be referenced from outside the structure
#p2: gotos inside the structure:  they can not reference a label from the outside (except the final label of a loop)
sub check_validity{
	my ($up, $down, $stack_ref, $label_index_ref, $goto_index_ref, $inside_loop, $label_loop, $inside_if, $label_if) = @_;

	my $down_cpy = $down;
	while ($down <= $up)
	{
		my $type  = $stack_ref->[$down]->{type}; # type
		my $arg1  = $stack_ref->[$down]->{arg1}; # label

		if ($type eq "label")
		{
			# return 0 if p1 not respected
			return 0 if (defined $goto_index_ref->{$arg1} && ! reduce {$a && $b} 1, map {$_ <= $up && $_ >= $down_cpy ? 1 : 0} @{ $goto_index_ref->{$arg1} } );
		}
		elsif($type =~ m/goto/) # goto || gotoif
		{
			# if !p2
			return 0 if (!(($arg1 eq $label_loop) || ($arg1 eq $label_if) || ($label_index_ref->{$arg1} <= $up && $label_index_ref->{$arg1} >= $down_cpy)) );
		}
		$down++;
	}
	return 1;
}

# it returns a hash that contains the position foreach one of the labels
sub build_label_index
{
	my $stack_ref = shift;
	my %label_index = ();
	
	my $index = 0;
	for (@$stack_ref)
	{
		$label_index{$_->{arg1}} = $index if $_->{type} eq "label";
		$index++;
	}

	return \%label_index;
}

# it returns a hash that contains the list of positions 
# of the instructions that are referencing one label
sub build_goto_index
{
	my $stack_ref = shift;
	my %goto_index = ();
	
	my $index = 0;
	for (@$stack_ref)
	{
		push @{$goto_index{$_->{arg1}}}, $index if $_->{type} =~ m/^goto/; # goto || gotoif
		$index++;
	}

	return \%goto_index;
}

1;



