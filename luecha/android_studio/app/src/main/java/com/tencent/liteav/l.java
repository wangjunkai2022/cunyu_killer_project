package com.tencent.liteav;

import android.content.Context;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.live2.V2TXLivePlayer;
import com.tencent.live2.impl.a;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXSDKUtil.java */
/* loaded from: classes5.dex */
public class l {
    public static String a() {
        return "";
    }

    public static boolean a(String str) {
        return false;
    }

    public static j a(Context context, int i) {
        if (i == 2 || i == 4 || i == 4 || i == 6 || i == 3) {
            return new h(context);
        }
        return new c(context);
    }

    public static V2TXLivePlayer a(Context context, V2TXLivePlayer v2TXLivePlayer, a.c cVar) {
        if (cVar == a.c.V2TXLiveProtocolTypeRTMP) {
            return new com.tencent.live2.a.a(v2TXLivePlayer, context);
        }
        TXCLog.e("TXSDKUtil", "createV2Player error not support type : " + cVar);
        return null;
    }
}
