package top.niunaijun.blackbox.core.system.pm;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes4.dex */
public class BPackageUserState implements Parcelable {
    public static final Parcelable.Creator<BPackageUserState> CREATOR = new Parcelable.Creator<BPackageUserState>() { // from class: top.niunaijun.blackbox.core.system.pm.BPackageUserState.1
        @Override // android.os.Parcelable.Creator
        public BPackageUserState createFromParcel(Parcel parcel) {
            return new BPackageUserState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BPackageUserState[] newArray(int i) {
            return new BPackageUserState[i];
        }
    };
    public boolean hidden;
    public boolean installed;
    public boolean stopped;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BPackageUserState() {
        this.installed = false;
        this.stopped = true;
        this.hidden = false;
    }

    public static BPackageUserState create() {
        BPackageUserState bPackageUserState = new BPackageUserState();
        bPackageUserState.installed = true;
        return bPackageUserState;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.installed ? (byte) 1 : 0);
        parcel.writeByte(this.stopped ? (byte) 1 : 0);
        parcel.writeByte(this.hidden ? (byte) 1 : 0);
    }

    protected BPackageUserState(Parcel parcel) {
        boolean z = true;
        this.installed = parcel.readByte() != 0;
        this.stopped = parcel.readByte() != 0;
        this.hidden = parcel.readByte() == 0 ? false : z;
    }

    public BPackageUserState(BPackageUserState bPackageUserState) {
        this.installed = bPackageUserState.installed;
        this.stopped = bPackageUserState.stopped;
        this.hidden = bPackageUserState.hidden;
    }
}
