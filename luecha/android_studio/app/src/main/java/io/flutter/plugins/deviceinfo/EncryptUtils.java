package io.flutter.plugins.deviceinfo;

import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class EncryptUtils {
    public static String encryptDES(String str, String str2) throws Exception {
        Cipher instance = Cipher.getInstance("DES/CBC/PKCS5Padding");
        instance.init(1, SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(str2.getBytes("UTF-8"))), new IvParameterSpec(str2.getBytes()));
        return new String(BASE64.encode(instance.doFinal(str.getBytes("UTF-8"))));
    }

    public static String decryptDES(String str, String str2) throws Exception {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(str2.getBytes());
        SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "DES");
        Cipher instance = Cipher.getInstance("DES/CBC/PKCS5Padding");
        instance.init(2, secretKeySpec, ivParameterSpec);
        return new String(instance.doFinal(BASE64.decode(str.toCharArray())));
    }
}
