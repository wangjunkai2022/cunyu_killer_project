package com.netease.mobsec.e;

import android.os.Looper;
import android.util.Base64;
import java.security.MessageDigest;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class j {
    public static int a = 200;
    public static int b = 1001;
    public static int c = 1002;
    public static int d = 1003;
    public static int e = 1004;
    public static String f = "ok";
    public static String g = "pruduct number error";
    public static String h = "init error";
    public static String i = "init context is null,error";

    public static String a() {
        try {
            byte[] bArr = new byte[24];
            byte[] a2 = a(a(System.currentTimeMillis()), a(UUID.randomUUID().getLeastSignificantBits()));
            byte[] bArr2 = new byte[a2.length + "7pNRBg3m2HgFFIuxSjcxnlGvyRGAnrBY".getBytes().length];
            System.arraycopy(a2, 0, bArr2, 0, a2.length);
            System.arraycopy("7pNRBg3m2HgFFIuxSjcxnlGvyRGAnrBY".getBytes(), 0, bArr2, a2.length, "7pNRBg3m2HgFFIuxSjcxnlGvyRGAnrBY".getBytes().length);
            System.arraycopy(b(bArr2), 0, bArr, 0, 8);
            System.arraycopy(a2, 0, bArr, 8, 16);
            return a(bArr);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String a(byte[] bArr) {
        return Base64.encodeToString(bArr, 0).replaceAll("\n", "");
    }

    public static byte[] a(long j) {
        byte[] bArr = new byte[8];
        for (int i2 = 7; i2 >= 0; i2--) {
            bArr[i2] = (byte) ((int) (255 & j));
            j >>= 8;
        }
        return bArr;
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length * 2;
        byte[] bArr3 = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 % 2 == 0) {
                int i3 = i2 / 2;
                bArr3[i2] = (byte) (((bArr[i3] & 128) >>> 0) | ((bArr2[i3] & 16) >>> 4) | ((bArr2[i3] & 32) >>> 3) | ((bArr2[i3] & 64) >>> 2) | ((bArr2[i3] & 128) >>> 1) | ((bArr[i3] & 16) >>> 3) | ((bArr[i3] & 32) >>> 2) | ((bArr[i3] & 64) >>> 1) | bArr3[i2]);
            } else {
                int i4 = i2 / 2;
                bArr3[i2] = (byte) (((bArr[i4] & 8) << 4) | ((bArr2[i4] & 1) << 0) | ((bArr2[i4] & 2) << 1) | ((bArr2[i4] & 4) << 2) | ((bArr2[i4] & 8) << 3) | ((bArr[i4] & 1) << 1) | ((bArr[i4] & 2) << 2) | ((bArr[i4] & 4) << 3) | bArr3[i2]);
            }
        }
        return bArr3;
    }

    public static String b() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    public static byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[0];
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.reset();
            instance.update(bArr);
            return instance.digest();
        } catch (Exception unused) {
            return bArr2;
        }
    }

    public static boolean c() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
