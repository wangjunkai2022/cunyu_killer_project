package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class zak implements PendingResultUtil.ResultConverter<R, T> {
    private final /* synthetic */ Response zaoy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zak(Response response) {
        this.zaoy = response;
    }

    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    public final /* synthetic */ Object convert(Result result) {
        this.zaoy.setResult(result);
        return this.zaoy;
    }
}
