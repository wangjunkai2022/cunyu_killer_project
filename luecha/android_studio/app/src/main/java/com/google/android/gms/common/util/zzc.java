package com.google.android.gms.common.util;

import android.os.Looper;

/* loaded from: classes2.dex */
public final class zzc {
    public static boolean isMainThread() {
        return Looper.getMainLooper() == Looper.myLooper();
    }
}
