package top.niunaijun.blackbox.entity.dump;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class DumpResult implements Parcelable {
    public static final Parcelable.Creator<DumpResult> CREATOR = new Parcelable.Creator<DumpResult>() { // from class: top.niunaijun.blackbox.entity.dump.DumpResult.1
        @Override // android.os.Parcelable.Creator
        public DumpResult createFromParcel(Parcel parcel) {
            return new DumpResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DumpResult[] newArray(int i) {
            return new DumpResult[i];
        }
    };
    private static final int STATUS_FAIL = 2;
    private static final int STATUS_RUNNING = 0;
    private static final int STATUS_SUCCESS = 1;
    public static final String TAG = "DumpResult";
    public int currProcess;
    public String dir;
    public String msg;
    public String packageName;
    private int status;
    public int totalProcess;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DumpResult dumpError(String str) {
        this.msg = str;
        this.status = 2;
        return this;
    }

    public DumpResult dumpProcess(int i, int i2) {
        this.totalProcess = i;
        this.currProcess = i2;
        this.status = 0;
        return this;
    }

    public DumpResult dumpSuccess() {
        this.status = 1;
        return this;
    }

    public boolean isSuccess() {
        return this.status == 1;
    }

    public boolean isFail() {
        return this.status == 2;
    }

    public boolean isRunning() {
        return this.status == 0;
    }

    @Override // java.lang.Object
    public String toString() {
        return "DumpResult{packageName='" + this.packageName + "', msg='" + this.msg + "', dir='" + this.dir + "', status=" + this.status + ", totalProcess=" + this.totalProcess + ", currProcess=" + this.currProcess + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.msg);
        parcel.writeString(this.dir);
        parcel.writeInt(this.status);
        parcel.writeInt(this.totalProcess);
        parcel.writeInt(this.currProcess);
    }

    public void readFromParcel(Parcel parcel) {
        this.packageName = parcel.readString();
        this.msg = parcel.readString();
        this.dir = parcel.readString();
        this.status = parcel.readInt();
        this.totalProcess = parcel.readInt();
        this.currProcess = parcel.readInt();
    }

    public DumpResult() {
        this.status = 0;
    }

    protected DumpResult(Parcel parcel) {
        this.status = 0;
        this.packageName = parcel.readString();
        this.msg = parcel.readString();
        this.dir = parcel.readString();
        this.status = parcel.readInt();
        this.totalProcess = parcel.readInt();
        this.currProcess = parcel.readInt();
    }
}
