package com.appinstall.sdk;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class cb implements ca {
    private final HashMap a = new HashMap();

    public cb() {
        a();
    }

    private void a() {
        this.a.put("cF", "certFinger");
        this.a.put("aI", "apkInfo");
        this.a.put("pbR", "pbReaded");
        this.a.put("pbH", "pbHtml");
        this.a.put("pbT", "pbText");
        this.a.put("gR", "gReferrer");
        this.a.put("Pk", "pkg");
        this.a.put("ul", ImagesContract.URL);
        this.a.put("ts", "timestamp");
        this.a.put("iI", "installId");
        this.a.put("mA", "macAddress");
        this.a.put("sN", "serialNumber");
        this.a.put("andI", "androidId");
        this.a.put("md", "model");
        this.a.put("bI", "buildId");
        this.a.put("bd", "brand");
        this.a.put("buiD", "buildDisplay");
        this.a.put("ver", "version");
        this.a.put("verI", "versionCode");
        this.a.put("apV", "apiVersion");
        this.a.put("im", "imei");
        this.a.put("oa", "oaid");
        this.a.put("ga", "gaid");
        this.a.put("loI", "localIP");
        this.a.put("im2", "imei2");
        this.a.put("si", "simulator");
        this.a.put("waU", "wakeupUrl");
        this.a.put("verS", "versionName");
    }

    @Override // com.appinstall.sdk.ca
    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = (String) this.a.get(str);
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            return URLEncoder.encode(str2, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.appinstall.sdk.ca
    public String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }
}
