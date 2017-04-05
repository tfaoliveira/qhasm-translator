int64 rp
input rp
int64 r0
int64 r1
int64 r2
int64 r3
int64 r4
int64 t
int64 loop
int64 two51minus1
int64 two51minus19
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
enter crypto_sign_ed25519_amd64_51_30k_batch_fe25519_freeze
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
r0 = *(uint64 *) (rp + 0)
r1 = *(uint64 *) (rp + 8)
r2 = *(uint64 *) (rp + 16)
r3 = *(uint64 *) (rp + 24)
r4 = *(uint64 *) (rp + 32)
two51minus1 = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
two51minus19 = two51minus1
two51minus19 -= 18
loop = 3
reduceloop:
  t = r0
  (uint64) t >>= 51
  r0 &= two51minus1
  r1 += t
  t = r1
  (uint64) t >>= 51
  r1 &= two51minus1
  r2 += t
  t = r2
  (uint64) t >>= 51
  r2 &= two51minus1
  r3 += t
  t = r3
  (uint64) t >>= 51
  r3 &= two51minus1
  r4 += t
  t = r4
  (uint64) t >>= 51
  r4 &= two51minus1
  t *= 19
  r0 += t
                   unsigned>? loop -= 1
goto reduceloop if unsigned>
t = 1
            signed<? r0 - two51minus19
t = loop if signed<
             =? r1 - two51minus1
t = loop if !=
             =? r2 - two51minus1
t = loop if !=
             =? r3 - two51minus1
t = loop if !=
             =? r4 - two51minus1
t = loop if !=
t = -t
two51minus1 &= t
two51minus19 &= t
r0 -= two51minus19
r1 -= two51minus1
r2 -= two51minus1
r3 -= two51minus1
r4 -= two51minus1
*(uint64 *)(rp + 0) = r0
*(uint64 *)(rp + 8) = r1
*(uint64 *)(rp + 16) = r2
*(uint64 *)(rp + 24) = r3
*(uint64 *)(rp + 32) = r4
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
