package com.tencent.liteav.network;

import android.content.Context;
import com.tencent.liteav.basic.util.h;
import java.util.regex.Pattern;

/* compiled from: UploadQualityReport.java */
/* loaded from: classes2.dex */
public class s {
    private Context a;
    private String b;
    private String c;
    private String e;
    private long f;
    private long g;
    private String h;
    private long i;
    private long j;
    private long k;
    private long l;
    private long m;
    private long n;
    private long o;
    private long p;
    private long q;
    private long r;
    private long s;
    private long t;
    private long u;
    private long v;
    private boolean w = true;
    private String d = "Android";

    public s(Context context) {
        this.a = context.getApplicationContext();
        this.b = h.b(this.a);
        q.a().a(this.a);
        a();
    }

    public void a() {
        this.c = "";
        this.f = 0;
        this.g = -1;
        this.h = "";
        this.i = -1;
        this.j = -1;
        this.k = -1;
        this.l = -1;
        this.e = "";
        this.m = 0;
        this.n = 0;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.w = true;
    }

    private void e() {
        long j = this.p;
        long j2 = this.q;
        a();
        this.n = j;
        this.o = j2;
    }

    public void b() {
        this.f = System.currentTimeMillis();
        this.c = q.a().b();
    }

    public void c() {
        f();
        e();
    }

    public void a(boolean z) {
        this.l = z ? 2 : 1;
        if (z) {
            this.w = false;
        }
    }

    public void a(String str) {
        this.e = str;
    }

    public void a(boolean z, String str) {
        this.h = str;
        if (z) {
            this.g = 1;
        } else if (str != null) {
            int indexOf = str.indexOf(":");
            if (indexOf != -1) {
                str = str.substring(0, indexOf);
            }
            if (str != null) {
                for (String str2 : str.split("[.]")) {
                    if (!c(str2)) {
                        this.g = 3;
                        return;
                    }
                }
                this.g = 2;
            }
        }
    }

    public void a(long j, long j2, long j3) {
        this.i = j;
        this.j = j2;
        this.k = j3;
    }

    public void d() {
        this.m++;
    }

    public void a(long j, long j2) {
        this.p = j;
        this.q = j2;
    }

    public void b(long j, long j2) {
        this.v++;
        this.r += j;
        this.s += j2;
        if (j > this.t) {
            this.t = j;
        }
        if (j2 > this.u) {
            this.u = j2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x014b  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private void f() {
        /*
        // Method dump skipped, instructions count: 370
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.network.s.f():void");
    }

    private boolean b(String str) {
        return str == null || str.length() == 0;
    }

    private boolean c(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }
}
