package com.umeng.analytics.pro;

import com.umeng.analytics.pro.bj;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* compiled from: TSerializer.java */
/* loaded from: classes4.dex */
public class az {
    private final ByteArrayOutputStream a;
    private final cb b;
    private bp c;

    public az() {
        this(new bj.a());
    }

    public az(br brVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.a = byteArrayOutputStream;
        cb cbVar = new cb(byteArrayOutputStream);
        this.b = cbVar;
        this.c = brVar.a(cbVar);
    }

    public byte[] a(aq aqVar) throws aw {
        this.a.reset();
        aqVar.write(this.c);
        return this.a.toByteArray();
    }

    public String a(aq aqVar, String str) throws aw {
        try {
            return new String(a(aqVar), str);
        } catch (UnsupportedEncodingException unused) {
            throw new aw("JVM DOES NOT SUPPORT ENCODING: " + str);
        }
    }

    public String b(aq aqVar) throws aw {
        return new String(a(aqVar));
    }
}
