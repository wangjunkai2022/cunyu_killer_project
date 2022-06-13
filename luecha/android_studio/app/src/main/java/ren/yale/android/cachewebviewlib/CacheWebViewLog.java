package ren.yale.android.cachewebviewlib;

import android.util.Log;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
class CacheWebViewLog {
    private static final String TAG = "CacheWebView";

    CacheWebViewLog() {
    }

    public static void d(String str) {
        Log.d("CacheWebView", str);
    }

    public static void d(String str, boolean z) {
        if (z) {
            d(str);
        }
    }
}
