package com.tencent.liteav.basic.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Debug;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.a;
import com.tencent.rtmp.TXLiveConstants;
import com.tencent.ugc.TXRecordCommon;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.UUID;

/* compiled from: TXCSystemUtil.java */
/* loaded from: classes2.dex */
public class h {
    public static long a = 0;
    private static boolean b = true;
    private static String c = "";
    private static int d = 0;
    private static long e = 0;
    private static boolean f = false;
    private static String g = "";
    private static String h = "";
    private static volatile d i;
    private static final Object j = new Object();
    private static a<b> k = new a<>(new a.AbstractC0024a<b>() { // from class: com.tencent.liteav.basic.util.h.1
        /* renamed from: b */
        public b a() {
            return new b();
        }
    });
    private static final Object l = new Object();
    private static boolean m = false;
    private static int[] n = {96000, 88200, 64000, 48000, TXRecordCommon.AUDIO_SAMPLERATE_44100, TXRecordCommon.AUDIO_SAMPLERATE_32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    public static int[] a() {
        if (!b) {
            return k.a().a();
        }
        b = false;
        k.a().a();
        return new int[]{0, 0};
    }

    public static int b() {
        if (f || (e != 0 && TXCTimeUtil.getTimeTick() - e < C.DEFAULT_SEEK_FORWARD_INCREMENT_MS)) {
            return d;
        }
        f = true;
        try {
            AsyncTask.execute(new Runnable() { // from class: com.tencent.liteav.basic.util.h.2
                @Override // java.lang.Runnable
                public void run() {
                    System.currentTimeMillis();
                    boolean unused = h.f = false;
                    try {
                        Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
                        Debug.getMemoryInfo(memoryInfo);
                        int totalPss = memoryInfo.getTotalPss();
                        long unused2 = h.e = TXCTimeUtil.getTimeTick();
                        int unused3 = h.d = totalPss / 1024;
                    } catch (Exception unused4) {
                    }
                }
            });
        } catch (Throwable th) {
            TXCLog.e("TXCSystemUtil", "getAppMemory error : " + th);
        }
        return d;
    }

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        if (i == null) {
            synchronized (j) {
                if (i == null) {
                    i = new d(context);
                }
            }
        }
        return i.a();
    }

    public static String b(Context context) {
        return TXCDRApi.getSimulateIDFA(context);
    }

    public static String c(Context context) {
        if (!g.equals("")) {
            return g;
        }
        if (context != null) {
            try {
                g = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            } catch (Exception unused) {
            }
        }
        return g;
    }

    public static String a(Context context, String str) {
        if (!TextUtils.isEmpty(h)) {
            return h;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            h = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 128)).toString();
        } catch (Exception unused) {
            h = "";
        }
        return h;
    }

    public static int d(Context context) {
        int i2 = 0;
        if (context == null) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        NetworkInfo networkInfo = null;
        try {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception e2) {
            TXCLog.e("TXCSystemUtil", "getNetworkType: error occurred.", e2);
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            return 0;
        }
        if (networkInfo.getType() == 9) {
            return 5;
        }
        if (networkInfo.getType() == 1) {
            return 1;
        }
        if (networkInfo.getType() == 0) {
            i2 = 2;
            try {
                int networkType = telephonyManager.getNetworkType();
                switch (networkType) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return 4;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return 3;
                    case 13:
                        return 2;
                    default:
                        if (TXCBuild.VersionInt() < 29 || networkType != 20) {
                            return 2;
                        }
                        return 6;
                }
            } catch (Exception e3) {
                TXCLog.e("TXCSystemUtil", "getNetworkType: error occurred.", e3);
            }
        }
        return i2;
    }

    public static String c() {
        return TXCBuild.Model();
    }

    public static String d() {
        return TXCBuild.Brand();
    }

    public static String e(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        Display defaultDisplay = windowManager.getDefaultDisplay();
        try {
            Class<?> cls = Class.forName("android.view.Display");
            if (TXCBuild.VersionInt() > 8) {
                cls.getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            }
            int i2 = displayMetrics.heightPixels;
            int i3 = displayMetrics.widthPixels;
            return i3 + "_" + i2;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String e() {
        return UUID.randomUUID().toString();
    }

    public static String f(Context context) {
        return TXCDRApi.getDevUUID(context, TXCDRApi.getSimulateIDFA(context));
    }

    public static int g(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static void a(WeakReference<b> weakReference, String str, int i2, String str2, long j2) {
        Bundle bundle = new Bundle();
        bundle.putString("EVT_USERID", str);
        bundle.putInt("EVT_ID", i2);
        bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
        bundle.putLong(TXLiveConstants.EVT_UTC_TIME, TXCTimeUtil.getUtcTimeTick());
        bundle.putLong(TXLiveConstants.EVT_BLOCK_DURATION, j2);
        if (str2 != null) {
            bundle.putCharSequence(TXLiveConstants.EVT_DESCRIPTION, str2);
        }
        a(weakReference, i2, bundle);
    }

    public static void a(WeakReference<b> weakReference, int i2, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("EVT_ID", i2);
        bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
        bundle.putLong(TXLiveConstants.EVT_UTC_TIME, TXCTimeUtil.getUtcTimeTick());
        if (str != null) {
            bundle.putCharSequence(TXLiveConstants.EVT_DESCRIPTION, str);
        }
        a(weakReference, i2, bundle);
    }

    public static void a(WeakReference<b> weakReference, int i2, Bundle bundle) {
        b bVar;
        if (weakReference != null && (bVar = weakReference.get()) != null) {
            bVar.onNotifyEvent(i2, bundle);
        }
    }

    public static void a(WeakReference<b> weakReference, String str, int i2, Bundle bundle) {
        b bVar;
        if (weakReference != null && (bVar = weakReference.get()) != null) {
            bundle.putString("EVT_USERID", str);
            bVar.onNotifyEvent(i2, bundle);
        }
    }

    public static boolean f() {
        boolean z;
        synchronized (l) {
            if (!m) {
                boolean a2 = a("txffmpeg");
                Log.w("Native-LiteAV", "load library txffmpeg " + a2);
                boolean a3 = a("txsoundtouch");
                Log.w("Native-LiteAV", "load library txsoundtouch " + a3);
                boolean a4 = a("traeimp-rtmp");
                Log.w("Native-LiteAV", "load library traeimp-rtmp " + a4);
                m = a("liteavsdk");
                Log.w("Native-LiteAV", "load library liteavsdk " + m);
            }
            z = m;
        }
        return z;
    }

    public static boolean a(String str) {
        try {
            Log.w("Native-LiteAV", "load library " + str + " from system path ");
            System.loadLibrary(str);
            return true;
        } catch (Error e2) {
            Log.w("Native-LiteAV", "load library : " + e2.toString());
            return b(c, str);
        } catch (Exception e3) {
            Log.w("Native-LiteAV", "load library : " + e3.toString());
            return b(c, str);
        }
    }

    private static boolean b(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Log.w("Native-LiteAV", "load library " + str2 + " from path " + str);
            System.load(str + "/lib" + str2 + ".so");
            return true;
        } catch (Error e2) {
            Log.w("Native-LiteAV", "load library : " + e2.toString());
            return false;
        } catch (Exception e3) {
            Log.w("Native-LiteAV", "load library : " + e3.toString());
            return false;
        }
    }

    public static void b(String str) {
        Log.w("Native-LiteAV", "setLibraryPath " + str);
        c = str;
    }

    public static String g() {
        return c;
    }

    public static int a(int i2) {
        int i3 = 0;
        while (true) {
            int[] iArr = n;
            if (i3 >= iArr.length || iArr[i3] == i2) {
                break;
            }
            i3++;
        }
        if (i3 >= n.length) {
            return -1;
        }
        return i3;
    }

    public static MediaFormat a(int i2, int i3, int i4) {
        int a2 = a(i2);
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.put(0, (byte) ((i4 << 3) | (a2 >> 1)));
        allocate.put(1, (byte) (((a2 & 1) << 7) | (i3 << 3)));
        MediaFormat createAudioFormat = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AAC, i2, i3);
        createAudioFormat.setInteger("channel-count", i3);
        createAudioFormat.setInteger("sample-rate", i2);
        createAudioFormat.setByteBuffer("csd-0", allocate);
        return createAudioFormat;
    }

    public static boolean a(String str, String str2) {
        Throwable th;
        MediaMetadataRetriever mediaMetadataRetriever;
        Exception e2;
        Bitmap frameAtTime;
        FileOutputStream fileOutputStream;
        if (str == null || str2 == null) {
            return false;
        }
        try {
            FileOutputStream fileOutputStream2 = null;
            try {
                if (!new File(str).exists()) {
                    return false;
                }
                mediaMetadataRetriever = new MediaMetadataRetriever();
                try {
                    mediaMetadataRetriever.setDataSource(str);
                    frameAtTime = mediaMetadataRetriever.getFrameAtTime();
                    File file = new File(str2);
                    if (file.exists()) {
                        file.delete();
                    }
                    File parentFile = file.getParentFile();
                    if (parentFile != null && !parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    fileOutputStream = new FileOutputStream(file);
                } catch (Exception e3) {
                    e2 = e3;
                }
                try {
                    frameAtTime.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                    }
                    mediaMetadataRetriever.release();
                    return true;
                } catch (Exception e4) {
                    e2 = e4;
                    fileOutputStream2 = fileOutputStream;
                    TXCLog.e("TXCSystemUtil", "get video thumb failed.", e2);
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    if (mediaMetadataRetriever != null) {
                        mediaMetadataRetriever.release();
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    if (mediaMetadataRetriever != null) {
                        mediaMetadataRetriever.release();
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e2 = e5;
                mediaMetadataRetriever = null;
            } catch (Throwable th3) {
                th = th3;
                mediaMetadataRetriever = null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
