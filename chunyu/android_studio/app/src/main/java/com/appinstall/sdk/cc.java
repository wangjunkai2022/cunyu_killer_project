package com.appinstall.sdk;

import java.util.Arrays;
import org.apache.commons.io.IOUtils;

/* loaded from: classes4.dex */
public class cc {

    /* loaded from: classes4.dex */
    public static class a {
        private final byte[] d;
        private final int e;
        private final boolean f;
        private final boolean g;
        private static final char[] h = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', IOUtils.DIR_SEPARATOR_UNIX};
        private static final char[] i = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};
        private static final byte[] j = {13, 10};
        static final a a = new a(false, null, -1, true);
        static final a b = new a(true, null, -1, true);
        static final a c = new a(false, j, 76, true);

        private a(boolean z, byte[] bArr, int i2, boolean z2) {
            this.f = z;
            this.d = bArr;
            this.e = i2;
            this.g = z2;
        }

        private final int a(int i2) {
            int i3;
            if (this.g) {
                i3 = ((i2 + 2) / 3) * 4;
            } else {
                int i4 = i2 % 3;
                i3 = ((i2 / 3) * 4) + (i4 == 0 ? 0 : i4 + 1);
            }
            int i5 = this.e;
            return i5 > 0 ? i3 + (((i3 - 1) / i5) * this.d.length) : i3;
        }

        private int a(byte[] bArr, int i2, int i3, byte[] bArr2) {
            char[] cArr = this.f ? i : h;
            int i4 = ((i3 - i2) / 3) * 3;
            int i5 = i2 + i4;
            int i6 = this.e;
            if (i6 > 0 && i4 > (i6 / 4) * 3) {
                i4 = (i6 / 4) * 3;
            }
            int i7 = 0;
            while (i2 < i5) {
                int min = Math.min(i2 + i4, i5);
                int i8 = i2;
                int i9 = i7;
                while (i8 < min) {
                    int i10 = i8 + 1;
                    int i11 = i10 + 1;
                    int i12 = ((bArr[i8] & 255) << 16) | ((bArr[i10] & 255) << 8);
                    i8 = i11 + 1;
                    int i13 = i12 | (bArr[i11] & 255);
                    int i14 = i9 + 1;
                    bArr2[i9] = (byte) cArr[(i13 >>> 18) & 63];
                    int i15 = i14 + 1;
                    bArr2[i14] = (byte) cArr[(i13 >>> 12) & 63];
                    int i16 = i15 + 1;
                    bArr2[i15] = (byte) cArr[(i13 >>> 6) & 63];
                    i9 = i16 + 1;
                    bArr2[i16] = (byte) cArr[i13 & 63];
                }
                int i17 = ((min - i2) / 3) * 4;
                i7 += i17;
                if (i17 == this.e && min < i3) {
                    int i18 = i7;
                    for (byte b2 : this.d) {
                        i18++;
                        bArr2[i18] = b2;
                    }
                    i7 = i18;
                }
                i2 = min;
            }
            if (i2 >= i3) {
                return i7;
            }
            int i19 = i2 + 1;
            int i20 = bArr[i2] & 255;
            int i21 = i7 + 1;
            bArr2[i7] = (byte) cArr[i20 >> 2];
            if (i19 == i3) {
                int i22 = i21 + 1;
                bArr2[i21] = (byte) cArr[(i20 << 4) & 63];
                if (!this.g) {
                    return i22;
                }
                int i23 = i22 + 1;
                bArr2[i22] = 61;
                int i24 = i23 + 1;
                bArr2[i23] = 61;
                return i24;
            }
            int i25 = bArr[i19] & 255;
            int i26 = i21 + 1;
            bArr2[i21] = (byte) cArr[((i20 << 4) & 63) | (i25 >> 4)];
            int i27 = i26 + 1;
            bArr2[i26] = (byte) cArr[(i25 << 2) & 63];
            if (!this.g) {
                return i27;
            }
            int i28 = i27 + 1;
            bArr2[i27] = 61;
            return i28;
        }

        public a a() {
            return !this.g ? this : new a(this.f, this.d, this.e, false);
        }

        public byte[] a(byte[] bArr) {
            byte[] bArr2 = new byte[a(bArr.length)];
            int a2 = a(bArr, 0, bArr.length, bArr2);
            return a2 != bArr2.length ? Arrays.copyOf(bArr2, a2) : bArr2;
        }

        public String b(byte[] bArr) {
            byte[] a2 = a(bArr);
            return new String(a2, 0, 0, a2.length);
        }
    }

    public static a a() {
        return a.b;
    }
}
