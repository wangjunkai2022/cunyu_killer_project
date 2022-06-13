package com.appinstall.sdk;

/* loaded from: classes2.dex */
public class bl {
    private String a;
    private String b;
    private int c;
    private boolean d;

    public String a() {
        return this.a;
    }

    public void a(int i) {
        this.c = i | this.c;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public boolean b(int i) {
        return (i & this.c) != 0;
    }

    public int c() {
        return this.c;
    }
}
