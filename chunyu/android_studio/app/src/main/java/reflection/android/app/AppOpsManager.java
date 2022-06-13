package reflection.android.app;

import android.os.IInterface;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class AppOpsManager {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<IInterface> mService;

    static {
        MirrorReflection on = MirrorReflection.on(android.app.AppOpsManager.class);
        REF = on;
        mService = on.field("mService");
    }
}
