#!/usr/bin/perl

use strict;
use warnings;

use constants qw(RX_TYPES RX_NAMES RX_DIGIT RX_RESER RX_PV RX_FLAGS RX_TEST_FLAGS);

our ($RX_TYPES, $RX_NAMES, $RX_DIGIT, $RX_RESER, $RX_PV, $RX_FLAGS, $RX_TEST_FLAGS) = (RX_TYPES, RX_NAMES, RX_DIGIT, RX_RESER, RX_PV, RX_FLAGS, RX_TEST_FLAGS);

# Parse translate information
sub get_map_info{
	my $f     = shift; 		 									# File name

	my (@m, @ttr) = ((),()); 									# m: map entries; ttr: possible translations;
	my ($tinst, $tin, $tps, $tv) = ( "", "", "", 0 );  # tinst: instruction; tin: inputs; tps: push stack; tv: content in vars;

	open F, $f or die "Couldn't open the file: $f\n";	# Open the mapping file

	while(my $l = <F>) 					# For each line in mapping file...
	{
		if($l =~ m/^inst: (.+)/)		# If the line is the starting of a new entry...
		{
			if($tv)							# If there is something in temporary variables...
			{ 
				my $r = {inst => $tinst, in => $tin, ps => $tps, trans => [ @ttr ], rexp => ''};
				push @m, $r;				# Add the new entry to array
				($tps,@ttr) = ("",());
			}
			($tinst, $tv) = ($1, 1); 
		}
		elsif($l =~ m/^in: (.+)/) 		# If the line matches with the input...
		{
			$tin = $1;
		}
		elsif($l =~ m/^ps: (.+)/) 		# If the line matches with the push stack...
		{
			$tps = $1;
		}
		elsif($l =~ m/^tr: (.+)/) 		# If the line matches with the possible translations...
		{
			push @ttr, $1;
		}
	}

	if($tv)									# Last entry 
	{
		my $r = {inst => $tinst, in => $tin, ps => $tps, trans => [ @ttr ], rexp => ''};
		push @m, $r;
	}
	close F;				# Close the mapping file

	get_regex(\@m);	# For all entries, and based on input's and instruction definition, build a regex for that instruction
	return @m;  		# Return
}


# Build the regex's for all entries
sub get_regex{
	my $m_ref = shift;			 # This argument contains the array with maps

	my $inst = "";					 # Auxiliar variable. It will contain the $r->{inst}
	for my $r (@$m_ref)	 	 	 # For each one of the entries in mapping array...
	{
		$inst = $r->{inst};		 									# Create a copy of the instruction
		$inst =~ s/ //g;												# Delete empty spaces from the instrucion
		$inst =~ s/$RX_RESER/\\$1/g;								# Escape regex reserved chars 
		$inst = '^'.$inst.'[ ]*$';									# Force the instruction to be at the beginning (^) and allow spaces at the end ([ ]*$)

		for my $in (split(',',$r->{in}))							# For each one of the inputs...
		{
			if($in =~ m/^[ ]?ii $RX_PV/)							# If the input has the type of "immediate int"...
			{
				$inst =~ s/\$$1/$RX_DIGIT/g;						# Replace it's ocurrence in the instruction with a regex that matches with integers (decimal or hex)
			}
			elsif($in =~ m/^[ ]?$RX_TYPES $RX_PV/)				# If the input has one of the above types... WARN: RW
			{
				$inst =~ s/\$$2/$RX_NAMES/g;  					# Replace it's ocurrence in the instruction with a regex that matches with names
			}
			elsif($in =~ m/^[ ]?flg t/)							# If the input is a flag...
			{
				$inst =~ s/\$t/$RX_FLAGS/g;
			}
			elsif($in =~ m/^[ ]?tflg c/)							# If the input is a test flag...
			{
				$inst =~ s/\$c/$RX_TEST_FLAGS/g;
			}
		}
		$r->{rexp} = $inst;											# Set the created regex
	}
}


# Prints translate information
sub print_map_info{
	my $m_ref = shift;   # Array with translation info

	print "Number of entries: ",$#$m_ref,"\n";
	for (@$m_ref) { print "\ninst: ",$_->{inst}, "\nin: ",$_->{in}, "\ntr: ", (join "\ntr: ", @{$_->{trans}}),
							    "\nps: ",$_->{ps}, "\nrexp: ", $_->{rexp}, "\n";}
}


# Parse the types file
sub get_types_info{
	my $f = shift;	  # This argument contains the name of file

	my %types = ();  													 # Hash to return. The keys are the acronyms.
	open F, $f or die "Couldn't open the file: $f : $!\n"; # Open the mapping file	
	while(<F>)															 # For each line in types file...
	{
		$types{$1} = $2 if $_ =~ m/(.+);(.+)/;
	}
	close F;			  													 # Close the types file

	return %types;	  													 # Return
}


# Prints help information
sub print_help()
{
  my @help_menu = ('Options:',
						'-help',
						'-print-doc :: Parse and prints the documentation present in map file in config folder.',
						'-print-parsed :: Prints what has been parsed in qhasm file.',
						'-print-parsed-exit :: Specifies if the program quits after -print-parsed.',
						'-temp-file :: Specifies another name for temporary file. Default is temporary.q.',
						'-in filename :: Specifies input qhasm file.',
						'-out filename :: Specifies output C file.',
						'-variables "array:uip;result:ui" :: Specifies the types global variables. Consult types file in config folder.'
					  );
  print "\n",(join "\n\n\t", @help_menu),"\n\n";
  exit;
}

1;
