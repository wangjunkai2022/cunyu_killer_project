package com.appinstall.sdk;

import android.net.Uri;
import android.text.TextUtils;
import com.appinstall.sdk.by;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class p extends k {
    final /* synthetic */ Uri c;
    final /* synthetic */ m d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(m mVar, int i, Uri uri) {
        super(i);
        this.d = mVar;
        this.c = uri;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.d.i.a("stat", a());
        this.d.b.a((long) b());
        if (!this.d.b.a()) {
            String b = this.d.g.b();
            if (cf.a) {
                cf.a("初始化时错误：" + b, new Object[0]);
            }
        } else if (this.d.c.b()) {
            HashMap hashMap = new HashMap();
            Uri uri = this.c;
            if (uri != null) {
                hashMap.put("ul", uri.toString());
            }
            by a = this.d.f.a(this.d.a(true, "stats/wakeup"), this.d.c(), hashMap);
            this.d.a(a.e());
            if (a.a() == by.a.SUCCESS) {
                if (cf.a) {
                    cf.a("statWakeup success", new Object[0]);
                }
                if (!TextUtils.isEmpty(a.c()) && cf.a) {
                    cf.b("statWakeup warning : %s", a.c());
                }
            } else if (cf.a) {
                cf.c("statWakeup fail : %s", a.c());
            }
        } else if (cf.a) {
            cf.a("wakeupStatsEnabled is disable", new Object[0]);
        }
    }
}
