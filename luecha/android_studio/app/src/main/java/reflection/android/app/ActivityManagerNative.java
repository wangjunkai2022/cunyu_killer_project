package reflection.android.app;

import android.os.IInterface;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class ActivityManagerNative {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<Object> gDefault;
    public static MirrorReflection.StaticMethodWrapper<IInterface> getDefault;

    static {
        MirrorReflection on = MirrorReflection.on("android.app.ActivityManagerNative");
        REF = on;
        gDefault = on.field("gDefault");
        getDefault = on.staticMethod("getDefault", new Class[0]);
    }
}
