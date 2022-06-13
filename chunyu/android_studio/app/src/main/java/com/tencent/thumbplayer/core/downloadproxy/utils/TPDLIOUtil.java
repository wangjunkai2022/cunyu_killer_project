package com.tencent.thumbplayer.core.downloadproxy.utils;

import android.content.Context;
import android.os.Environment;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class TPDLIOUtil {
    private static final String FILE_NAME = "TPDLIOUtil";
    private static final String PROTOCOL_ASSET = "asset";
    private static final String PROTOCOL_FILE = "file";
    private static final String PROTOCOL_HTTP = "http";
    private static final String PROTOCOL_HTTPS = "https";
    private static Pattern PROTOCOL_PATTERN = Pattern.compile("^(\\w+):/{2,3}");
    private static Pattern PATH_PATTERN = Pattern.compile("^(\\w+):/{2,3}(.*)");

    public static boolean isRemoteFile(String str) {
        String protocol = getProtocol(str);
        return protocol.equals("https") || protocol.equals("http");
    }

    public static String getProtocol(String str) {
        if (str != null && str.length() > 0) {
            Matcher matcher = PROTOCOL_PATTERN.matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
        }
        return "file";
    }

    public static InputStream open(Context context, String str) {
        String protocol = getProtocol(str);
        if (protocol.equals("asset")) {
            try {
                return context.getAssets().open(getPath(str));
            } catch (IOException unused) {
                return null;
            }
        } else if (protocol.equals("file")) {
            try {
                return new FileInputStream(getPath(str));
            } catch (Exception unused2) {
                return null;
            }
        } else if (!protocol.equals("http") && !protocol.equals("https")) {
            return null;
        } else {
            try {
                return new URL(str).openStream();
            } catch (Exception unused3) {
                return null;
            }
        }
    }

    public static String getPath(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = PATH_PATTERN.matcher(str);
        return (!matcher.find() || !matcher.group(1).equals("asset")) ? str : matcher.group(2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        if (r6.createNewFile() == false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static boolean write(java.io.File r6, byte[] r7, int r8, int r9) {
        /*
            java.lang.String r0 = "write error:"
            java.lang.String r1 = "tpdlnative"
            java.lang.String r2 = "TPDLIOUtil"
            r3 = 0
            if (r6 == 0) goto L_0x0091
            if (r7 == 0) goto L_0x0091
            int r4 = r7.length
            if (r4 > 0) goto L_0x0010
            goto L_0x0091
        L_0x0010:
            boolean r4 = r6.exists()
            if (r4 != 0) goto L_0x002a
            java.io.File r4 = r6.getParentFile()
            if (r4 == 0) goto L_0x0023
            boolean r4 = r4.mkdirs()
            if (r4 != 0) goto L_0x0023
            return r3
        L_0x0023:
            boolean r4 = r6.createNewFile()     // Catch: IOException -> 0x0029
            if (r4 != 0) goto L_0x002a
        L_0x0029:
            return r3
        L_0x002a:
            r4 = 0
            java.io.FileOutputStream r5 = new java.io.FileOutputStream     // Catch: Exception -> 0x0074, all -> 0x0055
            r5.<init>(r6)     // Catch: Exception -> 0x0074, all -> 0x0055
            r5.write(r7, r8, r9)     // Catch: Exception -> 0x0053, all -> 0x0050
            r6 = 1
            r5.close()     // Catch: IOException -> 0x0038
            goto L_0x004f
        L_0x0038:
            r7 = move-exception
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r0)
            java.lang.String r7 = r7.toString()
            r8.append(r7)
            java.lang.String r7 = r8.toString()
            com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog.e(r2, r3, r1, r7)
        L_0x004f:
            return r6
        L_0x0050:
            r6 = move-exception
            r4 = r5
            goto L_0x0056
        L_0x0053:
            r4 = r5
            goto L_0x0074
        L_0x0055:
            r6 = move-exception
        L_0x0056:
            if (r4 == 0) goto L_0x0073
            r4.close()     // Catch: IOException -> 0x005c
            goto L_0x0073
        L_0x005c:
            r7 = move-exception
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r0)
            java.lang.String r7 = r7.toString()
            r8.append(r7)
            java.lang.String r7 = r8.toString()
            com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog.e(r2, r3, r1, r7)
        L_0x0073:
            throw r6
        L_0x0074:
            if (r4 == 0) goto L_0x0091
            r4.close()     // Catch: IOException -> 0x007a
            goto L_0x0091
        L_0x007a:
            r6 = move-exception
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r0)
            java.lang.String r6 = r6.toString()
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog.e(r2, r3, r1, r6)
        L_0x0091:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.downloadproxy.utils.TPDLIOUtil.write(java.io.File, byte[], int, int):boolean");
    }

    public static int copy(InputStream inputStream, OutputStream outputStream) {
        if (inputStream == null || outputStream == null) {
            return 0;
        }
        byte[] bArr = new byte[1024];
        int i = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                outputStream.write(bArr, 0, read);
                i += read;
            } catch (IOException unused) {
            }
        }
        return i;
    }

    public static int copy(File file, File file2) {
        FileInputStream fileInputStream;
        Throwable th;
        if (file == null || file2 == null || !file.exists()) {
            return 0;
        }
        if (!file2.exists()) {
            File parentFile = file2.getParentFile();
            if (parentFile == null) {
                return 0;
            }
            if (!parentFile.exists() && !parentFile.mkdirs()) {
                return 0;
            }
        }
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    int copy = copy(fileInputStream, fileOutputStream2);
                    try {
                        fileInputStream.close();
                    } catch (IOException unused) {
                    }
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused2) {
                    }
                    return copy;
                } catch (FileNotFoundException unused3) {
                    fileOutputStream = fileOutputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused5) {
                        }
                    }
                    return 0;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused7) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused8) {
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (FileNotFoundException unused9) {
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
    }

    public static OutputStream openOutputStream(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return openOutputStream(new File(str));
    }

    public static OutputStream openOutputStream(File file) {
        if (file != null && createFile(file)) {
            try {
                return new FileOutputStream(file);
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }

    public static InputStream openInputStream(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return openInputStream(new File(str));
    }

    public static InputStream openInputStream(File file) {
        if (file == null) {
            return null;
        }
        try {
            return new FileInputStream(file);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    public static boolean createParentDirectories(File file) {
        if (file == null) {
            return false;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null || parentFile.exists()) {
            return true;
        }
        return parentFile.mkdirs();
    }

    public static boolean createParentDirectories(String str) {
        return createParentDirectories(new File(str));
    }

    public static boolean createFile(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return true;
        }
        if (!createParentDirectories(file)) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean createFile(String str) {
        if (str == null || str.length() <= 0) {
            return false;
        }
        return createFile(new File(str));
    }

    public static File compare(File file, File file2) {
        if (file == null) {
            return file2;
        }
        if (file2 == null || !file2.exists()) {
            return file;
        }
        if (!file.exists()) {
            return file2;
        }
        return file.lastModified() > file2.lastModified() ? file : file2;
    }

    public static void recursiveDelete(File file) {
        if (file != null) {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        File[] listFiles = file.listFiles();
                        if (listFiles != null) {
                            for (File file2 : listFiles) {
                                recursiveDelete(file2);
                            }
                        } else {
                            return;
                        }
                    }
                    TPDLProxyLog.d(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "recursiveDelete: delete=" + file.delete());
                }
            } catch (Exception e) {
                TPDLProxyLog.d(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "recursiveDelete failed, error:" + e.toString());
            }
        }
    }

    public static boolean isExternalStorageMounted() {
        return Environment.getExternalStorageState().equals("mounted");
    }
}
