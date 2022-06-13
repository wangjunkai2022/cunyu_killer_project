package com.appinstall.sdk;

import com.appinstall.sdk.by;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class ag extends j {
    final /* synthetic */ boolean c;
    final /* synthetic */ m d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ag(m mVar, int i, boolean z) {
        super(i);
        this.d = mVar;
        this.c = z;
    }

    /* renamed from: c */
    public by call() throws Exception {
        int a = a();
        if (a <= 0) {
            a = 500;
        }
        if (this.c) {
            this.d.i.a("install");
        } else {
            this.d.i.a("install", a);
        }
        this.d.b.a((long) b());
        if (!this.d.b.b() && this.c) {
            by byVar = new by(by.a.ERROR, -4);
            byVar.b("超时返回，请重试");
            return byVar;
        } else if (!this.d.b.a()) {
            String b = this.d.g.b();
            by byVar2 = new by(by.a.ERROR, -12);
            byVar2.b("初始化时错误：" + b);
            return byVar2;
        } else {
            String a2 = this.d.g.a();
            by byVar3 = new by(by.a.SUCCESS, 0);
            byVar3.c(a2);
            this.d.a(byVar3.e());
            return byVar3;
        }
    }
}
