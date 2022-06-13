package reflection.android.util;

import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class Singleton {
    public static final MirrorReflection REF;
    public static MirrorReflection.MethodWrapper<Object> get;
    public static MirrorReflection.FieldWrapper<Object> mInstance;

    static {
        MirrorReflection on = MirrorReflection.on("android.util.Singleton");
        REF = on;
        get = on.method("get", new Class[0]);
        mInstance = on.field("mInstance");
    }
}
