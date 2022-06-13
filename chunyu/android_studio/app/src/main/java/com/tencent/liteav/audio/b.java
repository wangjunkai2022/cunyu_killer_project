package com.tencent.liteav.audio;

import android.text.TextUtils;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.module.Monitor;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

/* compiled from: TXCopyrightedMediaProcessor.java */
/* loaded from: classes2.dex */
public class b {
    private final Map<Long, a> a = new ConcurrentHashMap();
    private Method b;
    private Method c;

    public b() {
        try {
            Class<?> cls = Class.forName("com.tencent.txcopyrightedmedia.impl.utils.TXBGMUtils");
            this.b = cls.getDeclaredMethod("getMusicURI", String.class);
            this.c = cls.getDeclaredMethod("uploadMusicPlayInfo", String.class, String.class, Long.TYPE);
            this.b.setAccessible(true);
            this.c.setAccessible(true);
        } catch (Exception e) {
            TXCLog.w("TXCopyrightedMediaProcessor", "init TXCopyrightedMediaProcessor failed. " + e);
        }
    }

    public String a(String str) {
        if (this.b != null && b(str)) {
            try {
                String str2 = (String) this.b.invoke(null, str);
                if (TextUtils.isEmpty(str2)) {
                    Monitor.a(3, "TXCopyrightedMediaProcessor: getCopyrightedMusicUri failed with empty result.", "", 0);
                }
                return str2;
            } catch (Exception e) {
                TXCLog.e("TXCopyrightedMediaProcessor", "getCopyrightedMusicUri failed. " + e);
            }
        }
        return str;
    }

    public void a(long j, String str) {
        if (b(str)) {
            this.a.put(Long.valueOf(j), new a(j, str, a(str)));
            a(j, "StartPlay", 0);
        }
    }

    public void a(long j, long j2) {
        a aVar = this.a.get(Long.valueOf(j));
        if (aVar != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - aVar.d >= TimeUnit.SECONDS.toMillis(10)) {
                aVar.d = currentTimeMillis;
                a(j, "TimedEvent", j2);
            }
        }
    }

    public void b(long j, long j2) {
        a(j, "PausePlay", j2);
    }

    public void c(long j, long j2) {
        a(j, "ResumePlay", j2);
    }

    public void d(long j, long j2) {
        a(j, "SeekEvent", j2);
    }

    public void e(long j, long j2) {
        a(j, "FinishPlay", j2);
        a(j, "StartPlay", 0);
    }

    public void f(long j, long j2) {
        a(j, "FinishPlay", j2);
        this.a.remove(Long.valueOf(j));
    }

    private void a(long j, String str, long j2) {
        a aVar;
        if (this.c != null && (aVar = this.a.get(Long.valueOf(j))) != null && b(aVar.b)) {
            TXCLog.i("TXCopyrightedMediaProcessor", "reportPlayInfo id:" + j + " action:" + str + " position:" + j2);
            try {
                this.c.invoke(null, str, aVar.c, Long.valueOf(j2));
            } catch (Exception e) {
                TXCLog.e("TXCopyrightedMediaProcessor", "reportPlayInfo failed. " + e);
            }
        }
    }

    private boolean b(String str) {
        return str != null && str.startsWith("CopyRightMusic://");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TXCopyrightedMediaProcessor.java */
    /* loaded from: classes2.dex */
    public static class a {
        public long a;
        public String b;
        public String c;
        public long d;

        a(long j, String str, String str2) {
            this.a = j;
            this.b = str;
            this.c = str2;
        }
    }
}
