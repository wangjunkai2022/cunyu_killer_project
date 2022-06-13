package com.tencent.thumbplayer.e;

/* loaded from: classes2.dex */
public class b {
    private int a;
    private Object[] b;
    private long c;
    private long d;

    /* loaded from: classes2.dex */
    public static class a {
        private b a = new b();

        public a a(int i) {
            this.a.a = i;
            return this;
        }

        public a a(long j) {
            this.a.a(j);
            return this;
        }

        public a a(Object... objArr) {
            this.a.b = objArr;
            return this;
        }

        public b a() {
            return this.a;
        }

        public a b(long j) {
            this.a.b(j);
            return this;
        }
    }

    public int a() {
        return this.a;
    }

    public void a(long j) {
        this.c = j;
    }

    public void b(long j) {
        this.d = j;
    }

    public Object[] b() {
        return this.b;
    }

    public long c() {
        return this.c;
    }

    public long d() {
        return this.d;
    }
}
