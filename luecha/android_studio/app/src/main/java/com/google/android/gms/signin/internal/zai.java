package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes2.dex */
public final class zai implements Parcelable.Creator<zah> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zah[] newArray(int i) {
        return new zah[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zah createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i = 0;
        ResolveAccountRequest resolveAccountRequest = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                i = SafeParcelReader.readInt(parcel, readHeader);
            } else if (fieldId != 2) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                resolveAccountRequest = (ResolveAccountRequest) SafeParcelReader.createParcelable(parcel, readHeader, ResolveAccountRequest.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zah(i, resolveAccountRequest);
    }
}
