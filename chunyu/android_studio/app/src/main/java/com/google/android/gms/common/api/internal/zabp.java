package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes4.dex */
public final class zabp<O extends Api.ApiOptions> extends zaag {
    private final GoogleApi<O> zajg;

    public zabp(GoogleApi<O> googleApi) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.zajg = googleApi;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zaa(zacm zacm) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zab(zacm zacm) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        return (T) this.zajg.doRead((GoogleApi<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        return (T) this.zajg.doWrite((GoogleApi<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.zajg.getLooper();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Context getContext() {
        return this.zajg.getApplicationContext();
    }
}
