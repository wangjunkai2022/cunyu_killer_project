package com.appinstall.sdk;

import android.content.Context;

/* loaded from: classes4.dex */
public abstract class ax implements bb {
    protected Context a;
    private volatile String b = null;
    private volatile boolean c = false;

    public ax(Context context) {
        this.a = context;
    }

    @Override // com.appinstall.sdk.bb
    public synchronized String a(String str) {
        if (!this.c) {
            return b(str);
        }
        return this.b;
    }

    @Override // com.appinstall.sdk.bb
    public synchronized void a(String str, String str2) {
        if (str2 != null) {
            if (!this.c || !str2.equals(this.b)) {
                if (b(str, str2)) {
                    this.c = true;
                } else {
                    this.c = false;
                }
                this.b = str2;
            }
        }
    }

    abstract String b(String str);

    abstract boolean b(String str, String str2);
}
