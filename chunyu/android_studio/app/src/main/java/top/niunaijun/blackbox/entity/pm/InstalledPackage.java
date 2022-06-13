package top.niunaijun.blackbox.entity.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
import top.niunaijun.blackbox.BlackBoxCore;

/* loaded from: classes3.dex */
public class InstalledPackage implements Parcelable {
    public static final Parcelable.Creator<InstalledPackage> CREATOR = new Parcelable.Creator<InstalledPackage>() { // from class: top.niunaijun.blackbox.entity.pm.InstalledPackage.1
        @Override // android.os.Parcelable.Creator
        public InstalledPackage createFromParcel(Parcel parcel) {
            return new InstalledPackage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public InstalledPackage[] newArray(int i) {
            return new InstalledPackage[i];
        }
    };
    public String packageName;
    public int userId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ApplicationInfo getApplication() {
        return BlackBoxCore.getBPackageManager().getApplicationInfo(this.packageName, 128, this.userId);
    }

    public PackageInfo getPackageInfo() {
        return BlackBoxCore.getBPackageManager().getPackageInfo(this.packageName, 128, this.userId);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.userId);
        parcel.writeString(this.packageName);
    }

    public InstalledPackage() {
    }

    public InstalledPackage(String str) {
        this.packageName = str;
    }

    protected InstalledPackage(Parcel parcel) {
        this.userId = parcel.readInt();
        this.packageName = parcel.readString();
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.packageName, ((InstalledPackage) obj).packageName);
    }

    @Override // java.lang.Object
    public int hashCode() {
        return Objects.hash(this.packageName);
    }
}
