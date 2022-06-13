package ren.yale.android.cachewebviewlib;

import android.util.Log;

/* loaded from: classes2.dex */
class CacheWebViewLog {
    private static final String TAG = "CacheWebView";

    CacheWebViewLog() {
    }

    public static void d(String str) {
        Log.d(TAG, str);
    }

    public static void d(String str, boolean z) {
        if (z) {
            d(str);
        }
    }
}
