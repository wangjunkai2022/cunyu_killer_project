package com.tencent.liteav.basic.util;

import java.lang.ref.WeakReference;

/* compiled from: AutoLifeHolder.java */
/* loaded from: classes2.dex */
public class a<T> {
    private final AbstractC0024a<T> b;
    private final ThreadLocal<T> a = new ThreadLocal<>();
    private WeakReference<T> c = new WeakReference<>(null);

    /* compiled from: AutoLifeHolder.java */
    /* renamed from: com.tencent.liteav.basic.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface AbstractC0024a<T> {
        T a();
    }

    public a(AbstractC0024a<T> aVar) {
        this.b = aVar;
    }

    public T a() {
        T t = this.a.get();
        if (t != null) {
            return t;
        }
        T b = b();
        this.a.set(b);
        return b;
    }

    private T b() {
        T t = this.c.get();
        if (t == null) {
            synchronized (this) {
                t = this.c.get();
                if (t == null) {
                    t = this.b.a();
                    this.c = new WeakReference<>(t);
                }
            }
        }
        return t;
    }
}
