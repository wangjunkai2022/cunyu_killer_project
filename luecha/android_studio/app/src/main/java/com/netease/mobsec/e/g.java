package com.netease.mobsec.e;

import com.google.common.base.Ascii;
import java.nio.charset.StandardCharsets;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class g {
    private static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private static int a(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'A';
        if (c < 'A' || c > 'F') {
            c2 = 'a';
            if (c < 'a' || c > 'f') {
                return 0;
            }
        }
        return (c - c2) + 10;
    }

    public static String a(String str) throws Exception {
        if (str == null) {
            return "";
        }
        byte[] bArr = {Ascii.US, 125, -12, 60, 32, 48};
        try {
            byte[] c = c(str);
            byte[] bArr2 = new byte[c.length];
            int i = 0;
            for (int i2 = 0; i2 < c.length; i2++) {
                bArr2[i2] = (byte) (0 - c[i2]);
                i++;
                bArr2[i2] = (byte) (bArr[i % 6] ^ bArr2[i2]);
            }
            return new String(bArr2, StandardCharsets.UTF_8);
        } catch (Exception e) {
            throw new Exception("Configuration decrypt error", e);
        }
    }

    public static String a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            char[] cArr2 = a;
            cArr[i2] = cArr2[(bArr[i] >>> 4) & 15];
            cArr[i2 + 1] = cArr2[bArr[i] & 15];
        }
        return new String(cArr);
    }

    public static String b(String str) throws Exception {
        if (str == null) {
            return "";
        }
        byte[] bArr = {Ascii.US, 125, -12, 60, 32, 48};
        try {
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            byte[] bArr2 = new byte[bytes.length];
            int i = 0;
            for (int i2 = 0; i2 < bytes.length; i2++) {
                i++;
                bArr2[i2] = (byte) (bArr[i % 6] ^ bytes[i2]);
                bArr2[i2] = (byte) (0 - bArr2[i2]);
            }
            return a(bArr2);
        } catch (Exception e) {
            throw new Exception("Configuration encrypt error", e);
        }
    }

    private static byte[] c(String str) {
        int length = str.length();
        byte[] bArr = new byte[(length + 1) / 2];
        int i = 0;
        int i2 = 1;
        if (length % 2 == 1) {
            bArr[0] = (byte) a(str.charAt(0));
            i = 1;
        } else {
            i2 = 0;
        }
        while (i < length) {
            i2++;
            int i3 = i + 1;
            int a2 = a(str.charAt(i)) << 4;
            i = i3 + 1;
            bArr[i2] = (byte) (a2 | a(str.charAt(i3)));
        }
        return bArr;
    }
}
