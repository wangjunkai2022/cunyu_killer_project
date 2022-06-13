package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.jar.Attributes;

/* loaded from: classes4.dex */
public class ManifestDigest implements Parcelable {
    public static final Parcelable.Creator<ManifestDigest> CREATOR = new Parcelable.Creator<ManifestDigest>() { // from class: android.content.pm.ManifestDigest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ManifestDigest createFromParcel(Parcel parcel) {
            return new ManifestDigest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ManifestDigest[] newArray(int i) {
            return new ManifestDigest[i];
        }
    };

    ManifestDigest(byte[] bArr) {
        throw new RuntimeException("Stub!");
    }

    private ManifestDigest(Parcel parcel) {
        throw new RuntimeException("Stub!");
    }

    static ManifestDigest fromAttributes(Attributes attributes) {
        throw new RuntimeException("Stub!");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override // java.lang.Object
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override // java.lang.Object
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        throw new RuntimeException("Stub!");
    }
}
