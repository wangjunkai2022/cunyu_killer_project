package com.tencent.liteav.network.a;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: NetworkInfo.java */
/* loaded from: classes5.dex */
public final class d {
    public static final d a = new d(a.NO_NETWORK, 0);
    public static final d b = new d(a.WIFI, 0);
    public final int c;
    public final a d;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: NetworkInfo.java */
    /* loaded from: classes5.dex */
    public enum a {
        NO_NETWORK,
        WIFI,
        MOBILE
    }

    public d(a aVar, int i) {
        this.d = aVar;
        this.c = i;
    }
}
