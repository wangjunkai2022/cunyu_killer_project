package com.tencent.thumbplayer.utils;

import android.content.Context;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class c {
    private a a;
    private a b;
    private ArrayList<String> c;
    private String d;

    public c(Context context, String str) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.a = a.a(context, str);
        this.d = str + "_key";
        this.b = a.a(context, this.d);
        this.c = (ArrayList) this.b.b(this.d);
        if (this.c == null) {
            this.c = new ArrayList<>();
        }
    }

    public synchronized Object a() {
        Object b;
        ArrayList arrayList = (ArrayList) this.b.b(this.d);
        ArrayList arrayList2 = null;
        if (arrayList != null && arrayList.size() > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                String str = (String) arrayList.get(i);
                if (!TextUtils.isEmpty(str) && (b = this.a.b(str)) != null) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(b);
                }
            }
            this.a.a();
            this.b.a();
            this.c.clear();
            return arrayList2;
        }
        return null;
    }

    public synchronized void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.a.c(str);
            this.c.remove(str);
            this.b.c(this.d);
            if (!this.c.isEmpty()) {
                this.b.a(this.d, this.c);
            }
        }
    }

    public synchronized void a(String str, Serializable serializable) {
        if (serializable != null) {
            if (!TextUtils.isEmpty(str)) {
                this.a.c(str);
                this.a.a(str, serializable);
                this.c.remove(str);
                this.c.add(str);
                this.b.c(this.d);
                this.b.a(this.d, this.c);
            }
        }
    }

    public synchronized Object b(String str) {
        return this.a.b(str);
    }

    public synchronized ArrayList<String> b() {
        return (ArrayList) this.c.clone();
    }

    public synchronized void c() {
        this.a.a();
        this.b.a();
        this.c.clear();
    }
}
