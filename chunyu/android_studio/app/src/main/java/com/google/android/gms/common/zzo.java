package com.google.android.gms.common;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class zzo extends zzm {
    private final Callable<String> zzae;

    private zzo(Callable<String> callable) {
        super(false, null, null);
        this.zzae = callable;
    }

    @Override // com.google.android.gms.common.zzm
    final String getErrorMessage() {
        try {
            return this.zzae.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
