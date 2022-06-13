package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.zzj;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public final class zzm extends AbstractSafeParcelable {
    private String tag;
    private zzj zzcf;
    private List<ClientIdentity> zzm;
    static final List<ClientIdentity> zzcd = Collections.emptyList();
    static final zzj zzce = new zzj();
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();

    public zzm(zzj zzj, List<ClientIdentity> list, String str) {
        this.zzcf = zzj;
        this.zzm = list;
        this.tag = str;
    }

    @Override // java.lang.Object
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzm)) {
            return false;
        }
        zzm zzm = (zzm) obj;
        return Objects.equal(this.zzcf, zzm.zzcf) && Objects.equal(this.zzm, zzm.zzm) && Objects.equal(this.tag, zzm.tag);
    }

    @Override // java.lang.Object
    public final int hashCode() {
        return this.zzcf.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zzcf, i, false);
        SafeParcelWriter.writeTypedList(parcel, 2, this.zzm, false);
        SafeParcelWriter.writeString(parcel, 3, this.tag, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
