package com.tencent.thumbplayer.api;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer;
import com.tencent.thumbplayer.g.b;
import com.tencent.thumbplayer.tplayer.d;
import com.tencent.thumbplayer.tplayer.e;
import com.tencent.thumbplayer.utils.TPLogUtil;

/* loaded from: classes2.dex */
public class TPPlayerFactory {
    private static final String LOG_TAG = "TPPlayerFactory";

    public static ITPRichMediaAsyncRequester createRichMediaASyncRequester(Context context) {
        return null;
    }

    public static ITPRichMediaSynchronizer createRichMediaSynchronizer(Context context) {
        try {
            return new b(context.getApplicationContext());
        } catch (Throwable th) {
            TPLogUtil.e(LOG_TAG, "Failed to create rich media synchronizer:" + th.getMessage());
            return null;
        }
    }

    public static ITPPlayer createTPPlayer(Context context) {
        return (ITPPlayer) new d(new com.tencent.thumbplayer.tplayer.b(context)).a();
    }

    public static ITPPlayer createTPPlayer(Context context, Looper looper) {
        return (ITPPlayer) new d(new com.tencent.thumbplayer.tplayer.b(context, looper)).a();
    }

    public static ITPPlayer createTPPlayer(Context context, Looper looper, Looper looper2) {
        return (ITPPlayer) new d(new com.tencent.thumbplayer.tplayer.b(context, looper, looper2)).a();
    }

    public static ITPPlayer createTPPlayer(Context context, Looper looper, Looper looper2, com.tencent.thumbplayer.f.b bVar) {
        return (ITPPlayer) new d(new com.tencent.thumbplayer.tplayer.b(context, looper, looper2, bVar)).a();
    }

    public static ITPPlayer createTPPlayer(Context context, com.tencent.thumbplayer.f.b bVar) {
        return (ITPPlayer) new d(new com.tencent.thumbplayer.tplayer.b(context, null, null, bVar)).a();
    }

    public static ITPSurface createTPSurface(SurfaceTexture surfaceTexture) {
        return new e(surfaceTexture);
    }
}
