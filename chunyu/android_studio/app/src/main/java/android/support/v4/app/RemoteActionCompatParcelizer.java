package android.support.v4.app;

import androidx.core.app.RemoteActionCompat;
import androidx.versionedparcelable.VersionedParcel;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes4.dex */
public final class RemoteActionCompatParcelizer extends androidx.core.app.RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        return androidx.core.app.RemoteActionCompatParcelizer.read(versionedParcel);
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        androidx.core.app.RemoteActionCompatParcelizer.write(remoteActionCompat, versionedParcel);
    }
}
