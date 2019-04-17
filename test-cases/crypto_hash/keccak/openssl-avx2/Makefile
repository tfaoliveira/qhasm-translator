.PHONY: keccak1600f.jazz keccak1600f.s

keccak1600f.jazz: keccak1600f.s
	./../../../../src/translate.pl -map-file ./map-openssl -types-file ../config/types-mil -mil -in $< -out $@
	less $@

keccak1600f.s:
	./keccak1600-avx2.pl > $@
