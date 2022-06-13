package com.appinstall.sdk;

import android.content.Context;
import android.os.Build;

/* loaded from: classes4.dex */
public class ba {
    private static ba b;
    private static final Object c = new Object();
    private final bb a;

    private ba(Context context) {
        this.a = Build.VERSION.SDK_INT >= 29 ? new ay(context) : new az(context);
    }

    public static ba a(Context context) {
        synchronized (c) {
            if (b == null) {
                b = new ba(context.getApplicationContext());
            }
        }
        return b;
    }

    public String a(String str) {
        return this.a.a(str);
    }

    public void a(String str, String str2) {
        this.a.a(str, str2);
    }

    public void b(String str, String str2) {
        String a = a(str);
        if (a == null || !a.equals(str2)) {
            a(str, str2);
        }
    }
}
