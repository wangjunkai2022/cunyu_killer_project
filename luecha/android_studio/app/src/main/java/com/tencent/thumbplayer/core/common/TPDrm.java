package com.tencent.thumbplayer.core.common;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class TPDrm {
    private static final String TAG = "TPDrm";
    private static boolean mIsLibLoaded;

    static {
        try {
            TPNativeLibraryLoader.loadLibIfNeeded(null);
            mIsLibLoaded = true;
        } catch (UnsupportedOperationException e) {
            TPNativeLog.printLog(4, e.getMessage());
            mIsLibLoaded = false;
        }
    }

    public static int[] getDRMCapabilities() {
        if (isLibLoaded()) {
            try {
                int[] native_getDRMCapabilities = native_getDRMCapabilities();
                return native_getDRMCapabilities == null ? new int[0] : native_getDRMCapabilities;
            } catch (Throwable th) {
                TPNativeLog.printLog(4, th.toString());
                throw new TPNativeLibraryException("Failed to call native func.");
            }
        } else {
            throw new TPNativeLibraryException("Failed to load native library.");
        }
    }

    private static boolean isLibLoaded() {
        return mIsLibLoaded;
    }

    static native int[] native_getDRMCapabilities();
}
