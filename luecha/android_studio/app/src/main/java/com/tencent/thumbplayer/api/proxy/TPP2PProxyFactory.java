package com.tencent.thumbplayer.api.proxy;

import android.content.Context;
import com.tencent.thumbplayer.d.e;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPP2PProxyFactory {
    public static ITPPreloadProxy createPreloadManager(Context context, int i) {
        return new e(context, i);
    }
}
