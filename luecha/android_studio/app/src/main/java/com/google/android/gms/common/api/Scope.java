package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* loaded from: classes2.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zza();
    private final String zzap;
    private final int zzg;

    public Scope(int i, String str) {
        Preconditions.checkNotEmpty(str, "scopeUri must not be null or empty");
        this.zzg = i;
        this.zzap = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public final String getScopeUri() {
        return this.zzap;
    }

    @Override // java.lang.Object
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.zzap.equals(((Scope) obj).zzap);
    }

    @Override // java.lang.Object
    public final int hashCode() {
        return this.zzap.hashCode();
    }

    @Override // java.lang.Object
    public final String toString() {
        return this.zzap;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzg);
        SafeParcelWriter.writeString(parcel, 2, getScopeUri(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
