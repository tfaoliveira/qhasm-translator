DG = -print-parsed -debug-regex
TR = ./../../src/translate.pl -map-file ./map-pqc -types-file ../config/types-pqc -mil -in $< -out $@
JC = jasminc $< -o $@
JP = (sed -i "1s/^/\#define $(subst .jinc.s,,$(<F)) CRYPTO_NAMESPACE($(subst .jinc.s,,$(<F)))\n/" $@ && \
     sed -i "2s/^/\#define _$(subst .jinc.s,,$(<F)) _CRYPTO_NAMESPACE($(subst .jinc.s,,$(<F)))\n/" $@)
TG = $(shell cat target)

########################################################################################

QSRC :=\
mceliece6688128/avx/transpose_64x128_sp_asm.q\
mceliece6688128/avx/vec256_mul_asm.q\
mceliece6688128/avx/vec256_maa_asm.q\
mceliece6688128/avx/vec256_ama_asm.q\
mceliece6688128/avx/vec128_mul_asm.q\
mceliece6688128/avx/update_asm.q\
mceliece6688128/avx/transpose_64x256_sp_asm.q

# TODO: need to extend map-pqc with rvp: mceliece6688128/avx/syndrome_asm.q
# TODO: return ++ u32 &: mceliece6688128/avx/vec_reduce_asm.q

JSRC := $(QSRC:%.q=%.jinc)
SSRC := $(QSRC:%.q=%.jinc.s)
PSRC := $(QSRC:%.q=%.jinc.s.S)

########################################################################################

all: translate compile def sync
translate: $(JSRC)
compile: $(SSRC)
def: $(PSRC)

.PHONY: sync
sync:
	for f in $(PSRC); do cp $$f $(TG)/$$f; done

########################################################################################

mceliece6688128/avx/transpose_64x128_sp_asm.jinc: mceliece6688128/avx/transpose_64x128_sp_asm.q
	$(TR) -ext-variables "MASK3_0:ui128;MASK3_1:ui128;MASK4_0:ui128;MASK4_1:ui128;MASK5_0:ui128;MASK5_1:ui128;MASK0_0:ui128;MASK0_1:ui128;MASK1_0:ui128;MASK1_1:ui128;MASK2_0:ui128;MASK2_1:ui128;" -ext-variable-values "MASK0_0:(2u64)[0x5555555555555555, 0x5555555555555555];MASK0_1:(2u64)[0xAAAAAAAAAAAAAAAA, 0xAAAAAAAAAAAAAAAA];MASK1_0:(2u64)[0x3333333333333333, 0x3333333333333333];MASK1_1:(2u64)[0xCCCCCCCCCCCCCCCC, 0xCCCCCCCCCCCCCCCC];MASK2_0:(2u64)[0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F];MASK2_1:(2u64)[0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0];MASK3_0:(2u64)[0x00FF00FF00FF00FF, 0x00FF00FF00FF00FF];MASK3_1:(2u64)[0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00];MASK4_0:(2u64)[0x0000FFFF0000FFFF, 0x0000FFFF0000FFFF];MASK4_1:(2u64)[0xFFFF0000FFFF0000, 0xFFFF0000FFFF0000];MASK5_0:(2u64)[0x00000000FFFFFFFF, 0x00000000FFFFFFFF];MASK5_1:(2u64)[0xFFFFFFFF00000000, 0xFFFFFFFF00000000]"


mceliece6688128/avx/transpose_64x256_sp_asm.jinc: mceliece6688128/avx/transpose_64x256_sp_asm.q
	$(TR) -ext-variables "MASK0_0:ui256;MASK0_1:ui256;MASK1_0:ui256;MASK1_1:ui256;MASK2_0:ui256;MASK2_1:ui256;MASK3_0:ui256;MASK3_1:ui256;MASK4_0:ui256;MASK4_1:ui256;MASK5_0:ui256;MASK5_1:ui256;" -ext-variable-values "MASK0_0:(4u64)[0x5555555555555555, 0x5555555555555555, 0x5555555555555555, 0x5555555555555555];MASK0_1:(4u64)[0xAAAAAAAAAAAAAAAA, 0xAAAAAAAAAAAAAAAA, 0xAAAAAAAAAAAAAAAA, 0xAAAAAAAAAAAAAAAA];MASK1_0:(4u64)[0x3333333333333333, 0x3333333333333333, 0x3333333333333333, 0x3333333333333333];MASK1_1:(4u64)[0xCCCCCCCCCCCCCCCC, 0xCCCCCCCCCCCCCCCC, 0xCCCCCCCCCCCCCCCC, 0xCCCCCCCCCCCCCCCC];MASK2_0:(4u64)[0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F, 0x0F0F0F0F0F0F0F0F];MASK2_1:(4u64)[0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0, 0xF0F0F0F0F0F0F0F0];MASK3_0:(4u64)[0x00FF00FF00FF00FF, 0x00FF00FF00FF00FF, 0x00FF00FF00FF00FF, 0x00FF00FF00FF00FF];MASK3_1:(4u64)[0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00];MASK4_0:(4u64)[0x0000FFFF0000FFFF, 0x0000FFFF0000FFFF, 0x0000FFFF0000FFFF, 0x0000FFFF0000FFFF];MASK4_1:(4u64)[0xFFFF0000FFFF0000, 0xFFFF0000FFFF0000, 0xFFFF0000FFFF0000, 0xFFFF0000FFFF0000];MASK5_0:(4u64)[0x00000000FFFFFFFF, 0x00000000FFFFFFFF, 0x00000000FFFFFFFF, 0x00000000FFFFFFFF];MASK5_1:(4u64)[0xFFFFFFFF00000000, 0xFFFFFFFF00000000, 0xFFFFFFFF00000000, 0xFFFFFFFF00000000];"

########################################################################################

mceliece6688128/avx/vec128_mul_asm.jinc: mceliece6688128/avx/vec128_mul_asm.q
	$(TR)
	sed -i 's/ptr/_ptr/g' $@
	sed -i 's/reg _ptr/reg ptr/g' $@

########################################################################################

%.jinc: %.q
	$(TR)

%.jinc.s: %.jinc
	$(JC)

%.jinc.s.S: %.jinc.s
	cp $< $@
	$(JP)

########################################################################################

clean:
	rm -f $(JSRC) $(SSRC) $(PSRC)

