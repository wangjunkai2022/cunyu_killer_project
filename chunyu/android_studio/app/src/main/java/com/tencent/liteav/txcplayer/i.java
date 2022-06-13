package com.tencent.liteav.txcplayer;

import android.content.Context;
import com.tencent.liteav.basic.log.TXCLog;
import java.lang.reflect.Constructor;

/* compiled from: TXVCubePlayerFactory.java */
/* loaded from: classes2.dex */
public class i {
    private static final String a = i.class.getName();

    public static ITXVCubePlayer a(Context context, int i) {
        if (i != 1) {
            return a(context);
        }
        return a();
    }

    private static ITXVCubePlayer a(Context context) {
        try {
            Constructor<?> declaredConstructor = Class.forName("com.tencent.liteav.thumbplayer.ThumbMediaPlayer").getDeclaredConstructor(Context.class);
            declaredConstructor.setAccessible(true);
            return (ITXVCubePlayer) declaredConstructor.newInstance(context);
        } catch (Exception e) {
            String str = a;
            TXCLog.e(str, "create thumbplayer exception: " + e.getMessage());
            return null;
        }
    }

    private static ITXVCubePlayer a() {
        try {
            return (ITXVCubePlayer) Class.forName("com.tencent.ijk.media.player.IjkMediaPlayer").newInstance();
        } catch (Exception e) {
            String str = a;
            TXCLog.e(str, "create ijkplayer exception: " + e.getMessage());
            return null;
        }
    }
}
