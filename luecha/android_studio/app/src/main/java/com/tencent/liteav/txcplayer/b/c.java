package com.tencent.liteav.txcplayer.b;

import android.content.Context;
import com.tencent.liteav.basic.log.TXCLog;
import java.lang.reflect.Method;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXVCubeDownloaderFactory.java */
/* loaded from: classes5.dex */
public class c {
    private static final String a = c.class.getName();

    public static a a(Context context) {
        a b = context != null ? b(context) : null;
        return b == null ? a() : b;
    }

    private static a b(Context context) {
        try {
            Class<?> cls = Class.forName("com.tencent.liteav.thumbplayer.downloader.ThumbPlayerDownloader");
            if (context == null) {
                return null;
            }
            Method method = cls.getMethod("getInstance", Context.class);
            method.setAccessible(true);
            return (a) method.invoke(null, context);
        } catch (Exception e) {
            String str = a;
            TXCLog.e(str, "create ThumbPlayer Downloader exception!" + e.getMessage());
            return null;
        }
    }

    private static a a() {
        try {
            Class.forName("com.tencent.ijk.media.player.IjkDownloadCenter");
            Method method = Class.forName("com.tencent.ijk.media.player.IjkDownloadCenter").getMethod("getInstance", new Class[0]);
            method.setAccessible(true);
            return (a) method.invoke(null, new Object[0]);
        } catch (Exception e) {
            String str = a;
            TXCLog.e(str, "create IjkPlayer Downloader exception!" + e.getMessage());
            return null;
        }
    }
}
