package reflection.android.os.storage;

import java.io.File;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class StorageVolume {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<File> mInternalPath;
    public static MirrorReflection.FieldWrapper<File> mPath;

    static {
        MirrorReflection on = MirrorReflection.on("android.os.storage.StorageVolume");
        REF = on;
        mPath = on.field("mPath");
        mInternalPath = on.field("mInternalPath");
    }
}
