int64 tp
int64 pos
int64 b
int64 basep
input tp
input pos
input b
input basep
int64 mask
int64 u
int64 tysubx0
int64 tysubx1
int64 tysubx2
int64 tysubx3
int64 txaddy0
int64 txaddy1
int64 txaddy2
int64 txaddy3
int64 tt2d0
int64 tt2d1
int64 tt2d2
int64 tt2d3
int64 tt0
int64 tt1
int64 tt2
int64 tt3
int64 subt0
int64 subt1
int64 t
stack64 tp_stack
  int64 caller1
  int64 caller2
  int64 caller3
  int64 caller4
  int64 caller5
  int64 caller6
  int64 caller7
  caller caller1
  caller caller2
  caller caller3
  caller caller4
  caller caller5
  caller caller6
  caller caller7
  stack64 caller1_stack
  stack64 caller2_stack
  stack64 caller3_stack
  stack64 caller4_stack
  stack64 caller5_stack
  stack64 caller6_stack
  stack64 caller7_stack
enter crypto_sign_ed25519_amd64_64_choose_t
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
tp_stack = tp
pos *= 768
mask = b
(int64) mask >>= 7
u = b
u += mask
u ^= mask
tysubx0 = 1
tysubx1 = 0
tysubx2 = 0
tysubx3 = 0
txaddy0 = 1
txaddy1 = 0
txaddy2 = 0
txaddy3 = 0
=? u - 1
t = *(uint64 *)(basep + 0 + pos)
tysubx0 = t if =
t = *(uint64 *)(basep + 8 + pos)
tysubx1 = t if =
t = *(uint64 *)(basep + 16 + pos)
tysubx2 = t if =
t = *(uint64 *)(basep + 24 + pos)
tysubx3 = t if =
t = *(uint64 *)(basep + 32 + pos)
txaddy0 = t if =
t = *(uint64 *)(basep + 40 + pos)
txaddy1 = t if =
t = *(uint64 *)(basep + 48 + pos)
txaddy2 = t if =
t = *(uint64 *)(basep + 56 + pos)
txaddy3 = t if =
=? u - 2
t = *(uint64 *)(basep + 96 + pos)
tysubx0 = t if =
t = *(uint64 *)(basep + 104 + pos)
tysubx1 = t if =
t = *(uint64 *)(basep + 112 + pos)
tysubx2 = t if =
t = *(uint64 *)(basep + 120 + pos)
tysubx3 = t if =
t = *(uint64 *)(basep + 128 + pos)
txaddy0 = t if =
t = *(uint64 *)(basep + 136 + pos)
txaddy1 = t if =
t = *(uint64 *)(basep + 144 + pos)
txaddy2 = t if =
t = *(uint64 *)(basep + 152 + pos)
txaddy3 = t if =
=? u - 3
t = *(uint64 *)(basep + 192 + pos)
tysubx0 = t if =
t = *(uint64 *)(basep + 200 + pos)
tysubx1 = t if =
t = *(uint64 *)(basep + 208 + pos)
tysubx2 = t if =
t = *(uint64 *)(basep + 216 + pos)
tysubx3 = t if =
t = *(uint64 *)(basep + 224 + pos)
txaddy0 = t if =
t = *(uint64 *)(basep + 232 + pos)
txaddy1 = t if =
t = *(uint64 *)(basep + 240 + pos)
txaddy2 = t if =
t = *(uint64 *)(basep + 248 + pos)
txaddy3 = t if =
=? u - 4
t = *(uint64 *)(basep + 288 + pos)
tysubx0 = t if =
t = *(uint64 *)(basep + 296 + pos)
tysubx1 = t if =
t = *(uint64 *)(basep + 304 + pos)
tysubx2 = t if =
t = *(uint64 *)(basep + 312 + pos)
tysubx3 = t if =
t = *(uint64 *)(basep + 320 + pos)
txaddy0 = t if =
t = *(uint64 *)(basep + 328 + pos)
txaddy1 = t if =
t = *(uint64 *)(basep + 336 + pos)
txaddy2 = t if =
t = *(uint64 *)(basep + 344 + pos)
txaddy3 = t if =
=? u - 5
t = *(uint64 *)(basep + 384 + pos)
tysubx0 = t if =
t = *(uint64 *)(basep + 392 + pos)
tysubx1 = t if =
t = *(uint64 *)(basep + 400 + pos)
tysubx2 = t if =
t = *(uint64 *)(basep + 408 + pos)
tysubx3 = t if =
t = *(uint64 *)(basep + 416 + pos)
txaddy0 = t if =
t = *(uint64 *)(basep + 424 + pos)
txaddy1 = t if =
t = *(uint64 *)(basep + 432 + pos)
txaddy2 = t if =
t = *(uint64 *)(basep + 440 + pos)
txaddy3 = t if =
=? u - 6
t = *(uint64 *)(basep + 480 + pos)
tysubx0 = t if =
t = *(uint64 *)(basep + 488 + pos)
tysubx1 = t if =
t = *(uint64 *)(basep + 496 + pos)
tysubx2 = t if =
t = *(uint64 *)(basep + 504 + pos)
tysubx3 = t if =
t = *(uint64 *)(basep + 512 + pos)
txaddy0 = t if =
t = *(uint64 *)(basep + 520 + pos)
txaddy1 = t if =
t = *(uint64 *)(basep + 528 + pos)
txaddy2 = t if =
t = *(uint64 *)(basep + 536 + pos)
txaddy3 = t if =
=? u - 7
t = *(uint64 *)(basep + 576 + pos)
tysubx0 = t if =
t = *(uint64 *)(basep + 584 + pos)
tysubx1 = t if =
t = *(uint64 *)(basep + 592 + pos)
tysubx2 = t if =
t = *(uint64 *)(basep + 600 + pos)
tysubx3 = t if =
t = *(uint64 *)(basep + 608 + pos)
txaddy0 = t if =
t = *(uint64 *)(basep + 616 + pos)
txaddy1 = t if =
t = *(uint64 *)(basep + 624 + pos)
txaddy2 = t if =
t = *(uint64 *)(basep + 632 + pos)
txaddy3 = t if =
=? u - 8
t = *(uint64 *)(basep + 672 + pos)
tysubx0 = t if =
t = *(uint64 *)(basep + 680 + pos)
tysubx1 = t if =
t = *(uint64 *)(basep + 688 + pos)
tysubx2 = t if =
t = *(uint64 *)(basep + 696 + pos)
tysubx3 = t if =
t = *(uint64 *)(basep + 704 + pos)
txaddy0 = t if =
t = *(uint64 *)(basep + 712 + pos)
txaddy1 = t if =
t = *(uint64 *)(basep + 720 + pos)
txaddy2 = t if =
t = *(uint64 *)(basep + 728 + pos)
txaddy3 = t if =
signed<? b - 0
t = tysubx0
tysubx0 = txaddy0 if signed<
txaddy0 = t if signed<
t = tysubx1
tysubx1 = txaddy1 if signed<
txaddy1 = t if signed<
t = tysubx2
tysubx2 = txaddy2 if signed<
txaddy2 = t if signed<
t = tysubx3
tysubx3 = txaddy3 if signed<
txaddy3 = t if signed<
tp = tp_stack
*(uint64 *)(tp + 0) = tysubx0
*(uint64 *)(tp + 8) = tysubx1
*(uint64 *)(tp + 16) = tysubx2
*(uint64 *)(tp + 24) = tysubx3
*(uint64 *)(tp + 32) = txaddy0
*(uint64 *)(tp + 40) = txaddy1
*(uint64 *)(tp + 48) = txaddy2
*(uint64 *)(tp + 56) = txaddy3
tt2d0 = 0
tt2d1 = 0
tt2d2 = 0
tt2d3 = 0
=? u - 1
t = *(uint64 *)(basep + 64 + pos)
tt2d0 = t if =
t = *(uint64 *)(basep + 72 + pos)
tt2d1 = t if =
t = *(uint64 *)(basep + 80 + pos)
tt2d2 = t if =
t = *(uint64 *)(basep + 88 + pos)
tt2d3 = t if =
=? u - 2
t = *(uint64 *)(basep + 160 + pos)
tt2d0 = t if =
t = *(uint64 *)(basep + 168 + pos)
tt2d1 = t if =
t = *(uint64 *)(basep + 176 + pos)
tt2d2 = t if =
t = *(uint64 *)(basep + 184 + pos)
tt2d3 = t if =
=? u - 3
t = *(uint64 *)(basep + 256 + pos)
tt2d0 = t if =
t = *(uint64 *)(basep + 264 + pos)
tt2d1 = t if =
t = *(uint64 *)(basep + 272 + pos)
tt2d2 = t if =
t = *(uint64 *)(basep + 280 + pos)
tt2d3 = t if =
=? u - 4
t = *(uint64 *)(basep + 352 + pos)
tt2d0 = t if =
t = *(uint64 *)(basep + 360 + pos)
tt2d1 = t if =
t = *(uint64 *)(basep + 368 + pos)
tt2d2 = t if =
t = *(uint64 *)(basep + 376 + pos)
tt2d3 = t if =
=? u - 5
t = *(uint64 *)(basep + 448 + pos)
tt2d0 = t if =
t = *(uint64 *)(basep + 456 + pos)
tt2d1 = t if =
t = *(uint64 *)(basep + 464 + pos)
tt2d2 = t if =
t = *(uint64 *)(basep + 472 + pos)
tt2d3 = t if =
=? u - 6
t = *(uint64 *)(basep + 544 + pos)
tt2d0 = t if =
t = *(uint64 *)(basep + 552 + pos)
tt2d1 = t if =
t = *(uint64 *)(basep + 560 + pos)
tt2d2 = t if =
t = *(uint64 *)(basep + 568 + pos)
tt2d3 = t if =
=? u - 7
t = *(uint64 *)(basep + 640 + pos)
tt2d0 = t if =
t = *(uint64 *)(basep + 648 + pos)
tt2d1 = t if =
t = *(uint64 *)(basep + 656 + pos)
tt2d2 = t if =
t = *(uint64 *)(basep + 664 + pos)
tt2d3 = t if =
=? u - 8
t = *(uint64 *)(basep + 736 + pos)
tt2d0 = t if =
t = *(uint64 *)(basep + 744 + pos)
tt2d1 = t if =
t = *(uint64 *)(basep + 752 + pos)
tt2d2 = t if =
t = *(uint64 *)(basep + 760 + pos)
tt2d3 = t if =
tt0 = 0
tt1 = 0
tt2 = 0
tt3 = 0
carry? tt0 -= tt2d0
carry? tt1 -= tt2d1 - carry
carry? tt2 -= tt2d2 - carry
carry? tt3 -= tt2d3 - carry
subt0 = 0
subt1 = 38
subt1 = subt0 if !carry
carry? tt0 -= subt1
carry? tt1 -= subt0 - carry
carry? tt2 -= subt0 - carry
carry? tt3 -= subt0 - carry
subt0 = subt1 if carry
tt0 -= subt0
signed<? b - 0
tt2d0 = tt0 if signed<
tt2d1 = tt1 if signed<
tt2d2 = tt2 if signed<
tt2d3 = tt3 if signed<
*(uint64 *)(tp + 64) = tt2d0
*(uint64 *)(tp + 72) = tt2d1
*(uint64 *)(tp + 80) = tt2d2
*(uint64 *)(tp + 88) = tt2d3
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
