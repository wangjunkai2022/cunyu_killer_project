package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;

/* loaded from: classes4.dex */
public final class SignInOptions implements Api.ApiOptions.Optional {
    public static final SignInOptions DEFAULT = new SignInOptions(false, false, null, false, null, false, null, null);
    private final boolean zars = false;
    private final boolean zay = false;
    private final String zaab = null;
    private final boolean zaaa = false;
    private final boolean zart = false;
    private final String zaac = null;
    private final Long zaru = null;
    private final Long zarv = null;

    /* loaded from: classes4.dex */
    public static final class zaa {
    }

    private SignInOptions(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4, Long l, Long l2) {
    }

    public final boolean isOfflineAccessRequested() {
        return this.zars;
    }

    public final boolean isIdTokenRequested() {
        return this.zay;
    }

    public final String getServerClientId() {
        return this.zaab;
    }

    public final boolean isForceCodeForRefreshToken() {
        return this.zaaa;
    }

    public final String getHostedDomain() {
        return this.zaac;
    }

    public final boolean waitForAccessTokenRefresh() {
        return this.zart;
    }

    public final Long getAuthApiSignInModuleVersion() {
        return this.zaru;
    }

    public final Long getRealClientLibraryVersion() {
        return this.zarv;
    }

    static {
        new zaa();
    }
}
