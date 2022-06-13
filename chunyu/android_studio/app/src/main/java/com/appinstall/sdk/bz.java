package com.appinstall.sdk;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.nio.charset.Charset;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class bz implements ca {
    private final HashMap a = new HashMap();

    public bz() {
        a();
    }

    private void a() {
        this.a.put("cF", "opof");
        this.a.put("aI", "ihse");
        this.a.put("pbR", "jgkf");
        this.a.put("pbH", "pwcf");
        this.a.put("pbT", "aviw");
        this.a.put("gR", "nosw");
        this.a.put("Pk", "jpaw");
        this.a.put("ul", "qpxs");
        this.a.put("ts", "qmvzs");
        this.a.put("iI", "f3ef");
        this.a.put("mA", "dajg");
        this.a.put("sN", "kfgf");
        this.a.put("andI", "mthe");
        this.a.put("md", "ntrh");
        this.a.put("bI", "regh");
        this.a.put("bd", "krtn");
        this.a.put("buiD", "mrth");
        this.a.put("ver", "kjfe");
        this.a.put("verI", "hwef");
        this.a.put("apV", "fefb");
        this.a.put("im", "xefb");
        this.a.put("oa", "effj");
        this.a.put("ga", "feem");
        this.a.put("loI", "fuqd");
        this.a.put("im2", "bwfx");
        this.a.put("si", "bnwp");
        this.a.put("waU", "wpxk");
        this.a.put("verS", "vsna");
    }

    @Override // com.appinstall.sdk.ca
    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (String) this.a.get(str);
    }

    @Override // com.appinstall.sdk.ca
    public String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] bArr = {-4, 110, 4, -38, -91, 80, -53, 111, Ascii.RS, -30, -48, -69, -66, 0, 67, -63, -48, -79, 83, -104, 75, 58, -36, Byte.MAX_VALUE, -37, -82, -69, -22, -10, 70, 19, 83, 112, 43, 124, -73, 85, 79, -123, -87, -19, -26, -66, 101, -42, SignedBytes.MAX_POWER_OF_TWO, 112, -60, 67, -25, -14, -63, -53, -62, Ascii.NAK, -105, Byte.MIN_VALUE, -8, -62, -64, 44, -69, Ascii.NAK, -23};
        byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
        for (int i = 0; i < bytes.length; i++) {
            bytes[i] = (byte) (bytes[i] ^ bArr[i % bArr.length]);
        }
        return cc.a().a().b(bytes);
    }
}
