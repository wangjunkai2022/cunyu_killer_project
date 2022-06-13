package io.flutter.plugins.deviceinfo;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class BASE64 {
    private static char[] alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".toCharArray();
    private static byte[] codes = new byte[256];

    static {
        for (int i = 0; i < 256; i++) {
            codes[i] = -1;
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            codes[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            codes[i3] = (byte) ((i3 + 26) - 97);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            codes[i4] = (byte) ((i4 + 52) - 48);
        }
        byte[] bArr = codes;
        bArr[43] = 62;
        bArr[47] = 63;
    }

    public static char[] encode(byte[] bArr) {
        boolean z;
        char[] cArr = new char[((bArr.length + 2) / 3) * 4];
        int i = 0;
        int i2 = 0;
        while (i < bArr.length) {
            int i3 = (bArr[i] & 255) << 8;
            int i4 = i + 1;
            boolean z2 = true;
            if (i4 < bArr.length) {
                i3 |= bArr[i4] & 255;
                z = true;
            } else {
                z = false;
            }
            int i5 = i3 << 8;
            int i6 = i + 2;
            if (i6 < bArr.length) {
                i5 |= bArr[i6] & 255;
            } else {
                z2 = false;
            }
            int i7 = 64;
            cArr[i2 + 3] = alphabet[z2 ? i5 & 63 : 64];
            int i8 = i5 >> 6;
            int i9 = i2 + 2;
            char[] cArr2 = alphabet;
            if (z) {
                i7 = i8 & 63;
            }
            cArr[i9] = cArr2[i7];
            int i10 = i8 >> 6;
            char[] cArr3 = alphabet;
            cArr[i2 + 1] = cArr3[i10 & 63];
            cArr[i2 + 0] = cArr3[(i10 >> 6) & 63];
            i += 3;
            i2 += 4;
        }
        return cArr;
    }

    public static byte[] decode(char[] cArr) {
        int length = ((cArr.length + 3) / 4) * 3;
        if (cArr.length > 0 && cArr[cArr.length - 1] == '=') {
            length--;
        }
        if (cArr.length > 1 && cArr[cArr.length - 2] == '=') {
            length--;
        }
        byte[] bArr = new byte[length];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (char c : cArr) {
            byte b = codes[c & 255];
            if (b >= 0) {
                i3 += 6;
                i2 = (i2 << 6) | b;
                if (i3 >= 8) {
                    i3 -= 8;
                    bArr[i] = (byte) ((i2 >> i3) & 255);
                    i++;
                }
            }
        }
        if (i == bArr.length) {
            return bArr;
        }
        throw new Error("miscalculated data length!");
    }
}
