package com.tencent.thumbplayer.api;

import com.tencent.thumbplayer.core.common.TPNativeLibraryException;

/* loaded from: classes2.dex */
public class TPNativeException extends TPNativeLibraryException {
    public TPNativeException(String str) {
        super(str);
    }

    public TPNativeException(String str, Throwable th) {
        super(str, th);
    }

    public TPNativeException(Throwable th) {
        super(th);
    }
}
