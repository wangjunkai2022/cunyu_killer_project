package com.tencent.thumbplayer.utils;

/* loaded from: classes2.dex */
public class e {
    private Object a = null;
    private boolean b = false;
    private Throwable c = null;

    private void b(long j) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = false;
        while (j > 0) {
            try {
                wait(j);
                break;
            } catch (InterruptedException unused) {
                z = true;
                j -= System.currentTimeMillis() - currentTimeMillis;
                TPLogUtil.i("TPFutureResult", "getResult wait has InterruptedException, remainTime:" + j);
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized Object a(long j) {
        if (!this.b) {
            b(j);
        }
        if (this.c == null) {
        } else {
            throw this.c;
        }
        return this.a;
    }

    public synchronized void a(Object obj) {
        if (!this.b) {
            this.a = obj;
            this.b = true;
            notifyAll();
        }
    }

    public synchronized void a(Throwable th) {
        if (th != null) {
            this.c = th;
            this.b = true;
            notifyAll();
        }
    }
}
