package io.flutter.plugins.imagepicker;

import android.content.Context;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes2.dex */
class FileUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String getPathFromUri(android.content.Context r5, android.net.Uri r6) {
        /*
            r4 = this;
            r0 = 0
            r1 = 0
            java.lang.String r2 = getImageExtension(r5, r6)     // Catch: IOException -> 0x0049, all -> 0x003c
            android.content.ContentResolver r3 = r5.getContentResolver()     // Catch: IOException -> 0x0049, all -> 0x003c
            java.io.InputStream r6 = r3.openInputStream(r6)     // Catch: IOException -> 0x0049, all -> 0x003c
            java.lang.String r3 = "image_picker"
            java.io.File r5 = r5.getCacheDir()     // Catch: IOException -> 0x0039, all -> 0x0037
            java.io.File r5 = java.io.File.createTempFile(r3, r2, r5)     // Catch: IOException -> 0x0039, all -> 0x0037
            r5.deleteOnExit()     // Catch: IOException -> 0x0035, all -> 0x0037
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: IOException -> 0x0035, all -> 0x0037
            r2.<init>(r5)     // Catch: IOException -> 0x0035, all -> 0x0037
            if (r6 == 0) goto L_0x002a
            copy(r6, r2)     // Catch: IOException -> 0x004c, all -> 0x0027
            r3 = 1
            goto L_0x002b
        L_0x0027:
            r5 = move-exception
            r1 = r2
            goto L_0x003e
        L_0x002a:
            r3 = r0
        L_0x002b:
            if (r6 == 0) goto L_0x0030
            r6.close()     // Catch: IOException -> 0x0030
        L_0x0030:
            r2.close()     // Catch: IOException -> 0x0056
            r0 = r3
            goto L_0x0056
        L_0x0035:
            r2 = r1
            goto L_0x004c
        L_0x0037:
            r5 = move-exception
            goto L_0x003e
        L_0x0039:
            r5 = r1
            r2 = r5
            goto L_0x004c
        L_0x003c:
            r5 = move-exception
            r6 = r1
        L_0x003e:
            if (r6 == 0) goto L_0x0043
            r6.close()     // Catch: IOException -> 0x0043
        L_0x0043:
            if (r1 == 0) goto L_0x0048
            r1.close()     // Catch: IOException -> 0x0048
        L_0x0048:
            throw r5
        L_0x0049:
            r5 = r1
            r6 = r5
            r2 = r6
        L_0x004c:
            if (r6 == 0) goto L_0x0051
            r6.close()     // Catch: IOException -> 0x0051
        L_0x0051:
            if (r2 == 0) goto L_0x0056
            r2.close()     // Catch: IOException -> 0x0056
        L_0x0056:
            if (r0 == 0) goto L_0x005c
            java.lang.String r1 = r5.getPath()
        L_0x005c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.imagepicker.FileUtils.getPathFromUri(android.content.Context, android.net.Uri):java.lang.String");
    }

    private static String getImageExtension(Context context, Uri uri) {
        String str;
        try {
            uri.getPath();
            str = uri.getScheme().equals("content") ? MimeTypeMap.getSingleton().getExtensionFromMimeType(context.getContentResolver().getType(uri)) : MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(new File(uri.getPath())).toString());
        } catch (Exception unused) {
            str = null;
        }
        if (str == null || str.isEmpty()) {
            str = "jpg";
        }
        return "." + str;
    }

    private static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                outputStream.flush();
                return;
            }
        }
    }
}
