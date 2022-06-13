package com.tencent.liteav.basic.util;

import android.os.Handler;
import android.os.Looper;
import com.tencent.liteav.basic.log.TXCLog;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCHandler.java */
/* loaded from: classes5.dex */
public class f extends Handler {
    private static final long a = TimeUnit.SECONDS.toMillis(30);
    private final Handler b = new Handler(Looper.getMainLooper());
    private Runnable c = new Runnable() { // from class: com.tencent.liteav.basic.util.f.1
        @Override // java.lang.Runnable
        public void run() {
            TXCLog.e("TXCHandler", "quit looper failed. " + f.this.getLooper());
        }
    };

    public f(Looper looper) {
        super(looper);
    }
}
