package reflection.android.app;

import android.os.IInterface;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class ActivityManagerOreo {
    public static MirrorReflection.FieldWrapper<Object> IActivityManagerSingleton;
    public static final MirrorReflection REF;
    public static MirrorReflection.MethodWrapper<IInterface> getService;

    static {
        MirrorReflection on = MirrorReflection.on("android.app.ActivityManager");
        REF = on;
        getService = on.method("getService", new Class[0]);
        IActivityManagerSingleton = on.field("IActivityManagerSingleton");
    }
}
