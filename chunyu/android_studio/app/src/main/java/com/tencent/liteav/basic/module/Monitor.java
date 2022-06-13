package com.tencent.liteav.basic.module;

import com.tencent.liteav.basic.util.h;

/* loaded from: classes2.dex */
public class Monitor {
    private static native void nativeOnlineLog(int i, String str, String str2, int i2);

    static {
        h.f();
    }

    public static void a(int i, String str, String str2, int i2) {
        nativeOnlineLog(i, str, str2, i2);
    }
}
