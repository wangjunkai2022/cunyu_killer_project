package com.tencent.thumbplayer.adapter;

import android.text.TextUtils;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class b {
    private static String t = "TPPlaybackInfo";
    private String a;
    private String b;
    private int c;
    private int d;
    private long e;
    private long f;
    private long g;
    private String h;
    private int i;
    private long j;
    private int k;
    private long l;
    private int m;
    private long n;
    private long o;
    private long p;
    private int q;
    private String r;
    private long s = -1;
    private int u;

    public static b a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new b();
        }
        String[] split = str.split("\n");
        HashMap hashMap = new HashMap();
        for (int i = 0; i < split.length; i++) {
            if (!split[i].startsWith("#") && split[i].contains("=")) {
                String[] split2 = split[i].split("=");
                if (split2 == null || split2.length < 2) {
                    String str2 = t;
                    StringBuilder sb = new StringBuilder();
                    sb.append("parseInfo, ");
                    sb.append((split2 == null || split2.length < 1) ? "param null, " : split2[0]);
                    sb.append("is empty");
                    TPLogUtil.i(str2, sb.toString());
                } else {
                    hashMap.put(split2[0], split2[1]);
                }
            }
        }
        b bVar = new b();
        if (hashMap.containsKey("ContainerFormat")) {
            bVar.b((String) hashMap.get("ContainerFormat"));
        }
        if (hashMap.containsKey("VideoCodec")) {
            bVar.d((String) hashMap.get("VideoCodec"));
        }
        if (hashMap.containsKey("AudioCodec")) {
            bVar.e((String) hashMap.get("AudioCodec"));
        }
        if (hashMap.containsKey("Width")) {
            bVar.a(Long.valueOf((String) hashMap.get("Width")).longValue());
        }
        if (hashMap.containsKey("Height")) {
            bVar.b(Long.valueOf((String) hashMap.get("Height")).longValue());
        }
        if (hashMap.containsKey("VideoBitRate")) {
            bVar.c(Long.valueOf((String) hashMap.get("VideoBitRate")).longValue());
        }
        if (hashMap.containsKey("AudioBitRate")) {
            bVar.d(Long.valueOf((String) hashMap.get("AudioBitRate")).longValue());
        }
        if (hashMap.containsKey("SampleRate")) {
            bVar.e(Long.valueOf((String) hashMap.get("SampleRate")).longValue());
        }
        if (hashMap.containsKey("Channels")) {
            bVar.d(Integer.valueOf((String) hashMap.get("Channels")).intValue());
        }
        if (hashMap.containsKey("Definition")) {
            bVar.c((String) hashMap.get("Definition"));
        }
        return bVar;
    }

    public long a() {
        return this.e;
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(long j) {
        this.e = j;
    }

    public long b() {
        return this.f;
    }

    public void b(int i) {
        this.q = i;
    }

    public void b(long j) {
        this.f = j;
    }

    public void b(String str) {
        this.a = str;
    }

    public String c() {
        return this.a;
    }

    public void c(int i) {
        this.i = i;
    }

    public void c(long j) {
        this.g = j;
    }

    public void c(String str) {
        this.r = str;
    }

    public String d() {
        return this.r;
    }

    public void d(int i) {
        this.k = i;
    }

    public void d(long j) {
        this.j = j;
    }

    public void d(String str) {
        this.b = str;
    }

    public int e() {
        return this.c;
    }

    public void e(int i) {
        this.m = i;
    }

    public void e(long j) {
        this.l = j;
    }

    public void e(String str) {
        this.h = str;
    }

    public long f() {
        return this.g;
    }

    public void f(int i) {
        this.u = i;
    }

    public void f(long j) {
        this.n = j;
    }

    public int g() {
        return this.m;
    }

    public void g(int i) {
        this.d = i;
    }

    public void g(long j) {
        this.s = j;
    }

    public long h() {
        return this.n;
    }

    public void h(long j) {
        this.o = j;
    }

    public long i() {
        return this.s;
    }

    public void i(long j) {
        this.p = j;
    }

    public long j() {
        return this.o;
    }

    public long k() {
        return this.p;
    }

    public int l() {
        return this.u;
    }

    public int m() {
        return this.d;
    }

    public void n() {
        this.a = null;
        this.b = null;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = null;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.q = 2;
        this.m = 0;
        this.n = 0;
        this.o = 0;
        this.p = 0;
        this.u = 0;
        this.s = -1;
    }
}
