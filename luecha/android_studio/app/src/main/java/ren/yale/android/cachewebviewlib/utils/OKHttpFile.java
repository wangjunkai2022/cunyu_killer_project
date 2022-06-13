package ren.yale.android.cachewebviewlib.utils;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStream;
import okio.ByteString;
import okio.GzipSource;
import okio.Okio;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class OKHttpFile {
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_METADATA = 0;

    public static InputStream getCacheFile(File file, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String hex = ByteString.encodeUtf8(str.toString()).md5().hex();
        File file2 = new File(file.getAbsolutePath(), hex + ".0");
        String absolutePath = file.getAbsolutePath();
        StringBuilder sb = new StringBuilder();
        sb.append(hex);
        sb.append(".");
        boolean z = true;
        sb.append(1);
        File file3 = new File(absolutePath, sb.toString());
        if (file2.exists() && file3.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file2), 1024);
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        if (readLine.contains("Content-Encoding") && readLine.contains("gzip")) {
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                FileInputStream fileInputStream = new FileInputStream(file3);
                if (!z) {
                    return fileInputStream;
                }
                return Okio.buffer(new GzipSource(Okio.source(file3))).inputStream();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
