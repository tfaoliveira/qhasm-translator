IMPLEMENTATIONS=\
 crypto_scalarmult/curve25519/amd64-64/* \
 crypto_scalarmult/curve25519/amd64-51/* \
 crypto_stream/salsa20/e/amd64-1/* \
 crypto_stream/salsa20/e/amd64-1-manual/* \
 crypto_onetimeauth/poly1305/amd64/* \

.PHONY : clean crypto_sign/ed25519/amd64-64-24k/fe25519_mul.c

# indent cmd
#INDENT= indent -orig -l150 -nut -ts0 -sob $@
INDENT= indent -orig -l150 -nut -ts0 -sob $@ && sed -i -e 's/<<<= 32/<<<=32/' -e 's/ \* 8\]/\*8\]/' -e 's/>>= s/>>=s/' -e 's/=\[/= \[/' -e 's/ < s / <s /' $@

# remove comments
REMCMT= sed -i 's/;  \/\/.*/;/' $@

# mil types and map file
MILFLAGS=-mil -map-file "../config/map-direct-amd64-mil" -types-file "../config/types-mil"

JASMINC=jasminc -o $@ $< 2> /dev/null

################################################################################
################################################################################
## crypto_sign/ed25519/amd64-64-24k/
################################################################################
################################################################################

crypto_sign/ed25519/amd64-64-24k/: crypto_sign/ed25519/amd64-64-24k/*.c crypto_sign/ed25519/amd64-64-24k/*.mil

crypto_sign/ed25519/amd64-64-24k/choose_t.c: crypto_sign/ed25519/amd64-64-24k/choose_t.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/fe25519_add.c: crypto_sign/ed25519/amd64-64-24k/fe25519_add.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/fe25519_freeze.c: crypto_sign/ed25519/amd64-64-24k/fe25519_freeze.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/fe25519_mul.c: crypto_sign/ed25519/amd64-64-24k/fe25519_mul.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/fe25519_square.c: crypto_sign/ed25519/amd64-64-24k/fe25519_square.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/fe25519_sub.c: crypto_sign/ed25519/amd64-64-24k/fe25519_sub.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/ge25519_add_p1p1.c: crypto_sign/ed25519/amd64-64-24k/ge25519_add_p1p1.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;crypto_sign_ed25519_amd64_64_EC2D0:ui64;crypto_sign_ed25519_amd64_64_EC2D1:ui64;crypto_sign_ed25519_amd64_64_EC2D2:ui64;crypto_sign_ed25519_amd64_64_EC2D3:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/ge25519_dbl_p1p1.c: crypto_sign/ed25519/amd64-64-24k/ge25519_dbl_p1p1.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/ge25519_nielsadd2.c: crypto_sign/ed25519/amd64-64-24k/ge25519_nielsadd2.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/ge25519_nielsadd_p1p1.c: crypto_sign/ed25519/amd64-64-24k/ge25519_nielsadd_p1p1.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/ge25519_p1p1_to_p2.c: crypto_sign/ed25519/amd64-64-24k/ge25519_p1p1_to_p2.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/ge25519_p1p1_to_p3.c: crypto_sign/ed25519/amd64-64-24k/ge25519_p1p1_to_p3.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/ge25519_pnielsadd_p1p1.c: crypto_sign/ed25519/amd64-64-24k/ge25519_pnielsadd_p1p1.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_1limb.c: crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_1limb.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -in-variables "hp:rui64pp;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_2limbs.c: crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_2limbs.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -in-variables "hp:rui64pp;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_3limbs.c: crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_3limbs.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -in-variables "hp:rui64pp;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced.c: crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -in-variables "hp:rui64pp;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/sc25519_add.c: crypto_sign/ed25519/amd64-64-24k/sc25519_add.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_ORDER0:ui64;crypto_sign_ed25519_amd64_64_ORDER1:ui64;crypto_sign_ed25519_amd64_64_ORDER2:ui64;crypto_sign_ed25519_amd64_64_ORDER3:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/sc25519_barrett.c: crypto_sign/ed25519/amd64-64-24k/sc25519_barrett.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_sign_ed25519_amd64_64_ORDER0:ui64;crypto_sign_ed25519_amd64_64_ORDER1:ui64;crypto_sign_ed25519_amd64_64_ORDER2:ui64;crypto_sign_ed25519_amd64_64_ORDER3:ui64;crypto_sign_ed25519_amd64_64_MU0:ui64;crypto_sign_ed25519_amd64_64_MU1:ui64;crypto_sign_ed25519_amd64_64_MU2:ui64;crypto_sign_ed25519_amd64_64_MU3:ui64;crypto_sign_ed25519_amd64_64_MU4:ui64;"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/sc25519_lt.c: crypto_sign/ed25519/amd64-64-24k/sc25519_lt.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/sc25519_sub_nored.c: crypto_sign/ed25519/amd64-64-24k/sc25519_sub_nored.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/ull4_mul.c: crypto_sign/ed25519/amd64-64-24k/ull4_mul.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

################################################################################

crypto_sign/ed25519/amd64-64-24k/choose_t.mil: crypto_sign/ed25519/amd64-64-24k/choose_t.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(INDENT)

crypto_sign/ed25519/amd64-64-24k/fe25519_add.mil: crypto_sign/ed25519/amd64-64-24k/fe25519_add.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)

crypto_sign/ed25519/amd64-64-24k/fe25519_freeze.mil: crypto_sign/ed25519/amd64-64-24k/fe25519_freeze.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)

crypto_sign/ed25519/amd64-64-24k/fe25519_mul.mil: crypto_sign/ed25519/amd64-64-24k/fe25519_mul.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_38:38;"

crypto_sign/ed25519/amd64-64-24k/fe25519_square.mil: crypto_sign/ed25519/amd64-64-24k/fe25519_square.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_38:38;"

crypto_sign/ed25519/amd64-64-24k/fe25519_sub.mil: crypto_sign/ed25519/amd64-64-24k/fe25519_sub.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)

crypto_sign/ed25519/amd64-64-24k/ge25519_add_p1p1.mil: crypto_sign/ed25519/amd64-64-24k/ge25519_add_p1p1.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;crypto_sign_ed25519_amd64_64_EC2D0:ui64;crypto_sign_ed25519_amd64_64_EC2D1:ui64;crypto_sign_ed25519_amd64_64_EC2D2:ui64;crypto_sign_ed25519_amd64_64_EC2D3:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_38:38;crypto_sign_ed25519_amd64_64_EC2D0:0xEBD69B9426B2F146;crypto_sign_ed25519_amd64_64_EC2D1:0x00E0149A8283B156;crypto_sign_ed25519_amd64_64_EC2D2:0x198E80F2EEF3D130;crypto_sign_ed25519_amd64_64_EC2D3:0xA406D9DC56DFFCE7;"

crypto_sign/ed25519/amd64-64-24k/ge25519_dbl_p1p1.mil: crypto_sign/ed25519/amd64-64-24k/ge25519_dbl_p1p1.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_38:38;"

crypto_sign/ed25519/amd64-64-24k/ge25519_nielsadd2.mil: crypto_sign/ed25519/amd64-64-24k/ge25519_nielsadd2.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_38:38;"

crypto_sign/ed25519/amd64-64-24k/ge25519_nielsadd_p1p1.mil: crypto_sign/ed25519/amd64-64-24k/ge25519_nielsadd_p1p1.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_38:38;"

crypto_sign/ed25519/amd64-64-24k/ge25519_p1p1_to_p2.mil: crypto_sign/ed25519/amd64-64-24k/ge25519_p1p1_to_p2.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_38:38;"

crypto_sign/ed25519/amd64-64-24k/ge25519_p1p1_to_p3.mil: crypto_sign/ed25519/amd64-64-24k/ge25519_p1p1_to_p3.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_38:38;"

crypto_sign/ed25519/amd64-64-24k/ge25519_pnielsadd_p1p1.mil: crypto_sign/ed25519/amd64-64-24k/ge25519_pnielsadd_p1p1.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_38:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_38:38;"

crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_1limb.mil: crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_1limb.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "hp:rui64pp;"

crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_2limbs.mil: crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_2limbs.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "hp:rui64pp;"

crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_3limbs.mil: crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced_3limbs.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "hp:rui64pp;"

crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced.mil: crypto_sign/ed25519/amd64-64-24k/heap_rootreplaced.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "hp:rui64pp;"

crypto_sign/ed25519/amd64-64-24k/sc25519_add.mil: crypto_sign/ed25519/amd64-64-24k/sc25519_add.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_ORDER0:ui64;crypto_sign_ed25519_amd64_64_ORDER1:ui64;crypto_sign_ed25519_amd64_64_ORDER2:ui64;crypto_sign_ed25519_amd64_64_ORDER3:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_ORDER0:0x5812631A5CF5D3ED;crypto_sign_ed25519_amd64_64_ORDER1:0x14DEF9DEA2F79CD6;crypto_sign_ed25519_amd64_64_ORDER2:0x0000000000000000;crypto_sign_ed25519_amd64_64_ORDER3:0x1000000000000000;"

crypto_sign/ed25519/amd64-64-24k/sc25519_barrett.mil: crypto_sign/ed25519/amd64-64-24k/sc25519_barrett.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_sign_ed25519_amd64_64_ORDER0:ui64;crypto_sign_ed25519_amd64_64_ORDER1:ui64;crypto_sign_ed25519_amd64_64_ORDER2:ui64;crypto_sign_ed25519_amd64_64_ORDER3:ui64;crypto_sign_ed25519_amd64_64_MU0:ui64;crypto_sign_ed25519_amd64_64_MU1:ui64;crypto_sign_ed25519_amd64_64_MU2:ui64;crypto_sign_ed25519_amd64_64_MU3:ui64;crypto_sign_ed25519_amd64_64_MU4:ui64;" -ext-variable-values "crypto_sign_ed25519_amd64_64_ORDER0:0x5812631A5CF5D3ED;crypto_sign_ed25519_amd64_64_ORDER1:0x14DEF9DEA2F79CD6;crypto_sign_ed25519_amd64_64_ORDER2:0x0000000000000000;crypto_sign_ed25519_amd64_64_ORDER3:0x1000000000000000;crypto_sign_ed25519_amd64_64_MU0:0xED9CE5A30A2C131B;crypto_sign_ed25519_amd64_64_MU1:0x2106215D086329A7;crypto_sign_ed25519_amd64_64_MU2:0xFFFFFFFFFFFFFFEB;crypto_sign_ed25519_amd64_64_MU3:0xFFFFFFFFFFFFFFFF;crypto_sign_ed25519_amd64_64_MU4:0x000000000000000F;"

crypto_sign/ed25519/amd64-64-24k/sc25519_lt.mil: crypto_sign/ed25519/amd64-64-24k/sc25519_lt.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)

crypto_sign/ed25519/amd64-64-24k/sc25519_sub_nored.mil: crypto_sign/ed25519/amd64-64-24k/sc25519_sub_nored.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)

crypto_sign/ed25519/amd64-64-24k/ull4_mul.mil: crypto_sign/ed25519/amd64-64-24k/ull4_mul.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)

################################################################################
################################################################################
## crypto_stream/salsa20/e/amd64-1-manual/
################################################################################
################################################################################
crypto_stream/salsa20/e/amd64-1-manual/: crypto_stream/salsa20/e/amd64-1-manual/*.c crypto_stream/salsa20/e/amd64-1-manual/*.mil

crypto_stream/salsa20/e/amd64-1-manual/salsa20-init.c: crypto_stream/salsa20/e/amd64-1-manual/salsa20-init.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-ivsetup.c: crypto_stream/salsa20/e/amd64-1-manual/salsa20-ivsetup.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-keysetup.c: crypto_stream/salsa20/e/amd64-1-manual/salsa20-keysetup.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-keystream-bytes.c: crypto_stream/salsa20/e/amd64-1-manual/salsa20-keystream-bytes.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-decrypt-bytes.c: crypto_stream/salsa20/e/amd64-1-manual/salsa20-decrypt-bytes.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-encrypt-bytes.c: crypto_stream/salsa20/e/amd64-1-manual/salsa20-encrypt-bytes.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

################################################################################

crypto_stream/salsa20/e/amd64-1-manual/salsa20-init.mil: crypto_stream/salsa20/e/amd64-1-manual/salsa20-init.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(REMCMT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-ivsetup.mil: crypto_stream/salsa20/e/amd64-1-manual/salsa20-ivsetup.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(REMCMT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-keysetup.mil: crypto_stream/salsa20/e/amd64-1-manual/salsa20-keysetup.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(REMCMT)
	$(INDENT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-keystream-bytes.mil: crypto_stream/salsa20/e/amd64-1-manual/salsa20-keystream-bytes.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "tmp:ui8x64"
	$(REMCMT)
	$(INDENT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-decrypt-bytes.mil: crypto_stream/salsa20/e/amd64-1-manual/salsa20-decrypt-bytes.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "out:rui64p;m:rui64p;tmp:ui8x64"
	$(REMCMT)
	$(INDENT)

crypto_stream/salsa20/e/amd64-1-manual/salsa20-encrypt-bytes.mil: crypto_stream/salsa20/e/amd64-1-manual/salsa20-encrypt-bytes.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "out:rui64p;m:rui64p;tmp:ui8x64"
	$(REMCMT)
	$(INDENT)


################################################################################
################################################################################
## crypto_stream/salsa20/e/amd64-1/
################################################################################
################################################################################
crypto_stream/salsa20/e/amd64-1/: crypto_stream/salsa20/e/amd64-1/*.c

crypto_stream/salsa20/e/amd64-1/salsa20-init.c: crypto_stream/salsa20/e/amd64-1/salsa20-init.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-ivsetup.c: crypto_stream/salsa20/e/amd64-1/salsa20-ivsetup.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-keysetup.c: crypto_stream/salsa20/e/amd64-1/salsa20-keysetup.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -in-variables "x:rui8p;"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-keystream-bytes.c: crypto_stream/salsa20/e/amd64-1/salsa20-keystream-bytes.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -in-variables "out:rui8p;m:rui8p;"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-decrypt-bytes.c: crypto_stream/salsa20/e/amd64-1/salsa20-decrypt-bytes.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -in-variables "out:rui8p;m:rui8p;"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-encrypt-bytes.c: crypto_stream/salsa20/e/amd64-1/salsa20-encrypt-bytes.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -in-variables "out:rui8p;m:rui8p;"
	$(INDENT)

################################################################################

crypto_stream/salsa20/e/amd64-1/salsa20-init.mil: crypto_stream/salsa20/e/amd64-1/salsa20-init.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(REMCMT)

crypto_stream/salsa20/e/amd64-1/salsa20-ivsetup.mil: crypto_stream/salsa20/e/amd64-1/salsa20-ivsetup.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(REMCMT)

crypto_stream/salsa20/e/amd64-1/salsa20-keysetup.mil: crypto_stream/salsa20/e/amd64-1/salsa20-keysetup.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(REMCMT)
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-keystream-bytes.mil: crypto_stream/salsa20/e/amd64-1/salsa20-keystream-bytes.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "out:rui8p;m:rui8p;tmp:ui8x64"
	$(REMCMT)
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-decrypt-bytes.mil: crypto_stream/salsa20/e/amd64-1/salsa20-decrypt-bytes.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "out:rui8p;m:rui8p;tmp:ui8x64"
	$(REMCMT)
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-encrypt-bytes.mil: crypto_stream/salsa20/e/amd64-1/salsa20-encrypt-bytes.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -in-variables "out:rui8p;m:rui8p;tmp:ui8x64"
	$(REMCMT)
	$(INDENT)


################################################################################
################################################################################
## crypto_scalarmult/curve25519/amd64-64
################################################################################
################################################################################
crypto_scalarmult/curve25519/amd64-64/: crypto_scalarmult/curve25519/amd64-64/*.c crypto_scalarmult/curve25519/amd64-64/*.mil

crypto_scalarmult/curve25519/amd64-64/fe25519_freeze.c: crypto_scalarmult/curve25519/amd64-64/fe25519_freeze.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_scalarmult/curve25519/amd64-64/ladderstep.c: crypto_scalarmult/curve25519/amd64-64/ladderstep.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_64_121666:ui64;crypto_scalarmult_curve25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_scalarmult/curve25519/amd64-64/fe25519_mul.c: crypto_scalarmult/curve25519/amd64-64/fe25519_mul.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_64_38:ui64;"
	$(INDENT)

crypto_scalarmult/curve25519/amd64-64/work_cswap.c: crypto_scalarmult/curve25519/amd64-64/work_cswap.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_scalarmult/curve25519/amd64-64/fe25519_square.c: crypto_scalarmult/curve25519/amd64-64/fe25519_square.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_64_38:ui64;"
	$(INDENT)

################################################################################

crypto_scalarmult/curve25519/amd64-64/fe25519_freeze.mil: crypto_scalarmult/curve25519/amd64-64/fe25519_freeze.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(REMCMT)

crypto_scalarmult/curve25519/amd64-64/ladderstep.mil: crypto_scalarmult/curve25519/amd64-64/ladderstep.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_scalarmult_curve25519_amd64_64_121666:ui64;crypto_scalarmult_curve25519_amd64_64_38:ui64;" -ext-variable-values "crypto_scalarmult_curve25519_amd64_64_38:38;crypto_scalarmult_curve25519_amd64_64_121666:121666;"
	$(REMCMT)

crypto_scalarmult/curve25519/amd64-64/fe25519_mul.mil: crypto_scalarmult/curve25519/amd64-64/fe25519_mul.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_scalarmult_curve25519_amd64_64_38:ui64;" -ext-variable-values "crypto_scalarmult_curve25519_amd64_64_38:38;"
	$(REMCMT)

crypto_scalarmult/curve25519/amd64-64/work_cswap.mil: crypto_scalarmult/curve25519/amd64-64/work_cswap.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(REMCMT)

crypto_scalarmult/curve25519/amd64-64/fe25519_square.mil: crypto_scalarmult/curve25519/amd64-64/fe25519_square.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_scalarmult_curve25519_amd64_64_38:ui64" -ext-variable-values "crypto_scalarmult_curve25519_amd64_64_38:38;"
	$(REMCMT)


################################################################################
################################################################################
## crypto_scalarmult/curve25519/amd64-51
################################################################################
################################################################################
crypto_scalarmult/curve25519/amd64-51/:  crypto_scalarmult/curve25519/amd64-51/*.c crypto_scalarmult/curve25519/amd64-51/*.mil

crypto_scalarmult/curve25519/amd64-51/fe25519_freeze.c: crypto_scalarmult/curve25519/amd64-51/fe25519_freeze.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64;"
	$(INDENT)

crypto_scalarmult/curve25519/amd64-51/ladderstep.c: crypto_scalarmult/curve25519/amd64-51/ladderstep.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_51_121666_213:ui64;crypto_scalarmult_curve25519_amd64_51_2P0:ui64;crypto_scalarmult_curve25519_amd64_51_2P1234:ui64;crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64;"
	$(INDENT)

crypto_scalarmult/curve25519/amd64-51/fe25519_mul.c: crypto_scalarmult/curve25519/amd64-51/fe25519_mul.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64;"
	$(INDENT)

crypto_scalarmult/curve25519/amd64-51/work_cswap.c: crypto_scalarmult/curve25519/amd64-51/work_cswap.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_scalarmult/curve25519/amd64-51/fe25519_square.c: crypto_scalarmult/curve25519/amd64-51/fe25519_square.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64;"
	$(INDENT)

################################################################################

crypto_scalarmult/curve25519/amd64-51/fe25519_freeze.mil: crypto_scalarmult/curve25519/amd64-51/fe25519_freeze.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64;" -ext-variable-values "crypto_scalarmult_curve25519_amd64_51_REDMASK51:0x0007FFFFFFFFFFFF;"
	$(REMCMT)

crypto_scalarmult/curve25519/amd64-51/ladderstep.mil: crypto_scalarmult/curve25519/amd64-51/ladderstep.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_scalarmult_curve25519_amd64_51_121666_213:ui64;crypto_scalarmult_curve25519_amd64_51_2P0:ui64;crypto_scalarmult_curve25519_amd64_51_2P1234:ui64;crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64;" -ext-variable-values "crypto_scalarmult_curve25519_amd64_51_121666_213:996687872;crypto_scalarmult_curve25519_amd64_51_2P0:0xFFFFFFFFFFFDA;crypto_scalarmult_curve25519_amd64_51_2P1234:0xFFFFFFFFFFFFE;crypto_scalarmult_curve25519_amd64_51_REDMASK51:0x0007FFFFFFFFFFFF;"
	$(REMCMT)

crypto_scalarmult/curve25519/amd64-51/fe25519_mul.mil: crypto_scalarmult/curve25519/amd64-51/fe25519_mul.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64;" -ext-variable-values "crypto_scalarmult_curve25519_amd64_51_REDMASK51:0x0007FFFFFFFFFFFF;"
	$(REMCMT)

crypto_scalarmult/curve25519/amd64-51/work_cswap.mil: crypto_scalarmult/curve25519/amd64-51/work_cswap.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS)
	$(REMCMT)

crypto_scalarmult/curve25519/amd64-51/fe25519_square.mil: crypto_scalarmult/curve25519/amd64-51/fe25519_square.q
	../src/translate.pl -in $< -out $@ $(MILFLAGS) -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64;" -ext-variable-values "crypto_scalarmult_curve25519_amd64_51_REDMASK51:0x0007FFFFFFFFFFFF;"
	$(REMCMT)



################################################################################
################################################################################
## crypto_onetimeauth/poly1305/amd64/
crypto_onetimeauth/poly1305/amd64/: crypto_onetimeauth/poly1305/amd64/*.c
################################################################################
################################################################################

crypto_onetimeauth/poly1305/amd64/auth.c: crypto_onetimeauth/poly1305/amd64/auth.q
	../src/translate.pl -debug-regex -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_onetimeauth_poly1305_amd64_rounding:ui16;crypto_onetimeauth_poly1305_amd64_alpha130:ui64;crypto_onetimeauth_poly1305_amd64_alpha32:ui64;crypto_onetimeauth_poly1305_amd64_alpha64:ui64;crypto_onetimeauth_poly1305_amd64_alpha96:ui64;crypto_onetimeauth_poly1305_amd64_doffset0:ui64;crypto_onetimeauth_poly1305_amd64_doffset1:ui64;crypto_onetimeauth_poly1305_amd64_doffset2:ui64;crypto_onetimeauth_poly1305_amd64_doffset3:ui64;crypto_onetimeauth_poly1305_amd64_doffset3minustwo128:ui64;crypto_onetimeauth_poly1305_amd64_hoffset0:ui64;crypto_onetimeauth_poly1305_amd64_hoffset1:ui64;crypto_onetimeauth_poly1305_amd64_hoffset2:ui64;crypto_onetimeauth_poly1305_amd64_hoffset3:ui64;crypto_onetimeauth_poly1305_amd64_scale:ui64;" > output
	$(INDENT)

clean:
	find . -name "*~" -exec rm {} \;
