package com.appinstall.sdk;

import android.text.TextUtils;
import com.appinstall.sdk.by;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class q extends k {
    final /* synthetic */ m c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(m mVar, int i) {
        super(i);
        this.c = mVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.i.a("stat", a());
        this.c.b.a((long) b());
        if (!this.c.b.a()) {
            String b = this.c.g.b();
            if (cf.a) {
                cf.a("初始化时错误：" + b, new Object[0]);
            }
        } else if (this.c.c.f()) {
            by a = this.c.f.a(this.c.a(true, "stats/register"), this.c.c(), "");
            this.c.a(a.e());
            if (a.a() == by.a.SUCCESS) {
                if (cf.a) {
                    cf.a("statRegister success", new Object[0]);
                }
                if (!TextUtils.isEmpty(a.c()) && cf.a) {
                    cf.b("statRegister warning : %s", a.c());
                }
            } else if (cf.a) {
                cf.c("statRegister fail : %s", a.c());
            }
        } else if (cf.a) {
            cf.a("registerStatsEnabled is disable", new Object[0]);
        }
    }
}
