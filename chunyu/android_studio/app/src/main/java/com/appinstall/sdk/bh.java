package com.appinstall.sdk;

/* loaded from: classes4.dex */
public class bh implements Runnable {
    private final bm a;
    private final bl b;

    /* JADX INFO: Access modifiers changed from: protected */
    public bh(bm bmVar, bl blVar) {
        this.a = bmVar;
        this.b = blVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.b.c() != 0) {
                this.a.c();
            }
        } catch (Exception unused) {
        }
    }
}
