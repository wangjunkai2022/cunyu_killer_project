package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zaaf {
    private final zai<?> zafp;
    private final TaskCompletionSource<Boolean> zafq = new TaskCompletionSource<>();

    public zaaf(zai<?> zai) {
        this.zafp = zai;
    }

    public final zai<?> zak() {
        return this.zafp;
    }

    public final TaskCompletionSource<Boolean> zaal() {
        return this.zafq;
    }
}
