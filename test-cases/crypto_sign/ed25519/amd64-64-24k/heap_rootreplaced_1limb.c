#include "qhasm-translator.h"

void
crypto_sign_ed25519_amd64_64_heap_rootreplaced_1limb(uint64_t ** hp, uint64_t hlen, uint64_t sp)
{
    uint64_t        c0;
    uint64_t        carry;
    uint64_t        pc;
    uint64_t        pp;
    uint64_t        prc;
    uint64_t       *spc;
    uint64_t       *spp;
    uint64_t       *sprc;

    pp = 0;                     // pp = 0
  siftdownloop:
    prc = pp;                   // prc = pp
    prc *= 2;                   // prc *= 2
    pc = prc;                   // pc = prc
    prc += 2;                   // prc += 2
    pc += 1;                    // pc += 1
    // unsigned>? hlen-prc
    /*
     * goto siftuploop if !unsigned>
     */ if (hlen <= prc) {
        goto siftuploop;
    }
    sprc = hp[prc];             // sprc = *(uint64 *) (hp + prc * 8)
    sprc = (uint64_t *) (((uint64_t) sprc) << 5); // NS sprc <<= 5
    sprc += sp;                 // sprc += sp
    spc = hp[pc];               // spc = *(uint64 *) (hp + pc * 8)
    spc = (uint64_t *) (((uint64_t) spc) << 5); // NS spc <<= 5
    spc += sp;                  // spc += sp
    c0 = spc[0];                // c0 = *(uint64 *) (spc + 0)
    sub64_and_set_carry(c0, c0, sprc[0]); // cf? c0 -= *(uint64 *) (sprc + 0)
    if (carry) {
        pc = prc;
    }                           // pc = prc if carry; 
    if (carry) {
        spc = sprc;
    }                           // spc = sprc if carry; 
    spc -= sp;                  // spc -= sp
    spc = (uint64_t *) (((uint64_t) spc) >> 5); // NS spc >>= 5
    spp = hp[pp];               // spp = *(uint64 *) (hp + pp * 8)
    hp[pp] = spc;               // *(uint64 *) (hp + pp * 8) = spc
    hp[pc] = spp;               // *(uint64 *) (hp + pc * 8) = spp
    pp = pc;                    // pp = pc
    goto siftdownloop;
  siftuploop:
    pc = pp;                    // pc = pp
    pp -= 1;                    // pp -= 1
    pp >>= 1;                   // pp >>= 1
    // unsigned>? pc-0
    /*
     * goto end if !unsigned>
     */ if (pc <= 0) {
        goto end;
    }
    spp = hp[pp];               // spp = *(uint64 *) (hp + pp * 8)
    spc = hp[pc];               // spc = *(uint64 *) (hp + pc * 8)
    spp = (uint64_t *) (((uint64_t) spp) << 5); // NS spp <<= 5
    spc = (uint64_t *) (((uint64_t) spc) << 5); // NS spc <<= 5
    spc += sp;                  // spc += sp
    spp += sp;                  // spp += sp
    c0 = spc[0];                // c0 = *(uint64 *) (spc + 0)
    sub64_and_set_carry(c0, c0, spp[0]); // cf? c0 -= *(uint64 *) (spp + 0)
    /*
     * goto end if carry
     */ if (carry) {
        goto end;
    }
    spc -= sp;                  // spc -= sp
    spc = (uint64_t *) (((uint64_t) spc) >> 5); // NS spc >>= 5
    spp -= sp;                  // spp -= sp
    spp = (uint64_t *) (((uint64_t) spp) >> 5); // NS spp >>= 5
    hp[pp] = spc;               // *(uint64 *) (hp + pp * 8) = spc
    hp[pc] = spp;               // *(uint64 *) (hp + pc * 8) = spp
    goto siftuploop;
  end:
    return;
}
