package reflection.android.os.storage;

import android.os.storage.StorageVolume;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class StorageManager {
    public static final MirrorReflection REF;
    public static MirrorReflection.StaticMethodWrapper<StorageVolume[]> getVolumeList;

    static {
        MirrorReflection on = MirrorReflection.on("android.os.storage.StorageManager");
        REF = on;
        getVolumeList = on.staticMethod("getVolumeList", Integer.TYPE, Integer.TYPE);
    }
}
