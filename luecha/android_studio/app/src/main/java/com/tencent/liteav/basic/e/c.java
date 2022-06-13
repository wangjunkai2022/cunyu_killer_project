package com.tencent.liteav.basic.e;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: EGLException.java */
/* loaded from: classes5.dex */
public class c extends IOException {
    private static final long serialVersionUID = 2723743254380545567L;
    private final int mErrorCode;
    private final String mErrorMessage;

    public c(int i) {
        this(i, null);
    }

    public c(int i, String str) {
        this.mErrorCode = i;
        this.mErrorMessage = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.mErrorMessage != null) {
            return "EGL error code: " + this.mErrorCode + this.mErrorMessage;
        }
        return "EGL error code: " + this.mErrorCode;
    }
}
