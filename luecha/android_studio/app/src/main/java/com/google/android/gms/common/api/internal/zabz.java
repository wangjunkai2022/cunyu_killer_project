package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes2.dex */
final /* synthetic */ class zabz implements RemoteCall {
    private final RegistrationMethods.Builder zakf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabz(RegistrationMethods.Builder builder) {
        this.zakf = builder;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        this.zakf.zaa((Api.AnyClient) obj, (TaskCompletionSource) obj2);
    }
}
