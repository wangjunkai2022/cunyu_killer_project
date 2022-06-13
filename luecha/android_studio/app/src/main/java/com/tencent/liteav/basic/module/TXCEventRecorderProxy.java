package com.tencent.liteav.basic.module;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCEventRecorderProxy {
    private long a;

    private static native void nativeAddEventMsg(String str, int i, long j, long j2, String str2, int i2);

    private static native void nativeRelease(long j);

    protected void finalize() throws Throwable {
        nativeRelease(this.a);
        this.a = 0;
        super.finalize();
    }

    public static void a(String str, int i, long j, long j2, String str2, int i2) {
        if (str != null && str2 != null) {
            nativeAddEventMsg(str, i, j, j2, str2, i2);
        }
    }
}
