package com.umeng.commonsdk.stateless;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.util.LinkedList;

/* compiled from: UMSLNetWorkSender.java */
/* loaded from: classes4.dex */
public class b {
    public static final int a = 273;
    private static Context b = null;
    private static HandlerThread c = null;
    private static Handler d = null;
    private static final int f = 274;
    private static final int g = 275;
    private static final int h = 512;
    private static a i = null;
    private static IntentFilter j = null;
    private static boolean k = false;
    private static Object e = new Object();
    private static LinkedList<String> l = new LinkedList<>();
    private static BroadcastReceiver m = new BroadcastReceiver() { // from class: com.umeng.commonsdk.stateless.b.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ConnectivityManager connectivityManager;
            if (context != null && intent != null) {
                try {
                    if (intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                        Context unused = b.b = context.getApplicationContext();
                        if (b.b != null && (connectivityManager = (ConnectivityManager) b.b.getSystemService("connectivity")) != null) {
                            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>网络断连： 2号数据仓");
                                boolean unused2 = b.k = false;
                                return;
                            }
                            boolean unused3 = b.k = true;
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>网络可用： 触发2号数据仓信封消费动作。");
                            b.b(274);
                        }
                    }
                } catch (Throwable th) {
                    while (true) {
                        UMCrashManager.reportCrash(context, th);
                        return;
                    }
                }
            }
        }
    };

    public static void r() {
    }

    /* compiled from: UMSLNetWorkSender.java */
    /* loaded from: classes4.dex */
    public static class a extends FileObserver {
        public a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, String str) {
            if ((i & 8) == 8) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> envelope file created >>> " + str);
                b.a(274);
            }
        }
    }

    public static boolean a() {
        synchronized (e) {
            if (i != null) {
                return true;
            }
            return false;
        }
    }

    public b(Context context) {
        synchronized (e) {
            if (context != null) {
                try {
                    Context applicationContext = context.getApplicationContext();
                    b = applicationContext;
                    if (applicationContext != null && c == null) {
                        HandlerThread handlerThread = new HandlerThread("SL-NetWorkSender");
                        c = handlerThread;
                        handlerThread.start();
                        if (i == null) {
                            String str = b.getFilesDir() + File.separator + a.f;
                            File file = new File(str);
                            if (!file.exists()) {
                                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓目录不存在，创建之。");
                                file.mkdir();
                            }
                            a aVar = new a(str);
                            i = aVar;
                            aVar.startWatching();
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓File Monitor启动.");
                        }
                        if (d == null) {
                            d = new Handler(c.getLooper()) { // from class: com.umeng.commonsdk.stateless.b.2
                                @Override // android.os.Handler
                                public void handleMessage(Message message) {
                                    int i2 = message.what;
                                    if (i2 != 512) {
                                        switch (i2) {
                                            case b.a /* 273 */:
                                                b.m();
                                                return;
                                            case 274:
                                                b.o();
                                                return;
                                            case b.g /* 275 */:
                                                b.q();
                                                break;
                                            default:
                                                return;
                                        }
                                    }
                                    b.r();
                                }
                            };
                        }
                        if (DeviceConfig.checkPermission(b, "android.permission.ACCESS_NETWORK_STATE")) {
                            ULog.i("walle", "[stateless] begin register receiver");
                            if (j == null) {
                                IntentFilter intentFilter = new IntentFilter();
                                j = intentFilter;
                                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                                if (m != null) {
                                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓：注册网络状态监听器。");
                                    b.registerReceiver(m, j);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static void a(int i2) {
        Handler handler;
        if (k && (handler = d) != null) {
            Message obtainMessage = handler.obtainMessage();
            obtainMessage.what = i2;
            d.sendMessage(obtainMessage);
        }
    }

    public static void b(int i2) {
        Handler handler;
        try {
            if (k && (handler = d) != null && !handler.hasMessages(i2)) {
                Message obtainMessage = d.obtainMessage();
                obtainMessage.what = i2;
                d.sendMessage(obtainMessage);
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(b, th);
        }
    }

    private static void j() {
        File[] c2 = d.c(b);
        if (c2 != null) {
            if (l.size() > 0) {
                l.clear();
            }
            for (File file : c2) {
                l.add(file.getAbsolutePath());
            }
        }
    }

    private static String k() {
        String str = null;
        try {
            String peek = l.peek();
            if (peek == null) {
                return peek;
            }
            try {
                l.removeFirst();
                return peek;
            } catch (Throwable unused) {
                str = peek;
                return str;
            }
        } catch (Throwable unused2) {
        }
    }

    private static void l() {
        String str;
        if (l.size() <= 0) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> todoList无内容，无需处理。");
            return;
        }
        do {
            if (Build.VERSION.SDK_INT >= 9) {
                str = l.pollFirst();
            } else {
                str = k();
            }
            if (!TextUtils.isEmpty(str)) {
                File file = new File(str);
                if (!file.exists()) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 信封文件不存在，处理下一个文件。");
                    continue;
                } else {
                    c cVar = new c(b);
                    byte[] bArr = null;
                    try {
                        bArr = d.a(str);
                    } catch (Exception unused) {
                    }
                    String name = file.getName();
                    String substring = !TextUtils.isEmpty(name) ? name.substring(0, 1) : ai.aE;
                    String d2 = d.d(name);
                    String str2 = a.j;
                    String c2 = d.c(d2);
                    if (com.umeng.commonsdk.vchannel.a.c.equalsIgnoreCase(c2)) {
                        str2 = com.umeng.commonsdk.vchannel.a.a;
                    }
                    if (cVar.a(bArr, c2, str2, substring) && !file.delete()) {
                        file.delete();
                        continue;
                    }
                }
            }
        } while (str != null);
        l.clear();
    }

    public static void m() {
        File a2;
        if (k && b != null) {
            do {
                try {
                    a2 = d.a(b);
                    if (!(a2 == null || a2.getParentFile() == null || TextUtils.isEmpty(a2.getParentFile().getName()))) {
                        c cVar = new c(b);
                        String str = new String(Base64.decode(a2.getParentFile().getName(), 0));
                        if (!com.umeng.commonsdk.internal.a.a.equalsIgnoreCase(str) && !com.umeng.commonsdk.internal.a.b.equalsIgnoreCase(str) && !com.umeng.commonsdk.internal.a.A.equalsIgnoreCase(str)) {
                            ULog.i("walle", "[stateless] handleProcessNext, pathUrl is " + str);
                            byte[] bArr = null;
                            try {
                                bArr = d.a(a2.getAbsolutePath());
                            } catch (Exception unused) {
                            }
                            String str2 = "";
                            if (com.umeng.commonsdk.vchannel.a.c.equalsIgnoreCase(str)) {
                                str2 = com.umeng.commonsdk.vchannel.a.a;
                            }
                            String str3 = ai.aE;
                            if (UMServerURL.PATH_SHARE.equalsIgnoreCase(str)) {
                                str3 = ai.az;
                            }
                            if (UMServerURL.PATH_PUSH_LAUNCH.equalsIgnoreCase(str) || UMServerURL.PATH_PUSH_REGIST.equalsIgnoreCase(str) || UMServerURL.PATH_PUSH_LOG.equalsIgnoreCase(str)) {
                                str3 = "p";
                            }
                            if (cVar.a(bArr, str, str2, str3)) {
                                ULog.i("walle", "[stateless] Send envelope file success, delete it.");
                                File file = new File(a2.getAbsolutePath());
                                if (!file.delete()) {
                                    ULog.i("walle", "[stateless] Failed to delete already processed file. We try again after delete failed.");
                                    file.delete();
                                    continue;
                                } else {
                                    continue;
                                }
                            } else {
                                ULog.i("walle", "[stateless] Send envelope file failed, abandon and wait next trigger!");
                                return;
                            }
                        }
                        new File(a2.getAbsolutePath()).delete();
                    }
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(b, th);
                }
            } while (a2 != null);
            n();
        }
    }

    private static void n() {
        try {
            File file = new File(b.getFilesDir() + File.separator + a.e);
            if (file.exists() && file.isDirectory()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓：删除stateless目录。");
                d.a(file);
            }
        } catch (Throwable unused) {
        }
    }

    public static void o() {
        if (k && b != null) {
            j();
            l();
            c();
        }
    }

    private static void p() {
        try {
            File file = new File(b.getFilesDir() + File.separator + a.e);
            if (file.exists() && file.isDirectory()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>2号数据仓：检测到stateless目录。");
                b(a);
            }
        } catch (Throwable unused) {
        }
    }

    public static void q() {
        p();
    }

    public static void b() {
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>信封构建成功： 触发2号数据仓信封消费动作。");
        b(274);
    }

    public static void c() {
        b(g);
    }

    public static void d() {
        b(512);
    }
}
