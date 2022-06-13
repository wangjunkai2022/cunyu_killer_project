package com.appinstall.api.model;

/* loaded from: classes4.dex */
public final class Error {
    public static final int INIT_ERROR = -12;
    public static final int INVALID_INTENT = -7;
    @Deprecated
    public static final int NETWORK_NULL = -10;
    public static final int NOT_INIT = -8;
    public static final int REQUEST_ERROR = -2;
    public static final int REQUEST_FAIL = -1;
    public static final int TIMEOUT = -4;
    private int a;
    private String b;

    public Error() {
    }

    public Error(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public int getErrorCode() {
        return this.a;
    }

    public String getErrorMsg() {
        return this.b;
    }

    public void setErrorCode(int i) {
        this.a = i;
    }

    public void setErrorMsg(String str) {
        this.b = str;
    }

    public String toString() {
        return "Error{errorCode=" + this.a + ", errorMsg='" + this.b + "'}";
    }
}
