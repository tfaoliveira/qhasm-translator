#include "qhasm-translator.h"

void
crypto_sign_ed25519_amd64_64_choose_t(uint64_t * tp, uint64_t pos, uint64_t b, uint64_t * basep)
{
    uint64_t        carry;
    uint64_t        mask;
    uint64_t        subt0;
    uint64_t        subt1;
    uint64_t        t;
    uint64_t       *tp_stack;
    uint64_t        tt0;
    uint64_t        tt1;
    uint64_t        tt2;
    uint64_t        tt2d0;
    uint64_t        tt2d1;
    uint64_t        tt2d2;
    uint64_t        tt2d3;
    uint64_t        tt3;
    uint64_t        txaddy0;
    uint64_t        txaddy1;
    uint64_t        txaddy2;
    uint64_t        txaddy3;
    uint64_t        tysubx0;
    uint64_t        tysubx1;
    uint64_t        tysubx2;
    uint64_t        tysubx3;
    uint64_t        u;

    tp_stack = tp;              // tp_stack = tp
    pos *= 768;                 // pos *= 768
    mask = b;                   // mask = b
    mask = (uint64_t) (((int64_t) mask) >> 7); // (int64) mask >>= 7
    u = b;                      // u = b
    u += mask;                  // u += mask
    u ^= mask;                  // u ^= mask
    tysubx0 = 1;                // tysubx0 = 1
    tysubx1 = 0;                // tysubx1 = 0
    tysubx2 = 0;                // tysubx2 = 0
    tysubx3 = 0;                // tysubx3 = 0
    txaddy0 = 1;                // txaddy0 = 1
    txaddy1 = 0;                // txaddy1 = 0
    txaddy2 = 0;                // txaddy2 = 0
    txaddy3 = 0;                // txaddy3 = 0
    // =? u-1
    t = *(uint64_t *) (((void *) basep) + 0 + pos); // t = *(uint64 *) (basep + 0 + pos)
    /*
     * tysubx0 = t if =
     */ if (u == 1) {
        tysubx0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 8 + pos); // t = *(uint64 *) (basep + 8 + pos)
    /*
     * tysubx1 = t if =
     */ if (u == 1) {
        tysubx1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 16 + pos); // t = *(uint64 *) (basep + 16 + pos)
    /*
     * tysubx2 = t if =
     */ if (u == 1) {
        tysubx2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 24 + pos); // t = *(uint64 *) (basep + 24 + pos)
    /*
     * tysubx3 = t if =
     */ if (u == 1) {
        tysubx3 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 32 + pos); // t = *(uint64 *) (basep + 32 + pos)
    /*
     * txaddy0 = t if =
     */ if (u == 1) {
        txaddy0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 40 + pos); // t = *(uint64 *) (basep + 40 + pos)
    /*
     * txaddy1 = t if =
     */ if (u == 1) {
        txaddy1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 48 + pos); // t = *(uint64 *) (basep + 48 + pos)
    /*
     * txaddy2 = t if =
     */ if (u == 1) {
        txaddy2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 56 + pos); // t = *(uint64 *) (basep + 56 + pos)
    /*
     * txaddy3 = t if =
     */ if (u == 1) {
        txaddy3 = t;
    }
    // =? u-2
    t = *(uint64_t *) (((void *) basep) + 96 + pos); // t = *(uint64 *) (basep + 96 + pos)
    /*
     * tysubx0 = t if =
     */ if (u == 2) {
        tysubx0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 104 + pos); // t = *(uint64 *) (basep + 104 + pos)
    /*
     * tysubx1 = t if =
     */ if (u == 2) {
        tysubx1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 112 + pos); // t = *(uint64 *) (basep + 112 + pos)
    /*
     * tysubx2 = t if =
     */ if (u == 2) {
        tysubx2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 120 + pos); // t = *(uint64 *) (basep + 120 + pos)
    /*
     * tysubx3 = t if =
     */ if (u == 2) {
        tysubx3 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 128 + pos); // t = *(uint64 *) (basep + 128 + pos)
    /*
     * txaddy0 = t if =
     */ if (u == 2) {
        txaddy0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 136 + pos); // t = *(uint64 *) (basep + 136 + pos)
    /*
     * txaddy1 = t if =
     */ if (u == 2) {
        txaddy1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 144 + pos); // t = *(uint64 *) (basep + 144 + pos)
    /*
     * txaddy2 = t if =
     */ if (u == 2) {
        txaddy2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 152 + pos); // t = *(uint64 *) (basep + 152 + pos)
    /*
     * txaddy3 = t if =
     */ if (u == 2) {
        txaddy3 = t;
    }
    // =? u-3
    t = *(uint64_t *) (((void *) basep) + 192 + pos); // t = *(uint64 *) (basep + 192 + pos)
    /*
     * tysubx0 = t if =
     */ if (u == 3) {
        tysubx0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 200 + pos); // t = *(uint64 *) (basep + 200 + pos)
    /*
     * tysubx1 = t if =
     */ if (u == 3) {
        tysubx1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 208 + pos); // t = *(uint64 *) (basep + 208 + pos)
    /*
     * tysubx2 = t if =
     */ if (u == 3) {
        tysubx2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 216 + pos); // t = *(uint64 *) (basep + 216 + pos)
    /*
     * tysubx3 = t if =
     */ if (u == 3) {
        tysubx3 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 224 + pos); // t = *(uint64 *) (basep + 224 + pos)
    /*
     * txaddy0 = t if =
     */ if (u == 3) {
        txaddy0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 232 + pos); // t = *(uint64 *) (basep + 232 + pos)
    /*
     * txaddy1 = t if =
     */ if (u == 3) {
        txaddy1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 240 + pos); // t = *(uint64 *) (basep + 240 + pos)
    /*
     * txaddy2 = t if =
     */ if (u == 3) {
        txaddy2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 248 + pos); // t = *(uint64 *) (basep + 248 + pos)
    /*
     * txaddy3 = t if =
     */ if (u == 3) {
        txaddy3 = t;
    }
    // =? u-4
    t = *(uint64_t *) (((void *) basep) + 288 + pos); // t = *(uint64 *) (basep + 288 + pos)
    /*
     * tysubx0 = t if =
     */ if (u == 4) {
        tysubx0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 296 + pos); // t = *(uint64 *) (basep + 296 + pos)
    /*
     * tysubx1 = t if =
     */ if (u == 4) {
        tysubx1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 304 + pos); // t = *(uint64 *) (basep + 304 + pos)
    /*
     * tysubx2 = t if =
     */ if (u == 4) {
        tysubx2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 312 + pos); // t = *(uint64 *) (basep + 312 + pos)
    /*
     * tysubx3 = t if =
     */ if (u == 4) {
        tysubx3 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 320 + pos); // t = *(uint64 *) (basep + 320 + pos)
    /*
     * txaddy0 = t if =
     */ if (u == 4) {
        txaddy0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 328 + pos); // t = *(uint64 *) (basep + 328 + pos)
    /*
     * txaddy1 = t if =
     */ if (u == 4) {
        txaddy1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 336 + pos); // t = *(uint64 *) (basep + 336 + pos)
    /*
     * txaddy2 = t if =
     */ if (u == 4) {
        txaddy2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 344 + pos); // t = *(uint64 *) (basep + 344 + pos)
    /*
     * txaddy3 = t if =
     */ if (u == 4) {
        txaddy3 = t;
    }
    // =? u-5
    t = *(uint64_t *) (((void *) basep) + 384 + pos); // t = *(uint64 *) (basep + 384 + pos)
    /*
     * tysubx0 = t if =
     */ if (u == 5) {
        tysubx0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 392 + pos); // t = *(uint64 *) (basep + 392 + pos)
    /*
     * tysubx1 = t if =
     */ if (u == 5) {
        tysubx1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 400 + pos); // t = *(uint64 *) (basep + 400 + pos)
    /*
     * tysubx2 = t if =
     */ if (u == 5) {
        tysubx2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 408 + pos); // t = *(uint64 *) (basep + 408 + pos)
    /*
     * tysubx3 = t if =
     */ if (u == 5) {
        tysubx3 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 416 + pos); // t = *(uint64 *) (basep + 416 + pos)
    /*
     * txaddy0 = t if =
     */ if (u == 5) {
        txaddy0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 424 + pos); // t = *(uint64 *) (basep + 424 + pos)
    /*
     * txaddy1 = t if =
     */ if (u == 5) {
        txaddy1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 432 + pos); // t = *(uint64 *) (basep + 432 + pos)
    /*
     * txaddy2 = t if =
     */ if (u == 5) {
        txaddy2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 440 + pos); // t = *(uint64 *) (basep + 440 + pos)
    /*
     * txaddy3 = t if =
     */ if (u == 5) {
        txaddy3 = t;
    }
    // =? u-6
    t = *(uint64_t *) (((void *) basep) + 480 + pos); // t = *(uint64 *) (basep + 480 + pos)
    /*
     * tysubx0 = t if =
     */ if (u == 6) {
        tysubx0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 488 + pos); // t = *(uint64 *) (basep + 488 + pos)
    /*
     * tysubx1 = t if =
     */ if (u == 6) {
        tysubx1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 496 + pos); // t = *(uint64 *) (basep + 496 + pos)
    /*
     * tysubx2 = t if =
     */ if (u == 6) {
        tysubx2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 504 + pos); // t = *(uint64 *) (basep + 504 + pos)
    /*
     * tysubx3 = t if =
     */ if (u == 6) {
        tysubx3 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 512 + pos); // t = *(uint64 *) (basep + 512 + pos)
    /*
     * txaddy0 = t if =
     */ if (u == 6) {
        txaddy0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 520 + pos); // t = *(uint64 *) (basep + 520 + pos)
    /*
     * txaddy1 = t if =
     */ if (u == 6) {
        txaddy1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 528 + pos); // t = *(uint64 *) (basep + 528 + pos)
    /*
     * txaddy2 = t if =
     */ if (u == 6) {
        txaddy2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 536 + pos); // t = *(uint64 *) (basep + 536 + pos)
    /*
     * txaddy3 = t if =
     */ if (u == 6) {
        txaddy3 = t;
    }
    // =? u-7
    t = *(uint64_t *) (((void *) basep) + 576 + pos); // t = *(uint64 *) (basep + 576 + pos)
    /*
     * tysubx0 = t if =
     */ if (u == 7) {
        tysubx0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 584 + pos); // t = *(uint64 *) (basep + 584 + pos)
    /*
     * tysubx1 = t if =
     */ if (u == 7) {
        tysubx1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 592 + pos); // t = *(uint64 *) (basep + 592 + pos)
    /*
     * tysubx2 = t if =
     */ if (u == 7) {
        tysubx2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 600 + pos); // t = *(uint64 *) (basep + 600 + pos)
    /*
     * tysubx3 = t if =
     */ if (u == 7) {
        tysubx3 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 608 + pos); // t = *(uint64 *) (basep + 608 + pos)
    /*
     * txaddy0 = t if =
     */ if (u == 7) {
        txaddy0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 616 + pos); // t = *(uint64 *) (basep + 616 + pos)
    /*
     * txaddy1 = t if =
     */ if (u == 7) {
        txaddy1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 624 + pos); // t = *(uint64 *) (basep + 624 + pos)
    /*
     * txaddy2 = t if =
     */ if (u == 7) {
        txaddy2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 632 + pos); // t = *(uint64 *) (basep + 632 + pos)
    /*
     * txaddy3 = t if =
     */ if (u == 7) {
        txaddy3 = t;
    }
    // =? u-8
    t = *(uint64_t *) (((void *) basep) + 672 + pos); // t = *(uint64 *) (basep + 672 + pos)
    /*
     * tysubx0 = t if =
     */ if (u == 8) {
        tysubx0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 680 + pos); // t = *(uint64 *) (basep + 680 + pos)
    /*
     * tysubx1 = t if =
     */ if (u == 8) {
        tysubx1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 688 + pos); // t = *(uint64 *) (basep + 688 + pos)
    /*
     * tysubx2 = t if =
     */ if (u == 8) {
        tysubx2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 696 + pos); // t = *(uint64 *) (basep + 696 + pos)
    /*
     * tysubx3 = t if =
     */ if (u == 8) {
        tysubx3 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 704 + pos); // t = *(uint64 *) (basep + 704 + pos)
    /*
     * txaddy0 = t if =
     */ if (u == 8) {
        txaddy0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 712 + pos); // t = *(uint64 *) (basep + 712 + pos)
    /*
     * txaddy1 = t if =
     */ if (u == 8) {
        txaddy1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 720 + pos); // t = *(uint64 *) (basep + 720 + pos)
    /*
     * txaddy2 = t if =
     */ if (u == 8) {
        txaddy2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 728 + pos); // t = *(uint64 *) (basep + 728 + pos)
    /*
     * txaddy3 = t if =
     */ if (u == 8) {
        txaddy3 = t;
    }
    // signed<? b - 0
    t = tysubx0;                // t = tysubx0
    /*
     * tysubx0 = txaddy0 if signed<
     */ if (((int64_t) b) < ((int64_t) 0)) {
        tysubx0 = txaddy0;
    }
    /*
     * txaddy0 = t if signed<
     */
    if (((int64_t) b) < ((int64_t) 0)) {
        txaddy0 = t;
    }
    t = tysubx1;                // t = tysubx1
    /*
     * tysubx1 = txaddy1 if signed<
     */ if (((int64_t) b) < ((int64_t) 0)) {
        tysubx1 = txaddy1;
    }
    /*
     * txaddy1 = t if signed<
     */
    if (((int64_t) b) < ((int64_t) 0)) {
        txaddy1 = t;
    }
    t = tysubx2;                // t = tysubx2
    /*
     * tysubx2 = txaddy2 if signed<
     */ if (((int64_t) b) < ((int64_t) 0)) {
        tysubx2 = txaddy2;
    }
    /*
     * txaddy2 = t if signed<
     */
    if (((int64_t) b) < ((int64_t) 0)) {
        txaddy2 = t;
    }
    t = tysubx3;                // t = tysubx3
    /*
     * tysubx3 = txaddy3 if signed<
     */ if (((int64_t) b) < ((int64_t) 0)) {
        tysubx3 = txaddy3;
    }
    /*
     * txaddy3 = t if signed<
     */
    if (((int64_t) b) < ((int64_t) 0)) {
        txaddy3 = t;
    }
    tp = tp_stack;              // tp = tp_stack
    tp[0] = tysubx0;            // *(uint64 *) (tp + 0) = tysubx0
    tp[1] = tysubx1;            // *(uint64 *) (tp + 8) = tysubx1
    tp[2] = tysubx2;            // *(uint64 *) (tp + 16) = tysubx2
    tp[3] = tysubx3;            // *(uint64 *) (tp + 24) = tysubx3
    tp[4] = txaddy0;            // *(uint64 *) (tp + 32) = txaddy0
    tp[5] = txaddy1;            // *(uint64 *) (tp + 40) = txaddy1
    tp[6] = txaddy2;            // *(uint64 *) (tp + 48) = txaddy2
    tp[7] = txaddy3;            // *(uint64 *) (tp + 56) = txaddy3
    tt2d0 = 0;                  // tt2d0 = 0
    tt2d1 = 0;                  // tt2d1 = 0
    tt2d2 = 0;                  // tt2d2 = 0
    tt2d3 = 0;                  // tt2d3 = 0
    // =? u-1
    t = *(uint64_t *) (((void *) basep) + 64 + pos); // t = *(uint64 *) (basep + 64 + pos)
    /*
     * tt2d0 = t if =
     */ if (u == 1) {
        tt2d0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 72 + pos); // t = *(uint64 *) (basep + 72 + pos)
    /*
     * tt2d1 = t if =
     */ if (u == 1) {
        tt2d1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 80 + pos); // t = *(uint64 *) (basep + 80 + pos)
    /*
     * tt2d2 = t if =
     */ if (u == 1) {
        tt2d2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 88 + pos); // t = *(uint64 *) (basep + 88 + pos)
    /*
     * tt2d3 = t if =
     */ if (u == 1) {
        tt2d3 = t;
    }
    // =? u-2
    t = *(uint64_t *) (((void *) basep) + 160 + pos); // t = *(uint64 *) (basep + 160 + pos)
    /*
     * tt2d0 = t if =
     */ if (u == 2) {
        tt2d0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 168 + pos); // t = *(uint64 *) (basep + 168 + pos)
    /*
     * tt2d1 = t if =
     */ if (u == 2) {
        tt2d1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 176 + pos); // t = *(uint64 *) (basep + 176 + pos)
    /*
     * tt2d2 = t if =
     */ if (u == 2) {
        tt2d2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 184 + pos); // t = *(uint64 *) (basep + 184 + pos)
    /*
     * tt2d3 = t if =
     */ if (u == 2) {
        tt2d3 = t;
    }
    // =? u-3
    t = *(uint64_t *) (((void *) basep) + 256 + pos); // t = *(uint64 *) (basep + 256 + pos)
    /*
     * tt2d0 = t if =
     */ if (u == 3) {
        tt2d0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 264 + pos); // t = *(uint64 *) (basep + 264 + pos)
    /*
     * tt2d1 = t if =
     */ if (u == 3) {
        tt2d1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 272 + pos); // t = *(uint64 *) (basep + 272 + pos)
    /*
     * tt2d2 = t if =
     */ if (u == 3) {
        tt2d2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 280 + pos); // t = *(uint64 *) (basep + 280 + pos)
    /*
     * tt2d3 = t if =
     */ if (u == 3) {
        tt2d3 = t;
    }
    // =? u-4
    t = *(uint64_t *) (((void *) basep) + 352 + pos); // t = *(uint64 *) (basep + 352 + pos)
    /*
     * tt2d0 = t if =
     */ if (u == 4) {
        tt2d0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 360 + pos); // t = *(uint64 *) (basep + 360 + pos)
    /*
     * tt2d1 = t if =
     */ if (u == 4) {
        tt2d1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 368 + pos); // t = *(uint64 *) (basep + 368 + pos)
    /*
     * tt2d2 = t if =
     */ if (u == 4) {
        tt2d2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 376 + pos); // t = *(uint64 *) (basep + 376 + pos)
    /*
     * tt2d3 = t if =
     */ if (u == 4) {
        tt2d3 = t;
    }
    // =? u-5
    t = *(uint64_t *) (((void *) basep) + 448 + pos); // t = *(uint64 *) (basep + 448 + pos)
    /*
     * tt2d0 = t if =
     */ if (u == 5) {
        tt2d0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 456 + pos); // t = *(uint64 *) (basep + 456 + pos)
    /*
     * tt2d1 = t if =
     */ if (u == 5) {
        tt2d1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 464 + pos); // t = *(uint64 *) (basep + 464 + pos)
    /*
     * tt2d2 = t if =
     */ if (u == 5) {
        tt2d2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 472 + pos); // t = *(uint64 *) (basep + 472 + pos)
    /*
     * tt2d3 = t if =
     */ if (u == 5) {
        tt2d3 = t;
    }
    // =? u-6
    t = *(uint64_t *) (((void *) basep) + 544 + pos); // t = *(uint64 *) (basep + 544 + pos)
    /*
     * tt2d0 = t if =
     */ if (u == 6) {
        tt2d0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 552 + pos); // t = *(uint64 *) (basep + 552 + pos)
    /*
     * tt2d1 = t if =
     */ if (u == 6) {
        tt2d1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 560 + pos); // t = *(uint64 *) (basep + 560 + pos)
    /*
     * tt2d2 = t if =
     */ if (u == 6) {
        tt2d2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 568 + pos); // t = *(uint64 *) (basep + 568 + pos)
    /*
     * tt2d3 = t if =
     */ if (u == 6) {
        tt2d3 = t;
    }
    // =? u-7
    t = *(uint64_t *) (((void *) basep) + 640 + pos); // t = *(uint64 *) (basep + 640 + pos)
    /*
     * tt2d0 = t if =
     */ if (u == 7) {
        tt2d0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 648 + pos); // t = *(uint64 *) (basep + 648 + pos)
    /*
     * tt2d1 = t if =
     */ if (u == 7) {
        tt2d1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 656 + pos); // t = *(uint64 *) (basep + 656 + pos)
    /*
     * tt2d2 = t if =
     */ if (u == 7) {
        tt2d2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 664 + pos); // t = *(uint64 *) (basep + 664 + pos)
    /*
     * tt2d3 = t if =
     */ if (u == 7) {
        tt2d3 = t;
    }
    // =? u-8
    t = *(uint64_t *) (((void *) basep) + 736 + pos); // t = *(uint64 *) (basep + 736 + pos)
    /*
     * tt2d0 = t if =
     */ if (u == 8) {
        tt2d0 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 744 + pos); // t = *(uint64 *) (basep + 744 + pos)
    /*
     * tt2d1 = t if =
     */ if (u == 8) {
        tt2d1 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 752 + pos); // t = *(uint64 *) (basep + 752 + pos)
    /*
     * tt2d2 = t if =
     */ if (u == 8) {
        tt2d2 = t;
    }
    t = *(uint64_t *) (((void *) basep) + 760 + pos); // t = *(uint64 *) (basep + 760 + pos)
    /*
     * tt2d3 = t if =
     */ if (u == 8) {
        tt2d3 = t;
    }
    tt0 = 0;                    // tt0 = 0
    tt1 = 0;                    // tt1 = 0
    tt2 = 0;                    // tt2 = 0
    tt3 = 0;                    // tt3 = 0
    sub64_and_set_carry(tt0, tt0, tt2d0); // cf? tt0 -= tt2d0
    sub64_with_carry_and_set_carry(tt1, tt1, tt2d1); // cf? tt1 -= tt2d1 - cf; 
    sub64_with_carry_and_set_carry(tt2, tt2, tt2d2); // cf? tt2 -= tt2d2 - cf; 
    sub64_with_carry_and_set_carry(tt3, tt3, tt2d3); // cf? tt3 -= tt2d3 - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(tt0, tt0, subt1); // cf? tt0 -= subt1
    sub64_with_carry_and_set_carry(tt1, tt1, subt0); // cf? tt1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(tt2, tt2, subt0); // cf? tt2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(tt3, tt3, subt0); // cf? tt3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    tt0 -= subt0;               // tt0 -= subt0
    // signed<? b - 0
    /*
     * tt2d0 = tt0 if signed<
     */ if (((int64_t) b) < ((int64_t) 0)) {
        tt2d0 = tt0;
    }
    /*
     * tt2d1 = tt1 if signed<
     */
    if (((int64_t) b) < ((int64_t) 0)) {
        tt2d1 = tt1;
    }
    /*
     * tt2d2 = tt2 if signed<
     */
    if (((int64_t) b) < ((int64_t) 0)) {
        tt2d2 = tt2;
    }
    /*
     * tt2d3 = tt3 if signed<
     */
    if (((int64_t) b) < ((int64_t) 0)) {
        tt2d3 = tt3;
    }
    tp[8] = tt2d0;              // *(uint64 *) (tp + 64) = tt2d0
    tp[9] = tt2d1;              // *(uint64 *) (tp + 72) = tt2d1
    tp[10] = tt2d2;             // *(uint64 *) (tp + 80) = tt2d2
    tp[11] = tt2d3;             // *(uint64 *) (tp + 88) = tt2d3
    return;
}
