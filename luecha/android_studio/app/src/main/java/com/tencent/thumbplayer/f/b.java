package com.tencent.thumbplayer.f;

import android.text.TextUtils;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class b {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;

    public b(b bVar, String str) {
        this.a = "";
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = "TPLogger";
        a(bVar, str);
    }

    public b(String str) {
        this(str, "", "", "");
    }

    public b(String str, String str2, String str3, String str4) {
        this.a = "";
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = "TPLogger";
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        b();
    }

    private void b() {
        this.e = this.a;
        if (!TextUtils.isEmpty(this.b)) {
            this.e += "_C" + this.b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            this.e += "_T" + this.c;
        }
        if (!TextUtils.isEmpty(this.d)) {
            this.e += "_" + this.d;
        }
    }

    public String a() {
        return this.e;
    }

    public void a(b bVar, String str) {
        String str2;
        if (bVar != null) {
            this.a = bVar.a;
            this.b = bVar.b;
            str2 = bVar.c;
        } else {
            str2 = "";
            this.a = str2;
            this.b = str2;
        }
        this.c = str2;
        this.d = str;
        b();
    }

    public void a(String str) {
        this.c = str;
        b();
    }

    public String toString() {
        return "TPLoggerContext{prefix='" + this.a + "', classId='" + this.b + "', taskId='" + this.c + "', model='" + this.d + "', tag='" + this.e + "'}";
    }
}
