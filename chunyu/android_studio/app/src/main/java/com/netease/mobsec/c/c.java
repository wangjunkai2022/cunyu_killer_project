package com.netease.mobsec.c;

import android.content.Context;
import com.netease.mobsec.c.f.a;
import com.netease.mobsec.c.f.b;

/* loaded from: classes2.dex */
public class c {
    private static volatile c c;
    private static volatile a d;
    private final b a;
    private final Context b;

    private c(Context context) {
        this.a = b.a(context);
        this.b = context;
        b().b(context);
    }

    private a a(int i) {
        return this.a.a(i);
    }

    public static c a(Context context) {
        if (c == null && context != null) {
            try {
                synchronized (c.class) {
                    if (c == null) {
                        c = new c(context);
                    }
                }
                return c;
            } catch (Throwable unused) {
                return null;
            }
        }
        return c;
    }

    public static a b() {
        if (d == null) {
            d = new b();
        }
        return d;
    }

    public com.netease.mobsec.c.e.b a() {
        return (com.netease.mobsec.c.e.b) a(5);
    }
}
