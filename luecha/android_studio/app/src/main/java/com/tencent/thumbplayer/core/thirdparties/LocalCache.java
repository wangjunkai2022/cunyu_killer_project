package com.tencent.thumbplayer.core.thirdparties;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import com.tencent.thumbplayer.core.utils.TPThreadPool;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class LocalCache {
    private static final int MAX_COUNT = Integer.MAX_VALUE;
    private static final int MAX_SIZE = 50000000;
    public static final int TIME_DAY = 86400;
    public static final int TIME_HOUR = 3600;
    private static Map<String, LocalCache> mInstanceMap = new HashMap();
    private ACacheManager mCache;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class ACacheManager {
        private final AtomicInteger cacheCount;
        protected File cacheDir;
        private final AtomicLong cacheSize;
        private final int countLimit;
        private final Map<File, Long> lastUsageDates;
        private final long sizeLimit;

        private ACacheManager(File file, long j, int i) {
            this.lastUsageDates = Collections.synchronizedMap(new HashMap());
            this.cacheDir = file;
            this.sizeLimit = j;
            this.countLimit = i;
            this.cacheSize = new AtomicLong();
            this.cacheCount = new AtomicInteger();
            calculateCacheSizeAndCacheCount();
        }

        private void calculateCacheSizeAndCacheCount() {
            TPThreadPool.getInstance().obtainThreadExecutor().execute(new Runnable() { // from class: com.tencent.thumbplayer.core.thirdparties.LocalCache.ACacheManager.1
                @Override // java.lang.Runnable
                public void run() {
                    File[] listFiles = ACacheManager.this.cacheDir.listFiles();
                    if (listFiles != null) {
                        int i = 0;
                        int i2 = 0;
                        for (File file : listFiles) {
                            i = (int) (((long) i) + ACacheManager.this.calculateSize(file));
                            i2++;
                            ACacheManager.this.lastUsageDates.put(file, Long.valueOf(file.lastModified()));
                        }
                        ACacheManager.this.cacheSize.set((long) i);
                        ACacheManager.this.cacheCount.set(i2);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long calculateSize(File file) {
            if (file == null) {
                return 0;
            }
            return file.length();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            this.lastUsageDates.clear();
            this.cacheSize.set(0);
            File[] listFiles = this.cacheDir.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File get(String str) {
            File newFile = newFile(str);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            newFile.setLastModified(valueOf.longValue());
            this.lastUsageDates.put(newFile, valueOf);
            return newFile;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File newFile(String str) {
            File file = this.cacheDir;
            return new File(file, str.hashCode() + "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void put(File file) {
            int i = this.cacheCount.get();
            while (i + 1 > this.countLimit) {
                this.cacheSize.addAndGet(-removeNext());
                i = this.cacheCount.addAndGet(-1);
            }
            this.cacheCount.addAndGet(1);
            long calculateSize = calculateSize(file);
            long j = this.cacheSize.get();
            while (j + calculateSize > this.sizeLimit) {
                j = this.cacheSize.addAndGet(-removeNext());
            }
            this.cacheSize.addAndGet(calculateSize);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(valueOf.longValue());
            this.lastUsageDates.put(file, valueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean remove(String str) {
            return get(str).delete();
        }

        private long removeNext() {
            File file;
            if (this.lastUsageDates.isEmpty()) {
                return 0;
            }
            Set<Map.Entry<File, Long>> entrySet = this.lastUsageDates.entrySet();
            synchronized (this.lastUsageDates) {
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
            long calculateSize = calculateSize(file);
            if (file != null && file.delete()) {
                this.lastUsageDates.remove(file);
            }
            return calculateSize;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class Utils {
        private static final char mSeparator = ' ';

        private Utils() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] Bitmap2Bytes(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap Bytes2Bimap(byte[] bArr) {
            int length = bArr.length;
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Drawable bitmap2Drawable(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            return new BitmapDrawable(bitmap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String clearDateInfo(String str) {
            return (str == null || !hasDateInfo(str.getBytes())) ? str : str.substring(str.indexOf(32) + 1, str.length());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] clearDateInfo(byte[] bArr) {
            return hasDateInfo(bArr) ? copyOfRange(bArr, indexOf(bArr, ' ') + 1, bArr.length) : bArr;
        }

        private static byte[] copyOfRange(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }

        private static String createDateInfo(int i) {
            String str = System.currentTimeMillis() + "";
            while (str.length() < 13) {
                str = "0" + str;
            }
            return str + "-" + i + ' ';
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap drawable2Bitmap(Drawable drawable) {
            if (drawable == null) {
                return null;
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return createBitmap;
        }

        private static String[] getDateInfoFromDate(byte[] bArr) {
            if (hasDateInfo(bArr)) {
                return new String[]{new String(copyOfRange(bArr, 0, 13)), new String(copyOfRange(bArr, 14, indexOf(bArr, ' ')))};
            }
            return null;
        }

        private static boolean hasDateInfo(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && indexOf(bArr, ' ') > 14;
        }

        private static int indexOf(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isDue(String str) {
            return isDue(str.getBytes());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isDue(byte[] bArr) {
            String[] dateInfoFromDate = getDateInfoFromDate(bArr);
            if (dateInfoFromDate != null && dateInfoFromDate.length == 2) {
                String str = dateInfoFromDate[0];
                while (str.startsWith("0")) {
                    str = str.substring(1, str.length());
                }
                try {
                    if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(dateInfoFromDate[1]).longValue() * 1000)) {
                        return true;
                    }
                } catch (Exception unused) {
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] newByteArrayWithDateInfo(int i, byte[] bArr) {
            byte[] bytes = createDateInfo(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String newStringWithDateInfo(int i, String str) {
            return createDateInfo(i) + str;
        }
    }

    private LocalCache(File file, long j, int i) {
        if (file.exists() || file.mkdirs()) {
            this.mCache = new ACacheManager(file, j, i);
        } else {
            this.mCache = null;
        }
    }

    public static LocalCache get(Context context) {
        return get(context, "LocalCache");
    }

    public static LocalCache get(Context context, long j, int i) {
        return get(new File(context.getCacheDir(), "LocalCache"), j, i);
    }

    public static LocalCache get(Context context, String str) {
        return get(new File(context.getCacheDir(), str), 50000000, Integer.MAX_VALUE);
    }

    public static LocalCache get(File file) {
        return get(file, 50000000, Integer.MAX_VALUE);
    }

    public static LocalCache get(File file, long j, int i) {
        LocalCache localCache;
        try {
            Map<String, LocalCache> map = mInstanceMap;
            localCache = map.get(file.getAbsoluteFile() + myPid());
        } catch (Exception unused) {
            localCache = null;
        }
        if (localCache != null) {
            return localCache;
        }
        try {
            LocalCache localCache2 = new LocalCache(file, j, i);
            try {
                Map<String, LocalCache> map2 = mInstanceMap;
                map2.put(file.getAbsolutePath() + myPid(), localCache2);
            } catch (Throwable unused2) {
            }
            return localCache2;
        } catch (Throwable unused3) {
            return localCache;
        }
    }

    private static String myPid() {
        return "_" + Process.myPid();
    }

    public void clear() {
        ACacheManager aCacheManager = this.mCache;
        if (aCacheManager != null) {
            aCacheManager.clear();
        }
    }

    public File file(String str) {
        ACacheManager aCacheManager = this.mCache;
        if (aCacheManager == null) {
            return null;
        }
        File newFile = aCacheManager.newFile(str);
        if (newFile.exists()) {
            return newFile;
        }
        return null;
    }

    public byte[] getAsBinary(String str) {
        Throwable th;
        Exception e;
        RandomAccessFile randomAccessFile;
        ACacheManager aCacheManager = this.mCache;
        RandomAccessFile randomAccessFile2 = null;
        try {
            if (aCacheManager == null) {
                return null;
            }
            try {
                File file = aCacheManager.get(str);
                if (!file.exists()) {
                    return null;
                }
                randomAccessFile = new RandomAccessFile(file, "r");
                try {
                    byte[] bArr = new byte[(int) randomAccessFile.length()];
                    if (randomAccessFile.read(bArr) <= 0) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        return null;
                    } else if (!Utils.isDue(bArr)) {
                        byte[] clearDateInfo = Utils.clearDateInfo(bArr);
                        try {
                            randomAccessFile.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                        return clearDateInfo;
                    } else {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                        remove(str);
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

    public Bitmap getAsBitmap(String str) {
        if (getAsBinary(str) == null) {
            return null;
        }
        return Utils.Bytes2Bimap(getAsBinary(str));
    }

    public Drawable getAsDrawable(String str) {
        if (getAsBinary(str) == null) {
            return null;
        }
        return Utils.bitmap2Drawable(Utils.Bytes2Bimap(getAsBinary(str)));
    }

    public JSONArray getAsJSONArray(String str) {
        try {
            return new JSONArray(getAsString(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public JSONObject getAsJSONObject(String str) {
        try {
            return new JSONObject(getAsString(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0051 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.Object getAsObject(java.lang.String r5) {
        /*
            r4 = this;
            byte[] r5 = r4.getAsBinary(r5)
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
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.thirdparties.LocalCache.getAsObject(java.lang.String):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String getAsString(java.lang.String r6) {
        /*
            r5 = this;
            com.tencent.thumbplayer.core.thirdparties.LocalCache$ACacheManager r0 = r5.mCache
            r1 = 0
            if (r0 != 0) goto L_0x0006
            return r1
        L_0x0006:
            java.io.File r0 = com.tencent.thumbplayer.core.thirdparties.LocalCache.ACacheManager.access$400(r0, r6)
            boolean r2 = r0.exists()
            if (r2 != 0) goto L_0x0011
            return r1
        L_0x0011:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: IOException -> 0x0057, all -> 0x0054
            java.io.FileReader r3 = new java.io.FileReader     // Catch: IOException -> 0x0057, all -> 0x0054
            r3.<init>(r0)     // Catch: IOException -> 0x0057, all -> 0x0054
            r2.<init>(r3)     // Catch: IOException -> 0x0057, all -> 0x0054
            java.lang.String r0 = ""
        L_0x001d:
            java.lang.String r3 = r2.readLine()     // Catch: IOException -> 0x0052, all -> 0x0067
            if (r3 == 0) goto L_0x0033
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: IOException -> 0x0052, all -> 0x0067
            r4.<init>()     // Catch: IOException -> 0x0052, all -> 0x0067
            r4.append(r0)     // Catch: IOException -> 0x0052, all -> 0x0067
            r4.append(r3)     // Catch: IOException -> 0x0052, all -> 0x0067
            java.lang.String r0 = r4.toString()     // Catch: IOException -> 0x0052, all -> 0x0067
            goto L_0x001d
        L_0x0033:
            boolean r3 = com.tencent.thumbplayer.core.thirdparties.LocalCache.Utils.access$500(r0)     // Catch: IOException -> 0x0052, all -> 0x0067
            if (r3 != 0) goto L_0x0046
            java.lang.String r6 = com.tencent.thumbplayer.core.thirdparties.LocalCache.Utils.access$600(r0)     // Catch: IOException -> 0x0052, all -> 0x0067
            r2.close()     // Catch: IOException -> 0x0041
            goto L_0x0045
        L_0x0041:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0045:
            return r6
        L_0x0046:
            r2.close()     // Catch: IOException -> 0x004a
            goto L_0x004e
        L_0x004a:
            r0 = move-exception
            r0.printStackTrace()
        L_0x004e:
            r5.remove(r6)
            return r1
        L_0x0052:
            r6 = move-exception
            goto L_0x0059
        L_0x0054:
            r6 = move-exception
            r2 = r1
            goto L_0x0068
        L_0x0057:
            r6 = move-exception
            r2 = r1
        L_0x0059:
            r6.printStackTrace()     // Catch: all -> 0x0067
            if (r2 == 0) goto L_0x0066
            r2.close()     // Catch: IOException -> 0x0062
            goto L_0x0066
        L_0x0062:
            r6 = move-exception
            r6.printStackTrace()
        L_0x0066:
            return r1
        L_0x0067:
            r6 = move-exception
        L_0x0068:
            if (r2 == 0) goto L_0x0072
            r2.close()     // Catch: IOException -> 0x006e
            goto L_0x0072
        L_0x006e:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0072:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.thirdparties.LocalCache.getAsString(java.lang.String):java.lang.String");
    }

    public void put(String str, Bitmap bitmap) {
        put(str, Utils.Bitmap2Bytes(bitmap));
    }

    public void put(String str, Bitmap bitmap, int i) {
        put(str, Utils.Bitmap2Bytes(bitmap), i);
    }

    public void put(String str, Drawable drawable) {
        put(str, Utils.drawable2Bitmap(drawable));
    }

    public void put(String str, Drawable drawable, int i) {
        put(str, Utils.drawable2Bitmap(drawable), i);
    }

    public void put(String str, Serializable serializable) {
        put(str, serializable, -1);
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException
        */
    public void put(java.lang.String r4, java.io.Serializable r5, int r6) {
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
            r3.put(r4, r5, r6)     // Catch: Exception -> 0x0023, all -> 0x0020
            goto L_0x001c
        L_0x0019:
            r3.put(r4, r5)     // Catch: Exception -> 0x0023, all -> 0x0020
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
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.thirdparties.LocalCache.put(java.lang.String, java.io.Serializable, int):void");
    }

    public void put(String str, String str2) {
        Throwable th;
        IOException e;
        IOException e2;
        BufferedWriter bufferedWriter;
        ACacheManager aCacheManager = this.mCache;
        if (aCacheManager != null) {
            File newFile = aCacheManager.newFile(str);
            BufferedWriter bufferedWriter2 = null;
            try {
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(newFile), 1024);
                } catch (IOException e3) {
                    e2 = e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                bufferedWriter.write(str2);
                try {
                    bufferedWriter.flush();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                try {
                    bufferedWriter.close();
                } catch (IOException e5) {
                    e = e5;
                    e.printStackTrace();
                    this.mCache.put(newFile);
                }
            } catch (IOException e6) {
                e2 = e6;
                bufferedWriter2 = bufferedWriter;
                e2.printStackTrace();
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.flush();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                    try {
                        bufferedWriter2.close();
                    } catch (IOException e8) {
                        e = e8;
                        e.printStackTrace();
                        this.mCache.put(newFile);
                    }
                }
                this.mCache.put(newFile);
            } catch (Throwable th3) {
                th = th3;
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.flush();
                    } catch (IOException e9) {
                        e9.printStackTrace();
                    }
                    try {
                        bufferedWriter2.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
                this.mCache.put(newFile);
                throw th;
            }
            this.mCache.put(newFile);
        }
    }

    public void put(String str, String str2, int i) {
        put(str, Utils.newStringWithDateInfo(i, str2));
    }

    public void put(String str, JSONArray jSONArray) {
        put(str, jSONArray.toString());
    }

    public void put(String str, JSONArray jSONArray, int i) {
        put(str, jSONArray.toString(), i);
    }

    public void put(String str, JSONObject jSONObject) {
        put(str, jSONObject.toString());
    }

    public void put(String str, JSONObject jSONObject, int i) {
        put(str, jSONObject.toString(), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.tencent.thumbplayer.core.thirdparties.LocalCache$ACacheManager] */
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
    public void put(String str, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream;
        IOException e;
        Exception e2;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3 = this.mCache;
        if (fileOutputStream3 != 0) {
            try {
                str = fileOutputStream3.newFile(str);
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
                    this.mCache.put(str);
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
                        this.mCache.put(str);
                    }
                }
                this.mCache.put(str);
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
                this.mCache.put(str);
                throw th;
            }
            this.mCache.put(str);
        }
    }

    public void put(String str, byte[] bArr, int i) {
        put(str, Utils.newByteArrayWithDateInfo(i, bArr));
    }

    public boolean remove(String str) {
        ACacheManager aCacheManager = this.mCache;
        if (aCacheManager == null) {
            return false;
        }
        return aCacheManager.remove(str);
    }
}
