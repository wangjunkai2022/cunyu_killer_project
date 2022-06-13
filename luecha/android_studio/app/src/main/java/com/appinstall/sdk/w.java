package com.appinstall.sdk;

import android.text.TextUtils;
import android.util.Pair;
import com.appinstall.sdk.by;
import java.util.HashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class w implements Runnable {
    final /* synthetic */ bl a;
    final /* synthetic */ m b;

    public w(m mVar, bl blVar) {
        this.b = mVar;
        this.a = blVar;
    }

    private long a(int i) {
        if (i < 3) {
            return 1;
        }
        return i < 9 ? 10 : 60;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        d dVar;
        e eVar;
        System.currentTimeMillis();
        e c = this.b.b.c();
        if (c == null) {
            c = this.b.g.a(this.b.d);
        }
        if (c == e.a) {
            this.b.g.e();
        }
        if (c == e.a || c == e.c || c == e.e) {
            this.b.b.a(e.b);
            HashMap hashMap = new HashMap();
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            bl blVar = this.a;
            if (blVar == null) {
                this.b.r.execute(new x(this, linkedBlockingQueue));
                i = 1;
            } else {
                if (blVar.b(2)) {
                    hashMap.put("pbH", this.a.b());
                    if (cf.a) {
                        cf.a("获取到 %s", "pbH");
                    }
                } else if (this.a.b(1)) {
                    hashMap.put("pbT", this.a.a());
                    if (cf.a) {
                        cf.a("获取到 %s", "pbT");
                    }
                }
                this.b.i.a(false);
                i = 0;
            }
            this.b.r.execute(new y(this, linkedBlockingQueue));
            this.b.r.execute(new z(this, linkedBlockingQueue));
            int i2 = i + 1 + 1 + 1;
            this.b.r.execute(new aa(this, linkedBlockingQueue));
            if (this.b.k.isAdEnabled()) {
                if (!this.b.k.isMacDisabled()) {
                    hashMap.put("mA", this.b.p.a());
                }
                if (!this.b.k.isImeiDisabled()) {
                    Pair b = this.b.p.b();
                    hashMap.put("im", b.first);
                    hashMap.put("im2", b.second);
                }
                if (this.b.k.getGaid() == null) {
                    i2++;
                    this.b.r.execute(new ab(this, linkedBlockingQueue));
                } else {
                    if (cf.a) {
                        cf.a("传入的 gaid 为 " + this.b.k.getGaid(), new Object[0]);
                    }
                    hashMap.put("ga", this.b.k.getGaid());
                }
                if (this.b.k.getOaid() == null) {
                    i2++;
                    this.b.r.execute(new ac(this, linkedBlockingQueue));
                } else {
                    if (cf.a) {
                        cf.a("传入的 oaid 为 " + this.b.k.getOaid(), new Object[0]);
                    }
                    hashMap.put("oa", this.b.k.getOaid());
                }
            }
            hashMap.put("md", this.b.h.e());
            hashMap.put("bI", this.b.h.f());
            hashMap.put("buiD", this.b.h.g());
            hashMap.put("bd", this.b.h.h());
            hashMap.put("loI", this.b.h.l());
            while (i2 > 0) {
                try {
                    Pair pair = (Pair) linkedBlockingQueue.poll(1, TimeUnit.SECONDS);
                    if (pair != null) {
                        i2--;
                        if (!TextUtils.isEmpty((CharSequence) pair.first) && !TextUtils.isEmpty((CharSequence) pair.second)) {
                            hashMap.put(pair.first, pair.second);
                            if (cf.a) {
                                cf.a("获取到 %s", pair.first);
                            }
                        }
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            by a = this.b.f.a(this.b.a(false, "init"), this.b.c(), hashMap);
            int i3 = 0;
            while (a.a() == by.a.FAIL) {
                try {
                    this.b.b.b(a(i3));
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                if (i3 < 100) {
                    i3++;
                }
                a = this.b.f.a(this.b.a(false, "init"), this.b.c(), hashMap);
            }
            this.b.a(a.e());
            if (a.a() == by.a.SUCCESS) {
                this.b.g.b(a.d());
                this.b.g.c(a.c());
                dVar = this.b.b;
                eVar = e.d;
            } else if (a.a() == by.a.ERROR) {
                this.b.g.c(a.c());
                dVar = this.b.b;
                eVar = e.e;
            } else {
                if (a.a() == by.a.FAIL) {
                    this.b.g.c(a.c());
                    dVar = this.b.b;
                    eVar = e.c;
                }
                this.b.b.d();
                this.b.g.a(this.b.d, this.b.b.c());
            }
            dVar.a(eVar);
            this.b.b.d();
            this.b.g.a(this.b.d, this.b.b.c());
        } else {
            if (c == e.d) {
                this.b.c.a(this.b.g.c());
                this.b.c.i();
                this.b.b.a(c);
                this.b.b.d();
                this.b.i.a(false);
            }
            System.currentTimeMillis();
        }
        this.b.g();
        System.currentTimeMillis();
    }
}
