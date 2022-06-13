package com.netease.mobsec.d;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.netease.mobsec.d.c;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes2.dex */
public class a implements c.a {
    private static final int a = 5;
    private static final int b = 4096;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.netease.mobsec.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0001a {
        public ZipFile a;
        public ZipEntry b;

        public C0001a(ZipFile zipFile, ZipEntry zipEntry) {
            this.a = zipFile;
            this.b = zipEntry;
        }
    }

    private long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += (long) read;
        }
    }

    private C0001a a(Context context, String[] strArr, String str, d dVar) {
        String[] a2 = a(context);
        int length = a2.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            ZipFile zipFile = null;
            if (i2 >= length) {
                return null;
            }
            String str2 = a2[i2];
            int i3 = i;
            while (true) {
                i3++;
                if (i3 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                }
            }
            if (zipFile != null) {
                int i4 = i;
                while (true) {
                    i4++;
                    if (i4 < 5) {
                        int length2 = strArr.length;
                        int i5 = i;
                        while (i5 < length2) {
                            String str3 = "lib" + File.separatorChar + strArr[i5] + File.separatorChar + str;
                            Object[] objArr = new Object[2];
                            objArr[i] = str3;
                            objArr[1] = str2;
                            dVar.a("Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(str3);
                            if (entry != null) {
                                return new C0001a(zipFile, entry);
                            }
                            i5++;
                            i = 0;
                        }
                        i = 0;
                    } else {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            i2++;
            i = 0;
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private String[] a(Context context) {
        String[] strArr;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT < 21 || (strArr = applicationInfo.splitSourceDirs) == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    private String[] a(Context context, String str) {
        Pattern compile = Pattern.compile("lib" + File.separatorChar + "([^\\" + File.separatorChar + "]*)" + File.separatorChar + str);
        HashSet hashSet = new HashSet();
        for (String str2 : a(context)) {
            try {
                Enumeration<? extends ZipEntry> entries = new ZipFile(new File(str2), 1).entries();
                while (entries.hasMoreElements()) {
                    Matcher matcher = compile.matcher(((ZipEntry) entries.nextElement()).getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
            } catch (IOException unused) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    @Override // com.netease.mobsec.d.c.a
    public void a(Context context, String[] strArr, String str, File file, d dVar) {
        Throwable th;
        C0001a aVar;
        String[] strArr2;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        Throwable th2;
        Closeable closeable = null;
        try {
            aVar = a(context, strArr, str, dVar);
        } catch (Throwable th3) {
            th = th3;
            aVar = null;
        }
        try {
            if (aVar != null) {
                int i = 0;
                while (true) {
                    i++;
                    if (i < 5) {
                        dVar.a("Found %s! Extracting...", str);
                        try {
                            if (file.exists() || file.createNewFile()) {
                                try {
                                    inputStream = aVar.a.getInputStream(aVar.b);
                                } catch (FileNotFoundException unused) {
                                    inputStream = null;
                                } catch (IOException unused2) {
                                    inputStream = null;
                                } catch (Throwable th4) {
                                    th2 = th4;
                                    inputStream = null;
                                }
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                    try {
                                        long a2 = a(inputStream, fileOutputStream);
                                        fileOutputStream.getFD().sync();
                                        if (a2 == file.length()) {
                                            a(inputStream);
                                            a(fileOutputStream);
                                            file.setReadable(true, false);
                                            file.setExecutable(true, false);
                                            file.setWritable(true);
                                            if (aVar != null) {
                                                try {
                                                    ZipFile zipFile = aVar.a;
                                                    if (zipFile != null) {
                                                        zipFile.close();
                                                        return;
                                                    }
                                                    return;
                                                } catch (IOException unused3) {
                                                    return;
                                                }
                                            } else {
                                                return;
                                            }
                                        }
                                    } catch (FileNotFoundException | IOException unused4) {
                                    } catch (Throwable th5) {
                                        th2 = th5;
                                        closeable = fileOutputStream;
                                        a(inputStream);
                                        a(closeable);
                                        throw th2;
                                    }
                                } catch (FileNotFoundException unused5) {
                                    fileOutputStream = null;
                                    a(inputStream);
                                    a(fileOutputStream);
                                } catch (IOException unused6) {
                                    fileOutputStream = null;
                                    a(inputStream);
                                    a(fileOutputStream);
                                } catch (Throwable th6) {
                                    th2 = th6;
                                }
                                a(inputStream);
                                a(fileOutputStream);
                            }
                        } catch (IOException unused7) {
                        }
                    } else {
                        dVar.a("FATAL! Couldn't extract the library from the APK!");
                        if (aVar != null) {
                            try {
                                ZipFile zipFile2 = aVar.a;
                                if (zipFile2 != null) {
                                    zipFile2.close();
                                    return;
                                }
                                return;
                            } catch (IOException unused8) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
            } else {
                try {
                    strArr2 = a(context, str);
                } catch (Exception e) {
                    strArr2 = new String[]{e.toString()};
                }
                throw new b(str, strArr, strArr2);
            }
        } catch (Throwable th7) {
            th = th7;
            if (aVar != null) {
                try {
                    ZipFile zipFile3 = aVar.a;
                    if (zipFile3 != null) {
                        zipFile3.close();
                    }
                } catch (IOException unused9) {
                }
            }
            throw th;
        }
    }
}
