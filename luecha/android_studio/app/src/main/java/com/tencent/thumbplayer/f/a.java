package com.tencent.thumbplayer.f;

import com.tencent.thumbplayer.utils.TPLogUtil;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class a {
    private String a;
    private b b;

    public a(b bVar) {
        this.b = bVar;
        this.a = this.b.a();
    }

    public a(b bVar, String str) {
        this.b = new b(bVar, str);
        this.a = this.b.a();
    }

    public b a() {
        return this.b;
    }

    public void a(b bVar) {
        if (bVar == null) {
            bVar = new b(this.a);
        }
        this.b = bVar;
    }

    public void a(Exception exc) {
        TPLogUtil.e(this.b.a(), exc);
    }

    public void a(String str) {
        this.b.a(str);
    }

    public String b() {
        return this.b.a();
    }

    public void b(String str) {
        TPLogUtil.d(this.b.a(), str);
    }

    public void c(String str) {
        TPLogUtil.i(this.b.a(), str);
    }

    public void d(String str) {
        TPLogUtil.w(this.b.a(), str);
    }

    public void e(String str) {
        TPLogUtil.e(this.b.a(), str);
    }
}
