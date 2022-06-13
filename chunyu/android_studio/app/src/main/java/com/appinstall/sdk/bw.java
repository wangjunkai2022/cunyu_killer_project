package com.appinstall.sdk;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class bw {
    private static final cg a = cg.a("HM");
    private static bw b;
    private boolean d;
    private final bz e = new bz();
    private final cb f = new cb();
    private final bx c = new bx();

    private bw() {
    }

    public static bw a() {
        if (b == null) {
            synchronized (bw.class) {
                if (b == null) {
                    b = new bw();
                }
            }
        }
        return b;
    }

    private String a(Map map) {
        if (map == null) {
            return "";
        }
        HashMap hashMap = new HashMap(map);
        ca caVar = this.d ? this.e : this.f;
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : hashMap.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (!(str == null || value == null)) {
                String a2 = caVar.a(str);
                if (!TextUtils.isEmpty(a2)) {
                    if (value instanceof String) {
                        String b2 = caVar.b((String) value);
                        if (!TextUtils.isEmpty(b2)) {
                            sb.append(a2);
                            sb.append("=");
                            sb.append(b2);
                            sb.append("&");
                        }
                    } else if (value instanceof List) {
                        for (String str2 : (List) value) {
                            String b3 = caVar.b(str2);
                            if (!TextUtils.isEmpty(b3)) {
                                sb.append(a2);
                                sb.append("=");
                                sb.append(b3);
                                sb.append("&");
                            }
                        }
                    }
                }
            }
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public by a(String str, Map map, String str2) {
        return a(str, map, str2, true);
    }

    public by a(String str, Map map, String str2, boolean z) {
        String a2 = a(map);
        byte[] bArr = new byte[0];
        try {
            bArr = str2.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        HashMap hashMap = new HashMap();
        if (z) {
            hashMap.put("content-type", "text/plain;charset=utf-8");
            hashMap.put("content-length", String.valueOf(bArr.length));
        }
        return this.c.a(str, a2, bArr, hashMap);
    }

    public by a(String str, Map map, Map map2) {
        return a(str, map, a(map2), false);
    }

    public void a(boolean z) {
        this.d = z;
    }
}
