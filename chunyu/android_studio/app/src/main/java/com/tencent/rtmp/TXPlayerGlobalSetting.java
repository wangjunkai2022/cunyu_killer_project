package com.tencent.rtmp;

import android.text.TextUtils;
import com.tencent.liteav.txcplayer.a.b;

/* loaded from: classes2.dex */
public class TXPlayerGlobalSetting {
    public static void setCacheFolderPath(String str) {
        b.a(str);
    }

    public static void setMaxCacheSize(int i) {
        b.a(i);
    }

    public static String getCacheFolderPath() {
        if (TextUtils.equals(b.a(), "NO_SET")) {
            return null;
        }
        return b.a();
    }

    public static int getMaxCacheSize() {
        return Math.max(b.b(), 0);
    }
}
