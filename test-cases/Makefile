.PHONY : clean crypto_scalarmult/curve25519/amd64-51/fe25519*

crypto_scalarmult/curve25519/amd64-51/fe25519_square.mli: crypto_scalarmult/curve25519/amd64-51/fe25519_square.q
	../src/translate.pl -mli -in $< -out $@ -map-file "../config/map-direct-amd64-mli" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:pui64pmli;"
	indent -orig -l150 -nut -ts0 -sob $@
#	sed -i 's/:/ : /g' $@

crypto_scalarmult/curve25519/amd64-51/fe25519_mul.mli: crypto_scalarmult/curve25519/amd64-51/fe25519_mul.q
	../src/translate.pl -mli -in $< -out $@ -map-file "../config/map-direct-amd64-mli" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:pui64pmli;"
	indent -orig -l150 -nut -ts0 -sob $@
#	sed -i 's/:/ : /g' $@

crypto_scalarmult/curve25519/amd64-51/fe25519_mul.c: crypto_scalarmult/curve25519/amd64-51/fe25519_mul.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ucp;"
	indent -orig -l150 -nut -ts0 -sob $@

clean:
	find . -name "*~" -exec rm {} \;
