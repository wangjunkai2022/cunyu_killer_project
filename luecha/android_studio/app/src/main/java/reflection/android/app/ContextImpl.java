package reflection.android.app;

import android.content.pm.PackageManager;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class ContextImpl {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<String> mBasePackageName;
    public static MirrorReflection.FieldWrapper<String> mOpPackageName;
    public static MirrorReflection.FieldWrapper<Object> mPackageInfo;
    public static MirrorReflection.FieldWrapper<PackageManager> mPackageManager;

    static {
        MirrorReflection on = MirrorReflection.on("android.app.ContextImpl");
        REF = on;
        mBasePackageName = on.field("mBasePackageName");
        mPackageInfo = on.field("mPackageInfo");
        mPackageManager = on.field("mPackageManager");
        mOpPackageName = on.field("mOpPackageName");
    }
}
