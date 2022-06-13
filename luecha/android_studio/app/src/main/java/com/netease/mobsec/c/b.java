package com.netease.mobsec.c;

import android.content.Context;
import com.netease.mobsec.c.e.a;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class b {
    private static b c = null;
    public static int d = 2;
    public static int e;
    private final Context a;
    private List<a> b;

    private b(Context context) {
        this.a = context;
        a();
    }

    public static b a(Context context) {
        if (c == null) {
            c = new b(context);
        }
        return c;
    }

    private void a() {
        this.b = new ArrayList(8);
        for (int i = 0; i < 8; i++) {
            this.b.add(null);
        }
        this.b.set(5, new a(this.a));
    }

    public final a a(int i) {
        return this.b.get(i);
    }
}
