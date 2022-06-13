package ren.yale.android.cachewebviewlib.utils;

import java.security.MessageDigest;

/* loaded from: classes2.dex */
public class MD5Utils {
    public static String getMD5(String str) {
        return getMD5(str, true);
    }

    public static String getMD5(String str, boolean z) {
        try {
            return bytesToHex(MessageDigest.getInstance("MD5").digest(str.getBytes()), z);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String bytesToHex(byte[] bArr, boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            int i = b;
            if (b < 0) {
                i = b + 256;
            }
            if (i < 16) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toHexString(i == 1 ? 1 : 0));
        }
        if (z) {
            return stringBuffer.toString().toUpperCase();
        }
        return stringBuffer.toString().toLowerCase();
    }
}
