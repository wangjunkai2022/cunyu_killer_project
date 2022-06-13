package com.netease.mobsec;

import android.content.Context;
import com.netease.mobsec.e.f;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class WatchMan {
    private static f a;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class b {
        static final WatchMan a = new WatchMan();

        private b() {
        }
    }

    private WatchMan() {
    }

    private static WatchMan a() {
        return b.a;
    }

    public static String getDeviceId() {
        f fVar;
        return (a() == null || (fVar = a) == null) ? "" : fVar.i();
    }

    public static String getNdInfo() {
        f fVar;
        return (a() == null || (fVar = a) == null) ? "" : fVar.a(9876);
    }

    public static String getNdInfo(int i) {
        f fVar;
        return (a() == null || (fVar = a) == null) ? "" : fVar.a(i);
    }

    public static void getToken(int i, GetTokenCallback getTokenCallback) {
        f fVar;
        if (a() != null && (fVar = a) != null) {
            fVar.a(i, getTokenCallback);
        }
    }

    public static void getToken(GetTokenCallback getTokenCallback) {
        f fVar;
        if (a() != null && (fVar = a) != null) {
            fVar.a(9876, getTokenCallback);
        }
    }

    public static void init(Context context, String str, WatchManConf watchManConf, InitCallback initCallback) {
        if (a() != null) {
            if (a == null) {
                a = f.a(context);
            }
            f fVar = a;
            if (fVar != null) {
                fVar.a(context, str, watchManConf, initCallback);
            }
        }
    }

    public static void setCustomTrackId(String str) {
        f fVar;
        if (a() != null && (fVar = a) != null) {
            fVar.a(str);
        }
    }

    public static void setSeniorCollectStatus(boolean z) {
        f fVar;
        if (a() != null && (fVar = a) != null) {
            fVar.a(z);
        }
    }
}
