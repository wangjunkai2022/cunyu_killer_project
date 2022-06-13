package com.netease.mobsec.c.e;

import android.content.Context;

/* loaded from: classes2.dex */
public class a implements b {
    com.netease.mobsec.factory.a a;
    Context b;

    public a(Context context) {
        this.b = context;
        this.a = new com.netease.mobsec.factory.a(context);
    }

    @Override // com.netease.mobsec.c.e.b
    public final String a(String[] strArr) {
        return this.a.a(strArr);
    }

    @Override // com.netease.mobsec.c.e.b
    public final String b(String[] strArr) {
        return this.a.b(strArr);
    }
}
