package top.niunaijun.blackbox.utils;

import android.os.Build;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes3.dex */
public class NativeUtils {
    public static final String TAG = "VirtualM";

    public static void copyNativeLib(File file, File file2) throws Exception {
        System.currentTimeMillis();
        if (!file2.exists()) {
            file2.mkdirs();
        }
        ZipFile zipFile = new ZipFile(file.getAbsolutePath());
        try {
            if (findAndCopyNativeLib(zipFile, Build.CPU_ABI, file2)) {
                zipFile.close();
                return;
            }
            findAndCopyNativeLib(zipFile, "armeabi", file2);
            zipFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (th != null) {
                    try {
                        zipFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                } else {
                    zipFile.close();
                }
                throw th2;
            }
        }
    }

    private static boolean findAndCopyNativeLib(ZipFile zipFile, String str, File file) throws Exception {
        String str2 = "lib/" + str + "/";
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        boolean z = false;
        byte[] bArr = null;
        boolean z2 = false;
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
            String name = zipEntry.getName();
            if (z || name.startsWith("lib/")) {
                if (name.endsWith(".so") && name.startsWith(str2)) {
                    if (bArr == null) {
                        bArr = new byte[8192];
                        z2 = true;
                    }
                    File file2 = new File(file, name.substring(name.lastIndexOf(47) + 1));
                    if (!file2.exists() || file2.length() != zipEntry.getSize()) {
                        copySo(bArr, zipFile.getInputStream(zipEntry), new FileOutputStream(file2));
                    }
                }
                z = true;
            }
        }
        if (!z) {
            return true;
        }
        return z2;
    }

    private static void copySo(byte[] bArr, InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read > 0) {
                bufferedOutputStream.write(bArr, 0, read);
            } else {
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                outputStream.close();
                bufferedInputStream.close();
                inputStream.close();
                return;
            }
        }
    }
}
