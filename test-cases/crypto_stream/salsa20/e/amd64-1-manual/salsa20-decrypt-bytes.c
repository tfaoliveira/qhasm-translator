#include "qhasm-translator.h"

void
ECRYPT_decrypt_bytes(uint64_t * arg1, uint8_t * arg2, uint8_t * arg3, uint64_t arg4)
{
    uint64_t        A;
    uint64_t        B;
    uint64_t        C;
    uint64_t        D;
    uint64_t        E;
    uint64_t        R;
    uint64_t        S;
    uint64_t        T;
    uint64_t        U;
    uint64_t        V;
    uint64_t        a;
    uint64_t        b;
    uint64_t        bytes;
    uint64_t        bytes_backup;
    uint64_t        c;
    uint64_t        d;
    uint64_t        e;
    uint64_t        i;
    uint64_t        in0;
    uint64_t        in10;
    uint64_t        in12;
    uint64_t        in14;
    uint64_t        in2;
    uint64_t        in4;
    uint64_t        in6;
    uint64_t        in8;
    uint64_t        j0;
    uint64_t        j10;
    uint64_t        j12;
    uint64_t        j14;
    uint64_t        j2;
    uint64_t        j4;
    uint64_t        j6;
    uint64_t        j8;
    uint8_t        *m;
    uint8_t        *m_backup;
    uint8_t        *out;
    uint64_t        out0;
    uint64_t        out10;
    uint64_t        out12;
    uint64_t        out14;
    uint64_t        out2;
    uint64_t        out4;
    uint64_t        out6;
    uint64_t        out8;
    uint8_t        *out_backup;
    uint64_t        r;
    uint64_t        s;
    uint64_t        t;
    uint64_t        u;
    uint64_t        v;
    uint64_t       *x;
    uint64_t        x0;
    uint64_t        x1;
    uint64_t        x10;
    uint64_t        x11;
    uint64_t        x12;
    uint64_t        x13;
    uint64_t        x14;
    uint64_t        x15;
    uint64_t        x2;
    uint64_t        x3;
    uint64_t        x4;
    uint64_t        x5;
    uint64_t        x6;
    uint64_t        x7;
    uint64_t        x8;
    uint64_t        x9;
    uint64_t       *x_backup;

    x = arg1;                   // x = arg1
    m = arg2;                   // m = arg2
    out = arg3;                 // out = arg3
    bytes = arg4;               // bytes = arg4
    if (bytes > 0) {
        in0 = x[0];             // in0 = *(uint64 *) (x + 0)
        in2 = x[1];             // in2 = *(uint64 *) (x + 8)
        in4 = x[2];             // in4 = *(uint64 *) (x + 16)
        in6 = x[3];             // in6 = *(uint64 *) (x + 24)
        in8 = x[4];             // in8 = *(uint64 *) (x + 32)
        in10 = x[5];            // in10 = *(uint64 *) (x + 40)
        in12 = x[6];            // in12 = *(uint64 *) (x + 48)
        in14 = x[7];            // in14 = *(uint64 *) (x + 56)
        j0 = in0;               // j0 = in0
        j2 = in2;               // j2 = in2
        j4 = in4;               // j4 = in4
        j6 = in6;               // j6 = in6
        j8 = in8;               // j8 = in8
        j10 = in10;             // j10 = in10
        j12 = in12;             // j12 = in12
        j14 = in14;             // j14 = in14
        x_backup = x;           // x_backup = x
        do {
            out_backup = out;   // out_backup = out
            m_backup = m;       // m_backup = m
            bytes_backup = bytes; // bytes_backup = bytes
            in0 = j0;           // in0 = j0
            in2 = j2;           // in2 = j2
            in4 = j4;           // in4 = j4
            in6 = j6;           // in6 = j6
            in8 = j8;           // in8 = j8
            in10 = j10;         // in10 = j10
            in12 = j12;         // in12 = j12
            in14 = j14;         // in14 = j14
            x0 = in0;           // x0 = in0
            x2 = in2;           // x2 = in2
            x4 = in4;           // x4 = in4
            x6 = in6;           // x6 = in6
            x8 = in8;           // x8 = in8
            x10 = in10;         // x10 = in10
            x12 = in12;         // x12 = in12
            x14 = in14;         // x14 = in14
            in0 >>= 32;         // (uint64) in0 >>= 32
            in2 >>= 32;         // (uint64) in2 >>= 32
            in4 >>= 32;         // (uint64) in4 >>= 32
            in6 >>= 32;         // (uint64) in6 >>= 32
            in8 >>= 32;         // (uint64) in8 >>= 32
            in10 >>= 32;        // (uint64) in10 >>= 32
            in12 >>= 32;        // (uint64) in12 >>= 32
            in14 >>= 32;        // (uint64) in14 >>= 32
            x1 = in0;           // x1 = in0
            x3 = in2;           // x3 = in2
            x5 = in4;           // x5 = in4
            x7 = in6;           // x7 = in6
            x9 = in8;           // x9 = in8
            x11 = in10;         // x11 = in10
            x13 = in12;         // x13 = in12
            x15 = in14;         // x15 = in14
            i = 20;             // i = 20
            do {
                a = x12;        // a = x12
                b = x0;         // b = x0
                c = x4;         // c = x4
                e = a + b;      // e = a + b
                rotate64_32l(e, e, 7); // (uint32) e <<<= 7
                c ^= e;         // c ^= e
                x4 = c;         // x4 = c
                d = x8;         // d = x8
                e = b + c;      // e = b + c
                rotate64_32l(e, e, 9); // (uint32) e <<<= 9
                d ^= e;         // d ^= e
                x8 = d;         // x8 = d
                c += d;         // c += d
                rotate64_32l(c, c, 13); // (uint32) c <<<= 13
                a ^= c;         // a ^= c
                x12 = a;        // x12 = a
                a += d;         // a += d
                rotate64_32l(a, a, 18); // (uint32) a <<<= 18
                b ^= a;         // b ^= a
                x0 = b;         // x0 = b
                r = x1;         // r = x1
                s = x5;         // s = x5
                t = x9;         // t = x9
                v = r + s;      // v = r + s
                rotate64_32l(v, v, 7); // (uint32) v <<<= 7
                t ^= v;         // t ^= v
                x9 = t;         // x9 = t
                u = x13;        // u = x13
                v = s + t;      // v = s + t
                rotate64_32l(v, v, 9); // (uint32) v <<<= 9
                u ^= v;         // u ^= v
                x13 = u;        // x13 = u
                t += u;         // t += u
                rotate64_32l(t, t, 13); // (uint32) t <<<= 13
                r ^= t;         // r ^= t
                x1 = r;         // x1 = r
                r += u;         // r += u
                rotate64_32l(r, r, 18); // (uint32) r <<<= 18
                s ^= r;         // s ^= r
                x5 = s;         // x5 = s
                A = x6;         // A = x6
                B = x10;        // B = x10
                C = x14;        // C = x14
                E = A + B;      // E = A + B
                rotate64_32l(E, E, 7); // (uint32) E <<<= 7
                C ^= E;         // C ^= E
                x14 = C;        // x14 = C
                D = x2;         // D = x2
                E = B + C;      // E = B + C
                rotate64_32l(E, E, 9); // (uint32) E <<<= 9
                D ^= E;         // D ^= E
                x2 = D;         // x2 = D
                C += D;         // C += D
                rotate64_32l(C, C, 13); // (uint32) C <<<= 13
                A ^= C;         // A ^= C
                x6 = A;         // x6 = A
                A += D;         // A += D
                rotate64_32l(A, A, 18); // (uint32) A <<<= 18
                B ^= A;         // B ^= A
                x10 = B;        // x10 = B
                R = x11;        // R = x11
                S = x15;        // S = x15
                T = x3;         // T = x3
                V = R + S;      // V = R + S
                rotate64_32l(V, V, 7); // (uint32) V <<<= 7
                T ^= V;         // T ^= V
                x3 = T;         // x3 = T
                U = x7;         // U = x7
                V = S + T;      // V = S + T
                rotate64_32l(V, V, 9); // (uint32) V <<<= 9
                U ^= V;         // U ^= V
                x7 = U;         // x7 = U
                T += U;         // T += U
                rotate64_32l(T, T, 13); // (uint32) T <<<= 13
                R ^= T;         // R ^= T
                x11 = R;        // x11 = R
                R += U;         // R += U
                rotate64_32l(R, R, 18); // (uint32) R <<<= 18
                S ^= R;         // S ^= R
                x15 = S;        // x15 = S
                a = x3;         // a = x3
                b = x0;         // b = x0
                c = x1;         // c = x1
                e = a + b;      // e = a + b
                rotate64_32l(e, e, 7); // (uint32) e <<<= 7
                c ^= e;         // c ^= e
                x1 = c;         // x1 = c
                d = x2;         // d = x2
                e = b + c;      // e = b + c
                rotate64_32l(e, e, 9); // (uint32) e <<<= 9
                d ^= e;         // d ^= e
                x2 = d;         // x2 = d
                c += d;         // c += d
                rotate64_32l(c, c, 13); // (uint32) c <<<= 13
                a ^= c;         // a ^= c
                x3 = a;         // x3 = a
                a += d;         // a += d
                rotate64_32l(a, a, 18); // (uint32) a <<<= 18
                b ^= a;         // b ^= a
                x0 = b;         // x0 = b
                r = x4;         // r = x4
                s = x5;         // s = x5
                t = x6;         // t = x6
                v = r + s;      // v = r + s
                rotate64_32l(v, v, 7); // (uint32) v <<<= 7
                t ^= v;         // t ^= v
                x6 = t;         // x6 = t
                u = x7;         // u = x7
                v = s + t;      // v = s + t
                rotate64_32l(v, v, 9); // (uint32) v <<<= 9
                u ^= v;         // u ^= v
                x7 = u;         // x7 = u
                t += u;         // t += u
                rotate64_32l(t, t, 13); // (uint32) t <<<= 13
                r ^= t;         // r ^= t
                x4 = r;         // x4 = r
                r += u;         // r += u
                rotate64_32l(r, r, 18); // (uint32) r <<<= 18
                s ^= r;         // s ^= r
                x5 = s;         // x5 = s
                A = x9;         // A = x9
                B = x10;        // B = x10
                C = x11;        // C = x11
                E = A + B;      // E = A + B
                rotate64_32l(E, E, 7); // (uint32) E <<<= 7
                C ^= E;         // C ^= E
                x11 = C;        // x11 = C
                D = x8;         // D = x8
                E = B + C;      // E = B + C
                rotate64_32l(E, E, 9); // (uint32) E <<<= 9
                D ^= E;         // D ^= E
                x8 = D;         // x8 = D
                C += D;         // C += D
                rotate64_32l(C, C, 13); // (uint32) C <<<= 13
                A ^= C;         // A ^= C
                x9 = A;         // x9 = A
                A += D;         // A += D
                rotate64_32l(A, A, 18); // (uint32) A <<<= 18
                B ^= A;         // B ^= A
                x10 = B;        // x10 = B
                R = x14;        // R = x14
                S = x15;        // S = x15
                T = x12;        // T = x12
                V = R + S;      // V = R + S
                rotate64_32l(V, V, 7); // (uint32) V <<<= 7
                T ^= V;         // T ^= V
                x12 = T;        // x12 = T
                U = x13;        // U = x13
                V = S + T;      // V = S + T
                rotate64_32l(V, V, 9); // (uint32) V <<<= 9
                U ^= V;         // U ^= V
                x13 = U;        // x13 = U
                T += U;         // T += U
                rotate64_32l(T, T, 13); // (uint32) T <<<= 13
                R ^= T;         // R ^= T
                x14 = R;        // x14 = R
                R += U;         // R += U
                rotate64_32l(R, R, 18); // (uint32) R <<<= 18
                S ^= R;         // S ^= R
                x15 = S;        // x15 = S
            } while ((i -= 2) > 0);
            out = out_backup;   // out = out_backup
            m = m_backup;       // m = m_backup
            in0 = j0;           // in0 = j0
            out0 = in0;         // out0 = in0
            out0 >>= 32;        // (uint64) out0 >>= 32
            in0 = (in0 + x0) & 0xFFFFFFFF; // (uint32) in0 += x0
            out0 = (out0 + x1) & 0xFFFFFFFF; // (uint32) out0 += x1
            out0 <<= 32;        // out0 <<= 32
            out0 ^= in0;        // out0 ^= in0
            out0 ^= load64_uint8_t(m, 0);
            store64_uint8_t(out, 0, out0); // *(uint64 *) (out + 0) = out0
            in2 = j2;           // in2 = j2
            out2 = in2;         // out2 = in2
            out2 >>= 32;        // (uint64) out2 >>= 32
            in2 = (in2 + x2) & 0xFFFFFFFF; // (uint32) in2 += x2
            out2 = (out2 + x3) & 0xFFFFFFFF; // (uint32) out2 += x3
            out2 <<= 32;        // out2 <<= 32
            out2 ^= in2;        // out2 ^= in2
            out2 ^= load64_uint8_t(m, 8);
            store64_uint8_t(out, 8, out2); // *(uint64 *) (out + 8) = out2
            in4 = j4;           // in4 = j4
            out4 = in4;         // out4 = in4
            out4 >>= 32;        // (uint64) out4 >>= 32
            in4 = (in4 + x4) & 0xFFFFFFFF; // (uint32) in4 += x4
            out4 = (out4 + x5) & 0xFFFFFFFF; // (uint32) out4 += x5
            out4 <<= 32;        // out4 <<= 32
            out4 ^= in4;        // out4 ^= in4
            out4 ^= load64_uint8_t(m, 16);
            store64_uint8_t(out, 16, out4); // *(uint64 *) (out + 16) = out4
            in6 = j6;           // in6 = j6
            out6 = in6;         // out6 = in6
            out6 >>= 32;        // (uint64) out6 >>= 32
            in6 = (in6 + x6) & 0xFFFFFFFF; // (uint32) in6 += x6
            out6 = (out6 + x7) & 0xFFFFFFFF; // (uint32) out6 += x7
            out6 <<= 32;        // out6 <<= 32
            out6 ^= in6;        // out6 ^= in6
            out6 ^= load64_uint8_t(m, 24);
            store64_uint8_t(out, 24, out6); // *(uint64 *) (out + 24) = out6
            in8 = j8;           // in8 = j8
            out8 = in8;         // out8 = in8
            out8 >>= 32;        // (uint64) out8 >>= 32
            in8 = (in8 + x8) & 0xFFFFFFFF; // (uint32) in8 += x8
            out8 = (out8 + x9) & 0xFFFFFFFF; // (uint32) out8 += x9
            out8 <<= 32;        // out8 <<= 32
            out8 ^= in8;        // out8 ^= in8
            out8 ^= load64_uint8_t(m, 32);
            store64_uint8_t(out, 32, out8); // *(uint64 *) (out + 32) = out8
            in10 = j10;         // in10 = j10
            out10 = in10;       // out10 = in10
            out10 >>= 32;       // (uint64) out10 >>= 32
            in10 = (in10 + x10) & 0xFFFFFFFF; // (uint32) in10 += x10
            out10 = (out10 + x11) & 0xFFFFFFFF; // (uint32) out10 += x11
            out10 <<= 32;       // out10 <<= 32
            out10 ^= in10;      // out10 ^= in10
            out10 ^= load64_uint8_t(m, 40);
            store64_uint8_t(out, 40, out10); // *(uint64 *) (out + 40) = out10
            in12 = j12;         // in12 = j12
            out12 = in12;       // out12 = in12
            out12 >>= 32;       // (uint64) out12 >>= 32
            in12 = (in12 + x12) & 0xFFFFFFFF; // (uint32) in12 += x12
            out12 = (out12 + x13) & 0xFFFFFFFF; // (uint32) out12 += x13
            out12 <<= 32;       // out12 <<= 32
            out12 ^= in12;      // out12 ^= in12
            out12 ^= load64_uint8_t(m, 48);
            store64_uint8_t(out, 48, out12); // *(uint64 *) (out + 48) = out12
            in14 = j14;         // in14 = j14
            out14 = in14;       // out14 = in14
            out14 >>= 32;       // (uint64) out14 >>= 32
            in14 = (in14 + x14) & 0xFFFFFFFF; // (uint32) in14 += x14
            out14 = (out14 + x15) & 0xFFFFFFFF; // (uint32) out14 += x15
            out14 <<= 32;       // out14 <<= 32
            out14 ^= in14;      // out14 ^= in14
            out14 ^= load64_uint8_t(m, 56);
            store64_uint8_t(out, 56, out14); // *(uint64 *) (out + 56) = out14
            bytes = bytes_backup; // bytes = bytes_backup
            in8 = j8;           // in8 = j8
            in8 += 1;           // in8 += 1
            j8 = in8;           // j8 = in8
            bytes -= 64;        // bytes -= 64
            out += 64;          // out += 64
            m += 64;            // m += 64
        } while (bytes > 0);
        x = x_backup;           // x = x_backup
        in8 = j8;               // in8 = j8
        x[4] = in8;             // *(uint64 *) (x + 32) = in8
    }

    return;
}
