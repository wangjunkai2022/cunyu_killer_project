package ren.yale.android.cachewebviewlib.utils;

import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FileUtil {
    public static void deleteDirs(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            File file = new File(str);
            if (file.exists()) {
                File[] listFiles = file.listFiles();
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        deleteDirs(file2.getAbsolutePath(), z);
                    } else {
                        file2.delete();
                    }
                }
                if (z) {
                    file.delete();
                }
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[512];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                inputStream.close();
                outputStream.close();
                return;
            }
        }
    }
}
