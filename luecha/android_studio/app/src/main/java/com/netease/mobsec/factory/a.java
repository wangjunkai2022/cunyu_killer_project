package com.netease.mobsec.factory;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class a {
    private final JNIFactory a = JNIFactory.getInstance();
    private final Context b;

    public a(Context context) {
        this.b = context;
    }

    public final String a(String[] strArr) {
        String w230921e1b36f7799;
        synchronized (a.class) {
            w230921e1b36f7799 = this.a.w230921e1b36f7799(this.b, strArr);
        }
        return w230921e1b36f7799;
    }

    public final String b(String[] strArr) {
        String w238jfd9349jdj394;
        synchronized (a.class) {
            w238jfd9349jdj394 = this.a.w238jfd9349jdj394(this.b, strArr);
        }
        return w238jfd9349jdj394;
    }
}
