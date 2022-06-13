package top.niunaijun.blackbox.core.system.user;

import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import com.google.android.exoplayer2.text.ttml.TtmlNode;

/* loaded from: classes4.dex */
public final class BUserHandle implements Parcelable {
    public static final int AID_APP_END = 19999;
    public static final int AID_APP_START = 10000;
    public static final int AID_CACHE_GID_START = 20000;
    public static final int AID_ROOT = 0;
    public static final int AID_SHARED_GID_START = 50000;
    public static final int ERR_GID = -1;
    public static final boolean MU_ENABLED = true;
    public static final int PER_USER_RANGE = 100000;
    public static final int USER_ALL = -1;
    public static final int USER_CURRENT = -2;
    public static final int USER_CURRENT_OR_SELF = -3;
    public static final int USER_NULL = -10000;
    @Deprecated
    public static final int USER_OWNER = 0;
    public static final int USER_SERIAL_SYSTEM = 0;
    public static final int USER_SYSTEM = 0;
    public static final int USER_XPOSED = -4;
    final int mHandle;
    public static final BUserHandle ALL = new BUserHandle(-1);
    public static final BUserHandle CURRENT = new BUserHandle(-2);
    public static final BUserHandle CURRENT_OR_SELF = new BUserHandle(-3);
    @Deprecated
    public static final BUserHandle OWNER = new BUserHandle(0);
    public static final BUserHandle SYSTEM = new BUserHandle(0);
    public static final Parcelable.Creator<BUserHandle> CREATOR = new Parcelable.Creator<BUserHandle>() { // from class: top.niunaijun.blackbox.core.system.user.BUserHandle.1
        @Override // android.os.Parcelable.Creator
        public BUserHandle createFromParcel(Parcel parcel) {
            return new BUserHandle(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BUserHandle[] newArray(int i) {
            return new BUserHandle[i];
        }
    };

    public static int getSharedAppGid(int i, int i2) {
        if (i2 >= 10000 && i2 <= 19999) {
            return (i2 - 10000) + 50000;
        }
        if (i2 < 0 || i2 > 10000) {
            return -1;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public static boolean isSameUser(int i, int i2) {
        return getUserId(i) == getUserId(i2);
    }

    public static boolean isSameApp(int i, int i2) {
        return getAppId(i) == getAppId(i2);
    }

    public static boolean isApp(int i) {
        int appId;
        return i > 0 && (appId = getAppId(i)) >= 10000 && appId <= 19999;
    }

    public static boolean isCore(int i) {
        return i >= 0 && getAppId(i) < 10000;
    }

    public static BUserHandle getUserHandleForUid(int i) {
        return of(getUserId(i));
    }

    public static int getUserId(int i) {
        return i / 100000;
    }

    public static int getCallingUserId() {
        return getUserId(Binder.getCallingUid());
    }

    public static int getCallingAppId() {
        return getAppId(Binder.getCallingUid());
    }

    public static BUserHandle of(int i) {
        return i == 0 ? SYSTEM : new BUserHandle(i);
    }

    public static int getUid(int i, int i2) {
        return (i * 100000) + (i2 % 100000);
    }

    public static int getAppId(int i) {
        return i % 100000;
    }

    public static int getUserGid(int i) {
        return getUid(i, 9997);
    }

    public static int getSharedAppGid(int i) {
        return getSharedAppGid(getUserId(i), getAppId(i));
    }

    public static int getCacheAppGid(int i) {
        return getCacheAppGid(getUserId(i), getAppId(i));
    }

    public static int getCacheAppGid(int i, int i2) {
        if (i2 < 10000 || i2 > 19999) {
            return -1;
        }
        return getUid(i, (i2 - 10000) + AID_CACHE_GID_START);
    }

    public static int parseUserArg(String str) {
        if (TtmlNode.COMBINE_ALL.equals(str)) {
            return -1;
        }
        if ("current".equals(str) || "cur".equals(str)) {
            return -2;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException("Bad user number: " + str);
        }
    }

    public static int myUserId() {
        return getUserId(Process.myUid());
    }

    @Deprecated
    public boolean isOwner() {
        return equals(OWNER);
    }

    public boolean isSystem() {
        return equals(SYSTEM);
    }

    public BUserHandle(int i) {
        this.mHandle = i;
    }

    public int getIdentifier() {
        return this.mHandle;
    }

    @Override // java.lang.Object
    public String toString() {
        return "UserHandle{" + this.mHandle + "}";
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            if (this.mHandle == ((BUserHandle) obj).mHandle) {
                return true;
            }
            return false;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.lang.Object
    public int hashCode() {
        return this.mHandle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mHandle);
    }

    public static void writeToParcel(BUserHandle bUserHandle, Parcel parcel) {
        if (bUserHandle != null) {
            bUserHandle.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(USER_NULL);
        }
    }

    public static BUserHandle readFromParcel(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt != -10000) {
            return new BUserHandle(readInt);
        }
        return null;
    }

    public BUserHandle(Parcel parcel) {
        this.mHandle = parcel.readInt();
    }
}
