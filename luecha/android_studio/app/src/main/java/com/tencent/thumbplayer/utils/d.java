package com.tencent.thumbplayer.utils;

import android.os.SystemClock;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class d {
    private long a;
    private long b;

    public void a() {
        this.a = SystemClock.elapsedRealtime();
        this.b = this.a;
    }

    public void b() {
        this.b = SystemClock.elapsedRealtime();
    }

    public long c() {
        return SystemClock.elapsedRealtime() - this.b;
    }

    public long d() {
        return SystemClock.elapsedRealtime() - this.a;
    }

    public long e() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.b;
        this.b = elapsedRealtime;
        return j;
    }
}
