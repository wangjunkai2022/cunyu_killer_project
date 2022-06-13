package com.example.super_network_kit;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public class Util {
    public static String MD5(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static byte[] compress(byte[] bArr) {
        Deflater deflater;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            try {
                deflater = new Deflater();
                deflater.reset();
                deflater.setInput(bArr);
                deflater.finish();
                byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
                try {
                    byte[] bArr2 = new byte[1024];
                    while (!deflater.finished()) {
                        byteArrayOutputStream.write(bArr2, 0, deflater.deflate(bArr2));
                    }
                    bArr = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    byteArrayOutputStream.close();
                }
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                throw th;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        deflater.end();
        return bArr;
    }

    public static void compress(byte[] bArr, OutputStream outputStream) {
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(outputStream);
        try {
            deflaterOutputStream.write(bArr, 0, bArr.length);
            deflaterOutputStream.finish();
            deflaterOutputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static byte[] decompress(byte[] bArr) {
        Inflater inflater;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            try {
                inflater = new Inflater();
                inflater.reset();
                inflater.setInput(bArr);
                byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
                try {
                    byte[] bArr2 = new byte[1024];
                    while (!inflater.finished()) {
                        byteArrayOutputStream.write(bArr2, 0, inflater.inflate(bArr2));
                    }
                    bArr = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    byteArrayOutputStream.close();
                }
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                throw th;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        inflater.end();
        return bArr;
    }

    public static byte[] decompress(InputStream inputStream) {
        InflaterInputStream inflaterInputStream = new InflaterInputStream(inputStream);
        int i = 1024;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                i = inflaterInputStream.read(bArr, 0, i);
                if (i <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] encodeToByte(String str) {
        try {
            return Base64.encode(str.getBytes("UTF-8"), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] encodeToByte(byte[] bArr) {
        try {
            return Base64.encode(bArr, 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String encodeToString(byte[] bArr) {
        try {
            return Base64.encodeToString(bArr, 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String encodeToString(String str) {
        try {
            return Base64.encodeToString(str.getBytes("UTF-8"), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String decodeToString(String str) {
        try {
            return new String(Base64.decode(str, 0), "UTF-8");
        } catch (Exception unused) {
            return null;
        }
    }

    public static String decodeToString(byte[] bArr) {
        try {
            return new String(Base64.decode(bArr, 0), "UTF-8");
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] decodeToByte(String str) {
        try {
            return Base64.decode(str, 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] decodeToByte(byte[] bArr) {
        try {
            return Base64.decode(bArr, 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String decrypt(String str, String str2) {
        try {
            byte[] decode = Base64.decode(str, 2);
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
            Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
            instance.init(2, secretKeySpec);
            byte[] doFinal = instance.doFinal(decode);
            if (doFinal != null) {
                return new String(doFinal, Charset.defaultCharset());
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String encrypt(String str, String str2) {
        byte[] bArr;
        try {
            byte[] bytes = str.getBytes();
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
            Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
            instance.init(1, secretKeySpec);
            bArr = instance.doFinal(bytes);
        } catch (Exception e) {
            e.printStackTrace();
            bArr = null;
        }
        if (bArr != null) {
            return Base64.encodeToString(bArr, 2);
        }
        return null;
    }
}
