package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

@CheckReturnValue
/* loaded from: classes4.dex */
public class zzm {
    private static final zzm zzab = new zzm(true, null, null);
    private final Throwable cause;
    final boolean zzac;
    private final String zzad;

    public zzm(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.zzac = z;
        this.zzad = str;
        this.cause = th;
    }

    public static zzm zze() {
        return zzab;
    }

    public static zzm zza(Callable<String> callable) {
        return new zzo(callable);
    }

    public static zzm zzb(String str) {
        return new zzm(false, str, null);
    }

    public static zzm zza(String str, Throwable th) {
        return new zzm(false, str, th);
    }

    @Nullable
    String getErrorMessage() {
        return this.zzad;
    }

    public final void zzf() {
        if (!this.zzac && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.cause != null) {
                Log.d("GoogleCertificatesRslt", getErrorMessage(), this.cause);
            } else {
                Log.d("GoogleCertificatesRslt", getErrorMessage());
            }
        }
    }

    public static String zza(String str, zze zze, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, Hex.zza(AndroidUtilsLight.zzi("SHA-1").digest(zze.getBytes())), Boolean.valueOf(z), "12451009.false");
    }
}
