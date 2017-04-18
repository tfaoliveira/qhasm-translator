
fn
crypto_scalarmult_curve25519_amd64_51_work_cswap(workp:reg u64[10], swap:reg u64)
{

    reg u64         t0;
    reg u64         t1;
    reg u64         t2;
    reg u64         t3;
    reg u64         t4;
    reg u64         t5;
    reg u64         t6;
    reg u64         t7;
    reg u64         t8;
    reg u64         t9;
    reg u64         w0;
    reg u64         w1;
    reg u64         w10;
    reg u64         w11;
    reg u64         w12;
    reg u64         w13;
    reg u64         w14;
    reg u64         w15;
    reg u64         w16;
    reg u64         w17;
    reg u64         w18;
    reg u64         w19;
    reg u64         w2;
    reg u64         w3;
    reg u64         w4;
    reg u64         w5;
    reg u64         w6;
    reg u64         w7;
    reg u64         w8;
    reg u64         w9;

    // =? swap-1
    w0 = workp[0];
    w10 = workp[10];
    w1 = workp[1];
    w11 = workp[11];
    t0 = w0;
    if (swap == 1) {
        w0 = w10;
    }
    if (swap == 1) {
        w10 = t0;
    }
    t1 = w1;
    if (swap == 1) {
        w1 = w11;
    }
    if (swap == 1) {
        w11 = t1;
    }
    workp[0] = w0;
    workp[10] = w10;
    workp[1] = w1;
    workp[11] = w11;
    w2 = workp[2];
    w12 = workp[12];
    w3 = workp[3];
    w13 = workp[13];
    t2 = w2;
    if (swap == 1) {
        w2 = w12;
    }
    if (swap == 1) {
        w12 = t2;
    }
    t3 = w3;
    if (swap == 1) {
        w3 = w13;
    }
    if (swap == 1) {
        w13 = t3;
    }
    workp[2] = w2;
    workp[12] = w12;
    workp[3] = w3;
    workp[13] = w13;
    w4 = workp[4];
    w14 = workp[14];
    w5 = workp[5];
    w15 = workp[15];
    t4 = w4;
    if (swap == 1) {
        w4 = w14;
    }
    if (swap == 1) {
        w14 = t4;
    }
    t5 = w5;
    if (swap == 1) {
        w5 = w15;
    }
    if (swap == 1) {
        w15 = t5;
    }
    workp[4] = w4;
    workp[14] = w14;
    workp[5] = w5;
    workp[15] = w15;
    w6 = workp[6];
    w16 = workp[16];
    w7 = workp[7];
    w17 = workp[17];
    t6 = w6;
    if (swap == 1) {
        w6 = w16;
    }
    if (swap == 1) {
        w16 = t6;
    }
    t7 = w7;
    if (swap == 1) {
        w7 = w17;
    }
    if (swap == 1) {
        w17 = t7;
    }
    workp[6] = w6;
    workp[16] = w16;
    workp[7] = w7;
    workp[17] = w17;
    w8 = workp[8];
    w18 = workp[18];
    w9 = workp[9];
    w19 = workp[19];
    t8 = w8;
    if (swap == 1) {
        w8 = w18;
    }
    if (swap == 1) {
        w18 = t8;
    }
    t9 = w9;
    if (swap == 1) {
        w9 = w19;
    }
    if (swap == 1) {
        w19 = t9;
    }
    workp[8] = w8;
    workp[18] = w18;
    workp[9] = w9;
    workp[19] = w19;
    return;
}
