package com.appinstall.sdk;

import android.os.Handler;
import android.os.Looper;
import com.appinstall.sdk.by;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes4.dex */
public class al implements Runnable {
    private final ThreadPoolExecutor a;
    private final j b;
    private final ak c;
    private final Handler d = new Handler(Looper.getMainLooper());

    public al(ThreadPoolExecutor threadPoolExecutor, j jVar, ak akVar) {
        this.a = threadPoolExecutor;
        this.b = jVar;
        this.c = akVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        by byVar;
        String str;
        Future submit = this.a.submit(this.b);
        try {
            byVar = (by) submit.get((long) this.b.b(), TimeUnit.MILLISECONDS);
        } catch (TimeoutException unused) {
            submit.cancel(true);
            byVar = new by(by.a.ERROR, -4);
            str = "请求超时";
            byVar.b(str);
            this.d.post(new am(this, byVar));
        } catch (Exception e) {
            byVar = new by(by.a.ERROR, -2);
            str = "请求异常 : " + e.getMessage();
            byVar.b(str);
            this.d.post(new am(this, byVar));
        }
        this.d.post(new am(this, byVar));
    }
}
