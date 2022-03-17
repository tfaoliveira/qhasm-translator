
.PHONY: mceliece6688128/avx/vec128_mul_asm.jinc
mceliece6688128/avx/vec128_mul_asm.jinc: mceliece6688128/avx/vec128_mul_asm.q
	./../../src/translate.pl -map-file ./map-pqc -types-file ../config/types-pqc -mil -in $< -out $@
	sed -i 's/ptr/_ptr/g' $@
	sed -i 's/reg _ptr/reg ptr/g' $@

mceliece6688128/avx/vec128_mul_asm.jinc.s: mceliece6688128/avx/vec128_mul_asm.jinc
	jasminc $< -o $@

