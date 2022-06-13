package top.niunaijun.blackbox.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.Adler32;

/* loaded from: classes3.dex */
public class DexUtils {
    public static void fixDex(File file) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        Throwable th;
        if (file != null) {
            File file2 = new File(file.getAbsolutePath() + "_fix.dex");
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        byte[] bArr = new byte[fileInputStream.available()];
                        if (fileInputStream.read(bArr) > 0) {
                            fixFileSizeHeader(bArr);
                            calcSignature(bArr);
                            calcChecksum(bArr);
                        }
                        fileOutputStream.write(bArr);
                        fileOutputStream.flush();
                        CloseUtils.close(fileInputStream, fileOutputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            th.printStackTrace();
                            CloseUtils.close(fileInputStream, fileOutputStream);
                            FileUtils.deleteDir(file);
                            FileUtils.renameTo(file2, file);
                            FileUtils.deleteDir(file2);
                        } catch (Throwable th3) {
                            CloseUtils.close(fileInputStream, fileOutputStream);
                            FileUtils.deleteDir(file);
                            FileUtils.renameTo(file2, file);
                            FileUtils.deleteDir(file2);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                }
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = null;
                fileInputStream = null;
            }
            FileUtils.deleteDir(file);
            FileUtils.renameTo(file2, file);
            FileUtils.deleteDir(file2);
        }
    }

    private static void calcChecksum(byte[] bArr) {
        Adler32 adler32 = new Adler32();
        adler32.update(bArr, 12, bArr.length - 12);
        int value = (int) adler32.getValue();
        bArr[8] = (byte) value;
        bArr[9] = (byte) (value >> 8);
        bArr[10] = (byte) (value >> 16);
        bArr[11] = (byte) (value >> 24);
    }

    private static void calcSignature(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(bArr, 32, bArr.length - 32);
            try {
                int digest = instance.digest(bArr, 12, 20);
                if (digest != 20) {
                    throw new RuntimeException("unexpected digest write: " + digest + " bytes");
                }
            } catch (DigestException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void fixFileSizeHeader(byte[] bArr) {
        byte[] intToByte = intToByte(bArr.length);
        byte[] bArr2 = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr2[i] = intToByte[(intToByte.length - 1) - i];
        }
        System.arraycopy(bArr2, 0, bArr, 32, 4);
    }

    private static byte[] intToByte(int i) {
        byte[] bArr = new byte[4];
        for (int i2 = 3; i2 >= 0; i2--) {
            bArr[i2] = (byte) (i % 256);
            i >>= 8;
        }
        return bArr;
    }
}
