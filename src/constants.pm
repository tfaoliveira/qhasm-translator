#!/usr/bin/perl

# Constants. WARN: RW

package constants;

use strict;
use warnings;
use base 'Exporter';

######################################################################## DOC
use constant RX_TYPES => '(it|iv|int3232|int32|int64|stack32|stack64|stack128)';
use constant RX_NAMES => '([a-zA-Z_][a-zA-Z0-9_]*)';
use constant RX_DIGIT => '([0-9]+|0x[abcdef0-9]*)';
use constant RX_SPACE => '[ \t]?';
use constant RX_RESER => '(\?|\(|\)|\{|\}|\*|\+|\^|\|)';
use constant RX_PV    => '(r|n|f|s|t|y|x)'; 
use constant RX_FLAGS => '(unsigned>|unsigned<|!unsigned>|!unsigned<|=|!=)';
use constant RX_TEST_FLAGS => '(unsigned>|unsigned<|=)';

######################################################################## PARSE
use constant RX_REG 		=> "(eax|ebx|ecx|esi|edi|ebp)";
use constant RX_ASSIGN 	=> "(1|2|3|4|5|6|7)";
use constant RX_NAME		=> "[a-zA-Z_][a-zA-Z0-9_]*";
use constant RX_ARG  	  => "(stack32|stack64)";
use constant RX_VART	 	=> "(stack32|stack64|stack128|int3232|int32|int64)";

use constant CL_FINAL   => "^[ \t]*(".
								 "((caller|int32) ".RX_REG.")|".
								 "stack32 ".RX_REG."\_stack"."|".
                 "((caller|int64) caller".RX_ASSIGN.")|".
								 "stack64 caller".RX_ASSIGN."\_stack"."|".
								 "eax_stack = eax|ebx_stack = ebx|ecx_stack = ecx|esi_stack = esi|edi_stack = edi|ebp_stack = ebp"."|".
								 "eax = eax_stack|ebx = ebx_stack|ecx = ecx_stack|esi = esi_stack|edi = edi_stack|ebp = ebp_stack"."|".
                 "c".RX_ASSIGN."_stack".RX_SPACE."=".RX_SPACE."c".RX_ASSIGN."|".
                 "c".RX_ASSIGN.RX_SPACE."=".RX_SPACE."c".RX_ASSIGN."_stack"."|".
								 "assign ".RX_ASSIGN." to ".RX_NAME."|".
								 "emms"."|)\$"; # |): blank line

######################################################################## GOTOS
use constant RX_VD => '([a-zA-Z_][a-zA-Z0-9_]*|[0-9]+|0x[abcdef0-9]*)';
use constant CONDITIONS => '== != > <= < >=';


our @EXPORT_OK = qw(RX_TYPES RX_NAMES RX_DIGIT RX_RESER RX_PV RX_FLAGS RX_TEST_FLAGS RX_REG RX_ASSIGN RX_NAME RX_ARG RX_VART CL_FINAL RX_VD CONDITIONS RX_SPACE);

1;