package com.appinstall.sdk;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public class aq {
    private boolean a = false;
    private final int b;
    private final String c;
    private final Long d;
    private final Long e;

    private aq(int i, String str, Long l, Long l2) {
        this.b = i;
        this.c = str;
        this.d = l;
        this.e = l2;
    }

    public static aq a() {
        return new aq(0, "$register", Long.valueOf(System.currentTimeMillis()), 1L);
    }

    public static aq a(long j) {
        return new aq(1, null, Long.valueOf(System.currentTimeMillis()), Long.valueOf(j));
    }

    public static aq a(String str, long j) {
        return new aq(2, str, Long.valueOf(System.currentTimeMillis()), Long.valueOf(j));
    }

    public void a(boolean z) {
        this.a = z;
    }

    public int b() {
        return this.b;
    }

    public boolean c() {
        return this.a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(this.c)) {
            sb.append(this.c);
            sb.append(",");
        }
        Long l = this.d;
        if (l != null) {
            sb.append(l);
            sb.append(",");
        }
        Long l2 = this.e;
        if (l2 != null) {
            sb.append(l2);
            sb.append(",");
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
            sb.append(";");
        }
        return sb.toString();
    }
}
