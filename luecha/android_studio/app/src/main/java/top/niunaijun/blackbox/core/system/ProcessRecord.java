package top.niunaijun.blackbox.core.system;

import android.content.pm.ApplicationInfo;
import android.os.Binder;
import android.os.ConditionVariable;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import java.util.Arrays;
import top.niunaijun.blackbox.core.IBActivityThread;
import top.niunaijun.blackbox.entity.AppConfig;
import top.niunaijun.blackbox.proxy.ProxyManifest;

/* loaded from: classes4.dex */
public class ProcessRecord extends Binder implements Parcelable {
    public static final Parcelable.Creator<ProcessRecord> CREATOR = new Parcelable.Creator<ProcessRecord>() { // from class: top.niunaijun.blackbox.core.system.ProcessRecord.1
        @Override // android.os.Parcelable.Creator
        public ProcessRecord createFromParcel(Parcel parcel) {
            return new ProcessRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ProcessRecord[] newArray(int i) {
            return new ProcessRecord[i];
        }
    };
    public IInterface appThread;
    public IBActivityThread bActivityThread;
    public int baseBUid;
    public int bpid;
    public int buid;
    public int callingVUid;
    public final ApplicationInfo info;
    public ConditionVariable initLock;
    public int pid;
    public final String processName;
    public int uid;
    public int userId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ProcessRecord(ApplicationInfo applicationInfo, String str, int i, int i2, int i3) {
        this.initLock = new ConditionVariable();
        this.info = applicationInfo;
        this.buid = i;
        this.bpid = i2;
        this.userId = 0;
        this.callingVUid = i3;
        this.processName = str;
    }

    public int getCallingBUid() {
        return this.callingVUid;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProcessRecord processRecord = (ProcessRecord) obj;
        if (this.pid == processRecord.pid && this.buid == processRecord.buid && this.bpid == processRecord.bpid && this.uid == processRecord.uid && this.userId == processRecord.userId && this.baseBUid == processRecord.baseBUid && TextUtils.equals(this.processName, processRecord.processName)) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.processName, Integer.valueOf(this.pid), Integer.valueOf(this.buid), Integer.valueOf(this.bpid), Integer.valueOf(this.uid), Integer.valueOf(this.pid), Integer.valueOf(this.userId)});
    }

    public String getProviderAuthority() {
        return ProxyManifest.getProxyAuthorities(this.bpid);
    }

    public AppConfig getClientConfig() {
        AppConfig appConfig = new AppConfig();
        appConfig.packageName = this.info.packageName;
        appConfig.processName = this.processName;
        appConfig.bpid = this.bpid;
        appConfig.buid = this.buid;
        appConfig.uid = this.uid;
        appConfig.userId = this.userId;
        appConfig.token = this;
        appConfig.baseBUid = this.baseBUid;
        return appConfig;
    }

    public void kill() {
        int i = this.pid;
        if (i > 0) {
            try {
                Process.killProcess(i);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public String getPackageName() {
        return this.info.packageName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.info, i);
        parcel.writeString(this.processName);
        parcel.writeInt(this.pid);
        parcel.writeInt(this.buid);
        parcel.writeInt(this.bpid);
        parcel.writeInt(this.uid);
        parcel.writeInt(this.callingVUid);
        parcel.writeInt(this.userId);
        parcel.writeInt(this.baseBUid);
    }

    protected ProcessRecord(Parcel parcel) {
        this.initLock = new ConditionVariable();
        this.info = (ApplicationInfo) parcel.readParcelable(ApplicationInfo.class.getClassLoader());
        this.processName = parcel.readString();
        this.pid = parcel.readInt();
        this.buid = parcel.readInt();
        this.bpid = parcel.readInt();
        this.uid = parcel.readInt();
        this.callingVUid = parcel.readInt();
        this.userId = parcel.readInt();
        this.baseBUid = parcel.readInt();
    }
}
