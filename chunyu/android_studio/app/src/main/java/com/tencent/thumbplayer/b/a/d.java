package com.tencent.thumbplayer.b.a;

/* loaded from: classes2.dex */
public class d {
    private b a = new b();
    private a b = new a();
    private C0039d c = new C0039d();
    private c d = new c();

    /* loaded from: classes2.dex */
    class a {
        public int a;
        public int b;

        public a() {
            a();
        }

        public void a() {
            this.a = -1;
            this.b = -1;
        }

        public void a(a aVar) {
            aVar.a("av1hwdecoderprofile", this.a);
            aVar.a("av1hwdecoderlevel", this.b);
        }
    }

    /* loaded from: classes2.dex */
    class b {
        public String a;
        public int b;
        public int c;
        public String d;
        public String e;
        public String f;
        public String g;

        public b() {
            a();
        }

        public void a() {
            this.a = "";
            this.b = -1;
            this.c = -1;
            this.d = "";
            this.e = "";
            this.f = "";
            this.g = "";
        }

        public void a(a aVar) {
            aVar.a("flowid", this.a);
            aVar.a("appplatform", this.b);
            aVar.a("apilevel", this.c);
            aVar.a("osver", this.d);
            aVar.a("model", this.e);
            aVar.a("serialno", this.f);
            aVar.a("cpuname", this.g);
        }
    }

    /* loaded from: classes2.dex */
    class c {
        public int a;
        public int b;

        public c() {
            a();
        }

        public void a() {
            this.a = -1;
            this.b = -1;
        }

        public void a(a aVar) {
            aVar.a("hevchwdecoderprofile", this.a);
            aVar.a("hevchwdecoderlevel", this.b);
        }
    }

    /* renamed from: com.tencent.thumbplayer.b.a.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0039d {
        public int a;
        public int b;

        public C0039d() {
            a();
        }

        public void a() {
            this.a = -1;
            this.b = -1;
        }

        public void a(a aVar) {
            aVar.a("vp9hwdecoderprofile", this.a);
            aVar.a("vp9hwdecoderlevel", this.b);
        }
    }

    public b a() {
        return this.a;
    }

    public a b() {
        return this.b;
    }

    public C0039d c() {
        return this.c;
    }

    public c d() {
        return this.d;
    }
}
