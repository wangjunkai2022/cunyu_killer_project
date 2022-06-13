package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes4.dex */
final /* synthetic */ class zacj implements RemoteCall {
    private final BiConsumer zake;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacj(BiConsumer biConsumer) {
        this.zake = biConsumer;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        this.zake.accept((Api.AnyClient) obj, (TaskCompletionSource) obj2);
    }
}
