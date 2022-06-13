package top.niunaijun.blackbox.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes4.dex */
public class Md5Utils {
    private static final char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String md5(String str) {
        if (str == null) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes("utf-8"));
            return byteArrayToHex(instance.digest());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String md5(File file) {
        try {
            if (!file.isFile()) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            String md5 = md5(fileInputStream);
            fileInputStream.close();
            return md5;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String md5(InputStream inputStream) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    instance.update(bArr, 0, read);
                } else {
                    inputStream.close();
                    return byteArrayToHex(instance.digest());
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private static String byteArrayToHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = hexDigits;
            cArr[i] = cArr2[(b >>> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }
}
