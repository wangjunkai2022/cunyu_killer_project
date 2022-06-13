package com.tencent.liteav.txcvodplayer.hlsencoder;

import android.text.TextUtils;
import android.util.Base64;
import com.tencent.liteav.basic.log.TXCLog;
import java.nio.charset.Charset;
import java.util.Random;

/* loaded from: classes2.dex */
public class TXCHLSEncoder {
    private static final String a = TXCHLSEncoder.class.getName();
    private static final Charset b = Charset.forName("UTF-8");
    private static final char[] c = "0123456789ABCDEF".toCharArray();

    private static native byte[] aesDecrypt(String str, byte[] bArr);

    private static native byte[] aesEncrypt(String str, byte[] bArr);

    private static native String md5(int i, String str, String str2, int i2);

    private static native String rsaEncrypt(String str);

    public static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return rsaEncrypt(str);
        }
        TXCLog.w(a, "encryptKey input exception!");
        return null;
    }

    public static String a() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 32; i++) {
            sb.append(c[new Random().nextInt(c.length)]);
        }
        return sb.toString();
    }

    public static String a(int i, String str, String str2, int i2) {
        if (TextUtils.isEmpty(str)) {
            str = "default";
        }
        if (!TextUtils.isEmpty(str2)) {
            return md5(i, str, str2, i2);
        }
        TXCLog.w(a, "genSecretKey input exception!");
        return null;
    }

    public static String a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return Base64.encodeToString(aesEncrypt(str, str2.getBytes(b)), 2);
        }
        TXCLog.w(a, "encryptWithSecretKey input exception!");
        return null;
    }

    public static String b(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return new String(aesDecrypt(str, Base64.decode(str2, 2)), b);
        }
        TXCLog.w(a, "decryptWithSecretKey input exception!");
        return null;
    }
}
