package com.appinstall.sdk;

import android.net.Uri;
import android.util.Pair;
import com.appinstall.sdk.by;
import com.umeng.analytics.pro.ai;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class ad extends j {
    final /* synthetic */ Uri c;
    final /* synthetic */ m d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad(m mVar, int i, Uri uri) {
        super(i);
        this.d = mVar;
        this.c = uri;
    }

    /* renamed from: c */
    public by call() throws Exception {
        by byVar;
        HashMap hashMap;
        this.d.i.a("wakeup", a());
        this.d.b.a((long) b());
        if (!this.d.b.a()) {
            String b = this.d.g.b();
            by byVar2 = new by(by.a.ERROR, -12);
            byVar2.b("初始化时错误：" + b);
            return byVar2;
        }
        Uri uri = this.c;
        if (uri == null) {
            hashMap = new HashMap();
            hashMap.put("bd", this.d.h.h());
            hashMap.put("loI", this.d.h.l());
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(1);
            this.d.r.execute(new ae(this, linkedBlockingQueue));
            Pair pair = (Pair) linkedBlockingQueue.poll(3, TimeUnit.SECONDS);
            hashMap.put(pair.first, pair.second);
        } else {
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null || pathSegments.size() <= 0) {
                byVar = new by(by.a.SUCCESS, 1);
            } else if (pathSegments.get(0).equalsIgnoreCase(ai.aD)) {
                if (pathSegments.size() > 1) {
                    String a = cd.a(pathSegments.get(1), 8);
                    by byVar3 = new by(by.a.SUCCESS, 1);
                    byVar3.c(a);
                    return byVar3;
                }
                by byVar4 = new by(by.a.SUCCESS, 1);
                byVar4.c("");
                return byVar4;
            } else if (pathSegments.get(0).equalsIgnoreCase("h")) {
                hashMap = new HashMap();
                hashMap.put("waU", this.c.toString());
            } else {
                byVar = new by(by.a.SUCCESS, 1);
            }
            byVar.b("The wakeup parameter is invalid");
            return byVar;
        }
        by a2 = this.d.f.a(this.d.a(false, "decode-wakeup-url"), this.d.c(), hashMap);
        this.d.a(a2.e());
        return a2;
    }
}
