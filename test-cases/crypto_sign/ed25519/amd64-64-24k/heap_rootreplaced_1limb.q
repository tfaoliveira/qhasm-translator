int64 hp
int64 hlen
int64 sp
int64 pp
input hp
input hlen
input sp
int64 prc
int64 plc
int64 pc
int64 d
int64 spp
int64 sprc
int64 spc
int64 c0
int64 c1
int64 c2
int64 c3
int64 t0
int64 t1
int64 t2
int64 t3
int64 p0
int64 p1
int64 p2
int64 p3
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

enter crypto_sign_ed25519_amd64_64_heap_rootreplaced_1limb

  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7

  pp = 0
  siftdownloop:
    prc = pp
    prc *= 2
    pc = prc
    prc += 2
    pc += 1
                      unsigned>? hlen - prc
  goto siftuploop if !unsigned>
    sprc = *(uint64 *)(hp + prc * 8)
    sprc <<= 5
    sprc += sp
    spc = *(uint64 *)(hp + pc * 8)
    spc <<= 5
    spc += sp
    c0 = *(uint64 *)(spc +  0)
    carry? c0 -= *(uint64 *)(sprc +  0)
    pc = prc if carry
    spc = sprc if carry
    spc -= sp
    (uint64) spc >>= 5
    spp = *(uint64 *)(hp + pp * 8)
    *(uint64 *)(hp + pp * 8) = spc
    *(uint64 *)(hp + pc * 8) = spp
    pp = pc
  goto siftdownloop

  siftuploop:
    pc = pp
    pp -= 1
    (uint64) pp >>= 1
               unsigned>? pc - 0 
  goto end if !unsigned>
    spp = *(uint64 *)(hp + pp * 8)
    spc = *(uint64 *)(hp + pc * 8)
    spp <<= 5
    spc <<= 5
    spc += sp
    spp += sp
    c0 = *(uint64 *)(spc +  0)
                carry? c0 -= *(uint64 *)(spp +  0)
    goto end if carry
    spc -= sp
    (uint64) spc >>= 5
    spp -= sp
    (uint64) spp >>= 5
    *(uint64 *)(hp + pp * 8) = spc
    *(uint64 *)(hp + pc * 8) = spp
  goto siftuploop
  end:

  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack

leave
