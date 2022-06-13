package com.google.android.gms.common.config;

import com.google.android.gms.common.config.GservicesValue;

/* loaded from: classes4.dex */
final class zzb extends GservicesValue<Long> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(String str, Long l) {
        super(str, l);
    }

    @Override // com.google.android.gms.common.config.GservicesValue
    protected final /* synthetic */ Long zzd(String str) {
        GservicesValue.zza zza = null;
        return zza.getLong(this.mKey, (Long) this.zzbp);
    }
}
