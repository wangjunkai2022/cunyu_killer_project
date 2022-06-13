package com.appinstall.sdk;

/* loaded from: classes2.dex */
public class l {
    protected int a;
    protected int b;

    /* JADX INFO: Access modifiers changed from: protected */
    public l(int i) {
        this.a = (i - 8) * 1000;
        this.b = (i * 1000) + 500;
    }

    public int a() {
        if (this.a < 0) {
            this.a = 0;
        }
        return this.a;
    }

    public int b() {
        return this.b;
    }
}
