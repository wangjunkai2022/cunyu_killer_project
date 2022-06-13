package com.tencent.liteav.basic.f;

import java.io.ByteArrayOutputStream;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: RSAUtils.java */
/* loaded from: classes5.dex */
public final class a {
    private static String a = "RSA";

    public static byte[] a(byte[] bArr, PrivateKey privateKey) throws Exception {
        byte[] bArr2;
        Cipher instance = Cipher.getInstance("RSA/None/PKCS1Padding");
        instance.init(2, privateKey);
        int length = bArr.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (true) {
            int i2 = length - i;
            if (i2 > 0) {
                if (i2 >= instance.getBlockSize()) {
                    bArr2 = instance.doFinal(bArr, i, instance.getBlockSize());
                } else {
                    bArr2 = instance.doFinal(bArr, i, i2);
                }
                byteArrayOutputStream.write(bArr2);
                i += instance.getBlockSize();
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            }
        }
    }

    public static PrivateKey a(byte[] bArr) throws NoSuchAlgorithmException, InvalidKeySpecException {
        return KeyFactory.getInstance(a).generatePrivate(new PKCS8EncodedKeySpec(bArr));
    }
}
