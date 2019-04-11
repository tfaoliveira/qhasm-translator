#!/usr/bin/perl

# Constants. WARN: RW

package constants;

use strict;
use warnings;
use base 'Exporter';

######################################################################## DOC
use constant RX_TYPES => '(it|iv|int3232|int32|int64|stack32|stack64|stack128|stack512|float80)';
use constant RX_NAMES => '([a-zA-Z_][a-zA-Z0-9_]*)';
use constant RX_DIGIT => '([0-9]+|0x[abcdef0-9]*)';
use constant RX_SPACE => '[ \t]?';
use constant RX_RESER => '(\?|\(|\)|\{|\}|\*|\+|\^|\|)';
use constant RX_PV => '(r|n|f|s|t|y|x|z)'; 
use constant RX_OPERAND => '(=|\+=|-=|\*=|/=|<<=|>>=|\|=|\^=|&=)';
use constant RX_FLAGS => '(unsigned>|unsigned<|!unsigned>|!unsigned<|=|!=)';
use constant RX_TEST_FLAGS => '(unsigned>|unsigned<|=)';

######################################################################## PARSE
use constant RX_REG 		=> "(eax|ebx|ecx|esi|edi|ebp)";
use constant RX_ASSIGN 	=> "(1|2|3|4|5|6|7)";
use constant RX_11_15 	=> "(11|12|13|14|15)";
use constant RX_NAME		=> "[a-zA-Z_][a-zA-Z0-9_]*";
use constant RX_ARG  	  => "(stack32|stack64)";
use constant RX_VART	 	=> "(stack32|stack64|stack128|stack512|int3232|int32|int64|float80)";

# TODO : clear list -> in file
use constant CL_FINAL   => "^[ \t]*(".
								 "((caller|int32) ".RX_REG.")|".
								 "stack32 ".RX_REG."\_stack"."|".
                 "((caller|int64) caller".RX_ASSIGN.")|".
								 "stack64 caller".RX_ASSIGN."\_stack"."|".
								 "eax_stack = eax|ebx_stack = ebx|ecx_stack = ecx|esi_stack = esi|edi_stack = edi|ebp_stack = ebp"."|".
								 "eax = eax_stack|ebx = ebx_stack|ecx = ecx_stack|esi = esi_stack|edi = edi_stack|ebp = ebp_stack"."|".

                 "c".RX_ASSIGN."_stack".RX_SPACE."=".RX_SPACE."c".RX_ASSIGN."|". # c1_stack = c1
                 "c".RX_ASSIGN.RX_SPACE."=".RX_SPACE."c".RX_ASSIGN."_stack"."|". # c1 = c1_stack

                 "caller".RX_ASSIGN."_stack".RX_SPACE."=".RX_SPACE."caller".RX_ASSIGN."|". # caller1_stack = caller1
                 "caller".RX_ASSIGN.RX_SPACE."=".RX_SPACE."caller".RX_ASSIGN."_stack"."|". # caller1 = caller1_stack

                 "r".RX_11_15."_stack".RX_SPACE."=".RX_SPACE."r".RX_11_15."|". # r[11..15]_stack = r[11..15]
                 "r".RX_11_15.RX_SPACE."=".RX_SPACE."r".RX_11_15."_stack"."|". # r[11..15] = r[11..15]_stack
                 "rbx_stack".RX_SPACE."=".RX_SPACE."rbx"."|"."rbp_stack".RX_SPACE."=".RX_SPACE."rbp"."|".
                 "rbx".RX_SPACE."=".RX_SPACE."rbx_stack"."|"."rbp".RX_SPACE."=".RX_SPACE."rbp_stack"."|".

                 "r".RX_11_15."_stack".RX_SPACE."=".RX_SPACE."r".RX_11_15."_caller|". # r[11..15]_stack = r[11..15]_caller
                 "r".RX_11_15."_caller".RX_SPACE."=".RX_SPACE."r".RX_11_15."_stack"."|". # r[11..15] = r[11..15]_stack
                 "rbx_stack".RX_SPACE."=".RX_SPACE."rbx_caller"."|"."rbp_stack".RX_SPACE."=".RX_SPACE."rbp_caller"."|".
                 "rbx_caller".RX_SPACE."=".RX_SPACE."rbx_stack"."|"."rbp_caller".RX_SPACE."=".RX_SPACE."rbp_stack"."|".



								 "assign ".RX_ASSIGN." to ".RX_NAME."|".
								 "emms"."|)\$"; # |): blank line

######################################################################## GOTOS
use constant RX_VD => '([a-zA-Z_][a-zA-Z0-9_]*|[0-9]+|0x[abcdef0-9]*)';
use constant CONDITIONS => '== != > <= < >=';


our @EXPORT_OK = qw(RX_TYPES RX_NAMES RX_DIGIT RX_RESER RX_PV RX_FLAGS RX_TEST_FLAGS RX_REG RX_ASSIGN RX_NAME RX_ARG RX_VART CL_FINAL RX_VD CONDITIONS RX_SPACE RX_OPERAND RX_11_15);

1;
