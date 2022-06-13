package reflection.android.content.pm;

import android.os.Parcelable;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class ParceledListSlice {
    public static final MirrorReflection REF;
    public static MirrorReflection.MethodWrapper<Boolean> append;
    public static MirrorReflection.ConstructorWrapper<Parcelable> constructor;
    public static MirrorReflection.MethodWrapper<Void> setLastSlice;

    static {
        MirrorReflection on = MirrorReflection.on("android.content.pm.ParceledListSlice");
        REF = on;
        append = on.method("append", new Class[0]);
        constructor = on.constructor(new Class[0]);
        setLastSlice = on.method("setLastSlice", new Class[0]);
    }
}
