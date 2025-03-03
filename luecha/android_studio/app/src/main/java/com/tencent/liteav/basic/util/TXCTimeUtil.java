package com.tencent.liteav.basic.util;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCTimeUtil {
    private static native long nativeGeneratePtsMS();

    private static native long nativeGetClockTickInHz();

    private static native long nativeGetTimeTick();

    private static native long nativeGetUtcTimeTick();

    private static native void nativeInitAppStartTime();

    public static long generatePtsMS() {
        return nativeGeneratePtsMS();
    }

    public static long getTimeTick() {
        return nativeGetTimeTick();
    }

    public static long getUtcTimeTick() {
        return nativeGetUtcTimeTick();
    }

    public static void initAppStartTime() {
        nativeInitAppStartTime();
    }

    public static long getClockTickInHz() {
        return nativeGetClockTickInHz();
    }

    static {
        h.f();
    }
}
