package com.google.android.gms.common.config;

import com.google.android.gms.common.config.GservicesValue;

/* loaded from: classes2.dex */
final class zze extends GservicesValue<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(String str, String str2) {
        super(str, str2);
    }

    @Override // com.google.android.gms.common.config.GservicesValue
    protected final /* synthetic */ String zzd(String str) {
        GservicesValue.zza zza = null;
        return zza.getString(this.mKey, (String) this.zzbp);
    }
}
