package com.appinstall.sdk;

/* loaded from: classes4.dex */
public class bo implements Cloneable {
    private final bt a;
    private final bs b;

    public bo(bs bsVar, bt btVar) {
        this.a = btVar;
        this.b = bsVar;
    }

    public bo(bt btVar) {
        this(null, btVar);
    }

    public bt a() {
        return this.a;
    }

    public void a(byte[] bArr) {
        bs bsVar = this.b;
        if (bsVar != null) {
            bsVar.a(bArr);
        } else {
            this.a.a(bArr);
        }
    }

    public bs b() {
        return this.b;
    }

    public byte[] c() {
        bs bsVar = this.b;
        return bsVar != null ? bsVar.d() : this.a.g;
    }

    /* renamed from: d */
    public bo clone() {
        bs bsVar = this.b;
        return new bo(bsVar == null ? null : bsVar.clone(), this.a.clone());
    }
}
