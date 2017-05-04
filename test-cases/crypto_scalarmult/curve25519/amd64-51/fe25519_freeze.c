#include "qhasm-translator.h"

extern uint64_t crypto_scalarmult_curve25519_amd64_51_REDMASK51;

void
crypto_scalarmult_curve25519_amd64_51_fe25519_freeze(uint64_t * rp)
{

    uint64_t        loop;
    uint64_t        r0;
    uint64_t        r1;
    uint64_t        r2;
    uint64_t        r3;
    uint64_t        r4;
    uint64_t        t;
    uint64_t        two51minus1;
    uint64_t        two51minus19;

    r0 = rp[0];
    r1 = rp[1];
    r2 = rp[2];
    r3 = rp[3];
    r4 = rp[4];
    two51minus1 = crypto_scalarmult_curve25519_amd64_51_REDMASK51;
    two51minus19 = two51minus1;
    two51minus19 -= 18;
    loop = 3;
    do {
        t = r0;
        t >>= 51;
        r0 &= two51minus1;
        r1 += t;
        t = r1;
        t >>= 51;
        r1 &= two51minus1;
        r2 += t;
        t = r2;
        t >>= 51;
        r2 &= two51minus1;
        r3 += t;
        t = r3;
        t >>= 51;
        r3 &= two51minus1;
        r4 += t;
        t = r4;
        t >>= 51;
        r4 &= two51minus1;
        t *= 19;
        r0 += t;
    } while ((loop -= 1) > 0);
    t = 1;
    // signed<? r0 - two51minus19
    if (((int64_t) r0) < ((int64_t) two51minus19)) {
        t = loop;
    }
    // =? r1-two51minus1
    if (r1 != two51minus1) {
        t = loop;
    }
    // =? r2-two51minus1
    if (r2 != two51minus1) {
        t = loop;
    }
    // =? r3-two51minus1
    if (r3 != two51minus1) {
        t = loop;
    }
    // =? r4-two51minus1
    if (r4 != two51minus1) {
        t = loop;
    }
    // UNMATCHED: t = -t

    two51minus1 &= t;
    two51minus19 &= t;
    r0 -= two51minus19;
    r1 -= two51minus1;
    r2 -= two51minus1;
    r3 -= two51minus1;
    r4 -= two51minus1;
    rp[0] = r0;
    rp[1] = r1;
    rp[2] = r2;
    rp[3] = r3;
    rp[4] = r4;
    return;
}
