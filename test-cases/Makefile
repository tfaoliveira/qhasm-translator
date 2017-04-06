.PHONY : clean crypto_scalarmult/curve25519/amd64-51/fe25519*

crypto_scalarmult/curve25519/amd64-51/fe25519_square.mli: crypto_scalarmult/curve25519/amd64-51/fe25519_square.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64-mli" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ucp;"
	indent -orig -l150 -nut -ts0 -sob $@
	sed -i 's/\([ \(]\)\(reg\|stack\)[ ]*\([a-zA-Z0-9_]*\)/\1 \2 \3 : u64/g' $@
	sed -i '3s/^{/{\n     reg cf : bool;/' $@
	sed -i '3s/^{/{\n     param : crypto_scalarmult_curve25519_amd64_51_REDMASK51 : u64;/' $@
	sed -i '1s/^void/extern/' $@

crypto_scalarmult/curve25519/amd64-51/fe25519_mul.mli: crypto_scalarmult/curve25519/amd64-51/fe25519_mul.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64-mli" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ucp;"
	indent -orig -l150 -nut -ts0 -sob $@
	sed -i 's/\([ \(]\)\(reg\|stack\)[ ]*\([a-zA-Z0-9_]*\)/\1 \2 \3 : u64/g' $@
	sed -i '3s/^{/{\n     reg cf : bool;/' $@
	sed -i '3s/^{/{\n     param : crypto_scalarmult_curve25519_amd64_51_REDMASK51 : u64;/' $@
	sed -i '1s/^void/extern/' $@

crypto_scalarmult/curve25519/amd64-51/fe25519_mul.c: crypto_scalarmult/curve25519/amd64-51/fe25519_mul.q
	../src/translate.pl -in $< -out $@ -map-file "../config/map-direct-amd64" -ext-variables "crypto_scalarmult_curve25519_amd64_51_REDMASK51:ucp;"
	indent -orig -l150 -nut -ts0 -sob $@

clean:
	find . -name "*~" -exec rm {} \;
