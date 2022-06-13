package com.appinstall.sdk;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.appinstall.api.Configuration;
import com.appinstall.sdk.by;

/* loaded from: classes4.dex */
public class aj extends ah {
    private final at n;
    private long o;
    private final cg m = cg.a("St");
    private int p = 0;

    public aj(Context context, Looper looper, d dVar, f fVar, String str, g gVar, Configuration configuration) {
        super(context, looper, dVar, fVar, str, gVar, configuration);
        this.n = new at(context, str);
        this.o = fVar.d();
    }

    private boolean b(aq aqVar) {
        if (aqVar.b() == 2 && !this.c.e()) {
            if (cf.a) {
                cf.b("eventStatsEnabled is false", new Object[0]);
            }
            return false;
        } else if (aqVar.b() == 1 && !this.c.e()) {
            if (cf.a) {
                cf.b("eventStatsEnabled is false", new Object[0]);
            }
            return false;
        } else if (aqVar.b() != 0 || this.c.f()) {
            return true;
        } else {
            if (cf.a) {
                cf.b("registerStatsEnabled is false", new Object[0]);
            }
            return false;
        }
    }

    private void c(aq aqVar) {
        boolean c;
        if (!b(aqVar)) {
            c = false;
        } else {
            this.n.c();
            this.n.a(aqVar.toString());
            c = aqVar.c();
        }
        a(c);
    }

    private boolean c(boolean z) {
        if (z) {
            if (!this.c.e() && !this.c.f()) {
                this.n.d();
                return false;
            } else if (!this.n.b()) {
                return false;
            }
        }
        if (this.c.g() == null) {
            return false;
        }
        return this.c.g().longValue() * 1000 < System.currentTimeMillis() - this.o;
    }

    private void d() {
        this.p = 0;
    }

    private void e() {
        int i = this.p;
        if (i < 100) {
            this.p = i + 1;
        }
    }

    private boolean f() {
        return this.p < 10;
    }

    private void g() {
        this.b.a(600);
        if (!this.b.a()) {
            this.g.b();
            return;
        }
        by a = this.f.a(a(true, "stats/events"), c(), this.n.e());
        a(a.e());
        this.o = System.currentTimeMillis();
        if (a.a() == by.a.SUCCESS) {
            if (cf.a) {
                cf.a("statEvents success", new Object[0]);
            }
            if (!TextUtils.isEmpty(a.c()) && cf.a) {
                cf.b("statEvents warning : %s", a.c());
            }
            d();
            this.n.d();
            this.g.a(this.o);
            return;
        }
        if (cf.a) {
            cf.c("statEvents fail : %s", a.c());
        }
        e();
        if (this.n.a()) {
            this.n.d();
        }
    }

    @Override // com.appinstall.sdk.ah
    public void a() {
        super.a();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 21) {
            c((aq) ((ai) message.obj).a());
            return;
        }
        if (message.what == 22) {
            if (!((Boolean) ((ai) message.obj).a()).booleanValue() && !c(false)) {
                return;
            }
        } else if (message.what == 23) {
            boolean z = true;
            if (!c(true) || !f()) {
                z = false;
            }
            if (!z) {
                return;
            }
        } else if (message.what == 0) {
            a();
            return;
        } else {
            return;
        }
        g();
    }
}
