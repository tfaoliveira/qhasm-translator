.PHONY : clean crypto_scalarmult/curve25519/amd64-64/* crypto_scalarmult/curve25519/amd64-51/* crypto_stream/salsa20/e/amd64-1/*

INDENT= indent -orig -l150 -nut -ts0 -sob $@

################################################################################
crypto_stream/salsa20/e/amd64-1/salsa20.c: crypto_stream/salsa20/e/amd64-1/salsa20-subset.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

################################################################################
crypto_scalarmult/curve25519/amd64-64/: crypto_scalarmult/curve25519/amd64-64/*.c crypto_scalarmult/curve25519/amd64-64/*.mli

crypto_scalarmult/curve25519/amd64-64/fe25519_freeze.c: crypto_scalarmult/curve25519/amd64-64/fe25519_freeze.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64"
	$(INDENT)

crypto_scalarmult/curve25519/amd64-64/ladderstep.c: crypto_scalarmult/curve25519/amd64-64/ladderstep.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_64_121666:ui64;crypto_scalarmult_curve25519_amd64_64_38:ui64;"
	$(INDENT)

################################################################################

crypto_scalarmult/curve25519/amd64-51/: crypto_scalarmult/curve25519/amd64-51/*.c crypto_scalarmult/curve25519/amd64-51/*.mli

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

crypto_scalarmult/curve25519/amd64-51/fe25519_freeze.mli: crypto_scalarmult/curve25519/amd64-51/fe25519_freeze.q
	../src/translate.pl -mli -in $< -out $@ -map-file "../config/map-direct-amd64-mli" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64mli;"

crypto_scalarmult/curve25519/amd64-51/ladderstep.mli: crypto_scalarmult/curve25519/amd64-51/ladderstep.q
	../src/translate.pl -mli -in $< -out $@ -map-file "../config/map-direct-amd64-mli" -ext-variables "crypto_scalarmult_curve25519_amd64_51_121666_213:ui64mli;crypto_scalarmult_curve25519_amd64_51_2P0:ui64mli;crypto_scalarmult_curve25519_amd64_51_2P1234:ui64mli;crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64mli;"

crypto_scalarmult/curve25519/amd64-51/fe25519_mul.mli: crypto_scalarmult/curve25519/amd64-51/fe25519_mul.q
	../src/translate.pl -mli -in $< -out $@ -map-file "../config/map-direct-amd64-mli" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64mli;"

crypto_scalarmult/curve25519/amd64-51/work_cswap.mli: crypto_scalarmult/curve25519/amd64-51/work_cswap.q
	../src/translate.pl -mli -in $< -out $@ -map-file "../config/map-direct-amd64-mli"

crypto_scalarmult/curve25519/amd64-51/fe25519_square.mli: crypto_scalarmult/curve25519/amd64-51/fe25519_square.q
	../src/translate.pl -mli -in $< -out $@ -map-file "../config/map-direct-amd64-mli" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ui64mli;"


clean:
	find . -name "*~" -exec rm {} \;
