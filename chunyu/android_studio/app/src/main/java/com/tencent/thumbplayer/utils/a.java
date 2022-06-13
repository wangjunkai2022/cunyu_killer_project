package com.tencent.thumbplayer.utils;

import android.content.Context;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public class a {
    private static Map<String, a> a = new HashMap();
    private C0050a b;

    /* renamed from: com.tencent.thumbplayer.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0050a {
        protected File a;
        private final AtomicLong b;
        private final AtomicInteger c;
        private final long d;
        private final int e;
        private final Map<File, Long> f;

        private C0050a(File file, long j, int i) {
            this.f = Collections.synchronizedMap(new HashMap());
            this.a = file;
            this.d = j;
            this.e = i;
            this.b = new AtomicLong();
            this.c = new AtomicInteger();
            a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File a(String str) {
            File b = b(str);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            b.setLastModified(valueOf.longValue());
            this.f.put(b, valueOf);
            return b;
        }

        private void a() {
            o.a().d().execute(new Runnable() { // from class: com.tencent.thumbplayer.utils.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    File[] listFiles = C0050a.this.a.listFiles();
                    if (listFiles != null) {
                        int i = 0;
                        int i2 = 0;
                        for (File file : listFiles) {
                            i = (int) (((long) i) + C0050a.this.b(file));
                            i2++;
                            C0050a.this.f.put(file, Long.valueOf(file.lastModified()));
                        }
                        C0050a.this.b.set((long) i);
                        C0050a.this.c.set(i2);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(File file) {
            int i = this.c.get();
            while (i + 1 > this.e) {
                this.b.addAndGet(-c());
                i = this.c.addAndGet(-1);
            }
            this.c.addAndGet(1);
            long b = b(file);
            long j = this.b.get();
            while (j + b > this.d) {
                j = this.b.addAndGet(-c());
            }
            this.b.addAndGet(b);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(valueOf.longValue());
            this.f.put(file, valueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b(File file) {
            if (file == null) {
                return 0;
            }
            return file.length();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File b(String str) {
            File file = this.a;
            return new File(file, str.hashCode() + "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f.clear();
            this.b.set(0);
            this.c.set(0);
            File[] listFiles = this.a.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }

        private long c() {
            File file;
            if (this.f.isEmpty()) {
                return 0;
            }
            Set<Map.Entry<File, Long>> entrySet = this.f.entrySet();
            synchronized (this.f) {
                file = null;
                Long l = null;
                for (Map.Entry<File, Long> entry : entrySet) {
                    if (file == null) {
                        file = entry.getKey();
                        l = entry.getValue();
                    } else {
                        Long value = entry.getValue();
                        if (value.longValue() < l.longValue()) {
                            file = entry.getKey();
                            l = value;
                        }
                    }
                }
            }
            if (file == null) {
                return 0;
            }
            long b = b(file);
            if (file != null && file.delete()) {
                this.f.remove(file);
            }
            return b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c(String str) {
            File a = a(str);
            long b = b(a);
            if (!a.delete()) {
                return false;
            }
            this.c.addAndGet(-1);
            this.b.addAndGet(-b);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b {
        private static int a(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        private static String a(int i) {
            String str = System.currentTimeMillis() + "";
            while (str.length() < 13) {
                str = "0" + str;
            }
            return str + "-" + i + ' ';
        }

        private static byte[] a(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] b(int i, byte[] bArr) {
            byte[] bytes = a(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean c(byte[] bArr) {
            String[] f = f(bArr);
            if (f != null && f.length == 2) {
                String str = f[0];
                while (str.startsWith("0")) {
                    str = str.substring(1, str.length());
                }
                try {
                    if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(f[1]).longValue() * 1000)) {
                        return true;
                    }
                } catch (Exception unused) {
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] d(byte[] bArr) {
            return e(bArr) ? a(bArr, a(bArr, ' ') + 1, bArr.length) : bArr;
        }

        private static boolean e(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && a(bArr, ' ') > 14;
        }

        private static String[] f(byte[] bArr) {
            if (e(bArr)) {
                return new String[]{new String(a(bArr, 0, 13)), new String(a(bArr, 14, a(bArr, ' ')))};
            }
            return null;
        }
    }

    private a(File file, long j, int i) {
        if (file.exists() || file.mkdirs()) {
            this.b = new C0050a(file, j, i);
        } else {
            this.b = null;
        }
    }

    public static a a(Context context, String str) {
        return a(new File(context.getCacheDir(), str), 50000000, Integer.MAX_VALUE);
    }

    public static a a(File file, long j, int i) {
        a aVar;
        try {
            Map<String, a> map = a;
            aVar = map.get(file.getAbsoluteFile() + b());
        } catch (Exception unused) {
            aVar = null;
        }
        if (aVar != null) {
            return aVar;
        }
        try {
            a aVar2 = new a(file, j, i);
            try {
                Map<String, a> map2 = a;
                map2.put(file.getAbsolutePath() + b(), aVar2);
            } catch (Throwable unused2) {
            }
            return aVar2;
        } catch (Throwable unused3) {
            return aVar;
        }
    }

    private static String b() {
        return "_" + Process.myPid();
    }

    public void a() {
        C0050a aVar = this.b;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void a(String str, Serializable serializable) {
        a(str, serializable, -1);
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException
        */
    public void a(java.lang.String r4, java.io.Serializable r5, int r6) {
        /*
            r3 = this;
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: Exception -> 0x0030, all -> 0x0026
            r1.<init>()     // Catch: Exception -> 0x0030, all -> 0x0026
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch: Exception -> 0x0030, all -> 0x0026
            r2.<init>(r1)     // Catch: Exception -> 0x0030, all -> 0x0026
            r2.writeObject(r5)     // Catch: Exception -> 0x0023, all -> 0x0020
            byte[] r5 = r1.toByteArray()     // Catch: Exception -> 0x0023, all -> 0x0020
            r0 = -1
            if (r6 == r0) goto L_0x0019
            r3.a(r4, r5, r6)     // Catch: Exception -> 0x0023, all -> 0x0020
            goto L_0x001c
        L_0x0019:
            r3.a(r4, r5)     // Catch: Exception -> 0x0023, all -> 0x0020
        L_0x001c:
            r2.close()     // Catch: all -> 0x0037
            goto L_0x0037
        L_0x0020:
            r4 = move-exception
            r0 = r2
            goto L_0x0027
        L_0x0023:
            r4 = move-exception
            r0 = r2
            goto L_0x0031
        L_0x0026:
            r4 = move-exception
        L_0x0027:
            r4.printStackTrace()     // Catch: all -> 0x0038
            if (r0 == 0) goto L_0x0037
        L_0x002c:
            r0.close()     // Catch: all -> 0x0037
            goto L_0x0037
        L_0x0030:
            r4 = move-exception
        L_0x0031:
            r4.printStackTrace()     // Catch: all -> 0x0038
            if (r0 == 0) goto L_0x0037
            goto L_0x002c
        L_0x0037:
            return
        L_0x0038:
            r4 = move-exception
            if (r0 == 0) goto L_0x003e
            r0.close()     // Catch: all -> 0x003e
        L_0x003e:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.utils.a.a(java.lang.String, java.io.Serializable, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.tencent.thumbplayer.utils.a$a] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.File] */
    public void a(String str, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream;
        IOException e;
        Exception e2;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3 = this.b;
        if (fileOutputStream3 != 0) {
            try {
                str = fileOutputStream3.b(str);
                fileOutputStream = null;
                fileOutputStream3 = 0;
                fileOutputStream = null;
                try {
                    fileOutputStream2 = new FileOutputStream((File) str);
                } catch (Exception e3) {
                    e2 = e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                fileOutputStream2.write(bArr);
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    fileOutputStream3 = fileOutputStream;
                    this.b.a((File) str);
                }
            } catch (Exception e5) {
                e2 = e5;
                fileOutputStream = fileOutputStream2;
                e2.printStackTrace();
                fileOutputStream3 = fileOutputStream;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        fileOutputStream3 = fileOutputStream;
                    } catch (IOException e6) {
                        e = e6;
                        e.printStackTrace();
                        fileOutputStream3 = fileOutputStream;
                        this.b.a((File) str);
                    }
                }
                this.b.a((File) str);
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream3 = fileOutputStream2;
                if (fileOutputStream3 != 0) {
                    try {
                        fileOutputStream3.flush();
                        fileOutputStream3.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                this.b.a((File) str);
                throw th;
            }
            this.b.a((File) str);
        }
    }

    public void a(String str, byte[] bArr, int i) {
        a(str, b.b(i, bArr));
    }

    public byte[] a(String str) {
        Throwable th;
        Exception e;
        RandomAccessFile randomAccessFile;
        C0050a aVar = this.b;
        RandomAccessFile randomAccessFile2 = null;
        try {
            if (aVar == null) {
                return null;
            }
            try {
                File a2 = aVar.a(str);
                if (!a2.exists()) {
                    return null;
                }
                randomAccessFile = new RandomAccessFile(a2, "r");
                try {
                    byte[] bArr = new byte[(int) randomAccessFile.length()];
                    if (randomAccessFile.read(bArr) <= 0) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        return null;
                    } else if (!b.c(bArr)) {
                        byte[] d = b.d(bArr);
                        try {
                            randomAccessFile.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                        return d;
                    } else {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                        c(str);
                        return null;
                    }
                } catch (Exception e5) {
                    e = e5;
                    e.printStackTrace();
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Exception e7) {
                e = e7;
                randomAccessFile = null;
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        randomAccessFile2.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0051 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.Object b(java.lang.String r5) {
        /*
            r4 = this;
            byte[] r5 = r4.a(r5)
            r0 = 0
            if (r5 == 0) goto L_0x0064
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream     // Catch: Exception -> 0x0030, all -> 0x002d
            r1.<init>(r5)     // Catch: Exception -> 0x0030, all -> 0x002d
            java.io.ObjectInputStream r5 = new java.io.ObjectInputStream     // Catch: Exception -> 0x002a, all -> 0x0028
            r5.<init>(r1)     // Catch: Exception -> 0x002a, all -> 0x0028
            java.lang.Object r0 = r5.readObject()     // Catch: Exception -> 0x0026, all -> 0x004b
            r1.close()     // Catch: IOException -> 0x0019
            goto L_0x001d
        L_0x0019:
            r1 = move-exception
            r1.printStackTrace()
        L_0x001d:
            r5.close()     // Catch: IOException -> 0x0021
            goto L_0x0025
        L_0x0021:
            r5 = move-exception
            r5.printStackTrace()
        L_0x0025:
            return r0
        L_0x0026:
            r2 = move-exception
            goto L_0x0033
        L_0x0028:
            r5 = move-exception
            goto L_0x004f
        L_0x002a:
            r2 = move-exception
            r5 = r0
            goto L_0x0033
        L_0x002d:
            r5 = move-exception
            r1 = r0
            goto L_0x004f
        L_0x0030:
            r2 = move-exception
            r5 = r0
            r1 = r5
        L_0x0033:
            r2.printStackTrace()     // Catch: all -> 0x004b
            if (r1 == 0) goto L_0x0040
            r1.close()     // Catch: IOException -> 0x003c
            goto L_0x0040
        L_0x003c:
            r1 = move-exception
            r1.printStackTrace()
        L_0x0040:
            if (r5 == 0) goto L_0x004a
            r5.close()     // Catch: IOException -> 0x0046
            goto L_0x004a
        L_0x0046:
            r5 = move-exception
            r5.printStackTrace()
        L_0x004a:
            return r0
        L_0x004b:
            r0 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
        L_0x004f:
            if (r1 == 0) goto L_0x0059
            r1.close()     // Catch: IOException -> 0x0055
            goto L_0x0059
        L_0x0055:
            r1 = move-exception
            r1.printStackTrace()
        L_0x0059:
            if (r0 == 0) goto L_0x0063
            r0.close()     // Catch: IOException -> 0x005f
            goto L_0x0063
        L_0x005f:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0063:
            throw r5
        L_0x0064:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.utils.a.b(java.lang.String):java.lang.Object");
    }

    public boolean c(String str) {
        C0050a aVar = this.b;
        if (aVar == null) {
            return false;
        }
        return aVar.c(str);
    }
}
