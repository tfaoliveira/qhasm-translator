.PHONY : clean crypto_onetimeauth/poly1305/amd64/* crypto_scalarmult/curve25519/amd64-64/* crypto_scalarmult/curve25519/amd64-51/* crypto_stream/salsa20/e/amd64-1/*

INDENT= indent -orig -l150 -nut -ts0 -sob $@

################################################################################
## crypto_onetimeauth/poly1305/amd64/
crypto_onetimeauth/poly1305/amd64/: crypto_onetimeauth/poly1305/amd64/*.c

crypto_onetimeauth/poly1305/amd64/auth.c: crypto_onetimeauth/poly1305/amd64/auth.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_onetimeauth_poly1305_amd64_rounding:ui16;crypto_onetimeauth_poly1305_amd64_alpha130:ui64;crypto_onetimeauth_poly1305_amd64_alpha32:ui64;crypto_onetimeauth_poly1305_amd64_alpha64:ui64;crypto_onetimeauth_poly1305_amd64_alpha96:ui64;crypto_onetimeauth_poly1305_amd64_doffset0:ui64;crypto_onetimeauth_poly1305_amd64_doffset1:ui64;crypto_onetimeauth_poly1305_amd64_doffset2:ui64;crypto_onetimeauth_poly1305_amd64_doffset3:ui64;crypto_onetimeauth_poly1305_amd64_doffset3minustwo128:ui64;crypto_onetimeauth_poly1305_amd64_hoffset0:ui64;crypto_onetimeauth_poly1305_amd64_hoffset1:ui64;crypto_onetimeauth_poly1305_amd64_hoffset2:ui64;crypto_onetimeauth_poly1305_amd64_hoffset3:ui64;crypto_onetimeauth_poly1305_amd64_scale:ui64;" > output

	$(INDENT)


################################################################################
## crypto_scalarmult/curve25519/amd64-51
crypto_scalarmult/curve25519/amd64-64/: crypto_scalarmult/curve25519/amd64-64/*.c

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
## crypto_scalarmult/curve25519/amd64-51

crypto_scalarmult/curve25519/amd64-51/: crypto_scalarmult/curve25519/amd64-51/*.c

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

#####

crypto_scalarmult/curve25519/amd64-51/fe25519_freeze.mil: crypto_scalarmult/curve25519/amd64-51/fe25519_freeze.q
	../src/translate.pl -mil -in $< -out $@ -map-file "../config/map-direct-amd64-mil" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64mil;"

crypto_scalarmult/curve25519/amd64-51/ladderstep.mil: crypto_scalarmult/curve25519/amd64-51/ladderstep.q
	../src/translate.pl -mil -in $< -out $@ -map-file "../config/map-direct-amd64-mil" -ext-variables "crypto_scalarmult_curve25519_amd64_51_121666_213:ui64mil;crypto_scalarmult_curve25519_amd64_51_2P0:ui64mil;crypto_scalarmult_curve25519_amd64_51_2P1234:ui64mil;crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64mil;"

crypto_scalarmult/curve25519/amd64-51/fe25519_mul.mil: crypto_scalarmult/curve25519/amd64-51/fe25519_mul.q
	../src/translate.pl -mil -in $< -out $@ -map-file "../config/map-direct-amd64-mil" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64mil;"

crypto_scalarmult/curve25519/amd64-51/work_cswap.mil: crypto_scalarmult/curve25519/amd64-51/work_cswap.q
	../src/translate.pl -mil -in $< -out $@ -map-file "../config/map-direct-amd64-mil"

crypto_scalarmult/curve25519/amd64-51/fe25519_square.mil: crypto_scalarmult/curve25519/amd64-51/fe25519_square.q
	../src/translate.pl -mil -in $< -out $@ -map-file "../config/map-direct-amd64-mil" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64mil;"

################################################################################
## crypto_stream/salsa20/e/amd64-1/
crypto_stream/salsa20/e/amd64-1/: crypto_stream/salsa20/e/amd64-1/*.c

crypto_stream/salsa20/e/amd64-1/salsa20-init.c: crypto_stream/salsa20/e/amd64-1/salsa20-init.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-ivsetup.c: crypto_stream/salsa20/e/amd64-1/salsa20-ivsetup.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-keysetup.c: crypto_stream/salsa20/e/amd64-1/salsa20-keysetup.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-keystream-bytes.c: crypto_stream/salsa20/e/amd64-1/salsa20-keystream-bytes.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-decrypt-bytes.c: crypto_stream/salsa20/e/amd64-1/salsa20-decrypt-bytes.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_stream/salsa20/e/amd64-1/salsa20-encrypt-bytes.c: crypto_stream/salsa20/e/amd64-1/salsa20-encrypt-bytes.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

#####

# TODO mil

clean:
	find . -name "*~" -exec rm {} \;
