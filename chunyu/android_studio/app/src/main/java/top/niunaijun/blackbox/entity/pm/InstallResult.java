package top.niunaijun.blackbox.entity.pm;

import android.os.Parcel;
import android.os.Parcelable;
import top.niunaijun.blackbox.utils.Slog;

/* loaded from: classes3.dex */
public class InstallResult implements Parcelable {
    public static final Parcelable.Creator<InstallResult> CREATOR = new Parcelable.Creator<InstallResult>() { // from class: top.niunaijun.blackbox.entity.pm.InstallResult.1
        @Override // android.os.Parcelable.Creator
        public InstallResult createFromParcel(Parcel parcel) {
            return new InstallResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public InstallResult[] newArray(int i) {
            return new InstallResult[i];
        }
    };
    public static final String TAG = "InstallResult";
    public String msg;
    public String packageName;
    public boolean success;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.success ? (byte) 1 : 0);
        parcel.writeString(this.packageName);
        parcel.writeString(this.msg);
    }

    public InstallResult() {
        this.success = true;
    }

    protected InstallResult(Parcel parcel) {
        boolean z = true;
        this.success = true;
        this.success = parcel.readByte() == 0 ? false : z;
        this.packageName = parcel.readString();
        this.msg = parcel.readString();
    }

    public InstallResult installError(String str) {
        this.msg = str;
        this.success = false;
        Slog.d(TAG, str);
        return this;
    }

    @Override // java.lang.Object
    public String toString() {
        return "InstallResult{success=" + this.success + ", packageName='" + this.packageName + "', msg='" + this.msg + "'}";
    }
}
