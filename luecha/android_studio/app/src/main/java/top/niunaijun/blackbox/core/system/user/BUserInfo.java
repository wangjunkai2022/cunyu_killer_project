package top.niunaijun.blackbox.core.system.user;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes4.dex */
public class BUserInfo implements Parcelable {
    public static final Parcelable.Creator<BUserInfo> CREATOR = new Parcelable.Creator<BUserInfo>() { // from class: top.niunaijun.blackbox.core.system.user.BUserInfo.1
        @Override // android.os.Parcelable.Creator
        public BUserInfo createFromParcel(Parcel parcel) {
            return new BUserInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BUserInfo[] newArray(int i) {
            return new BUserInfo[i];
        }
    };
    public long createTime;
    public int id;
    public String name;
    public BUserStatus status;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BUserInfo() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        BUserStatus bUserStatus = this.status;
        parcel.writeInt(bUserStatus == null ? -1 : bUserStatus.ordinal());
        parcel.writeString(this.name);
        parcel.writeLong(this.createTime);
    }

    protected BUserInfo(Parcel parcel) {
        BUserStatus bUserStatus;
        this.id = parcel.readInt();
        int readInt = parcel.readInt();
        if (readInt == -1) {
            bUserStatus = null;
        } else {
            bUserStatus = BUserStatus.values()[readInt];
        }
        this.status = bUserStatus;
        this.name = parcel.readString();
        this.createTime = parcel.readLong();
    }

    @Override // java.lang.Object
    public String toString() {
        return "BUserInfo{id=" + this.id + ", status=" + this.status + ", name='" + this.name + "', createTime=" + this.createTime + '}';
    }
}
