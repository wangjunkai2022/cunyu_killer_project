package reflection.android.os;

import android.os.IBinder;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class Bundle {
    public static final MirrorReflection REF;
    public static MirrorReflection.MethodWrapper<IBinder> getIBinder;
    public static MirrorReflection.MethodWrapper<Void> putIBinder;

    static {
        MirrorReflection on = MirrorReflection.on(android.os.Bundle.class);
        REF = on;
        putIBinder = on.method("putIBinder", String.class, IBinder.class);
        getIBinder = on.method("getIBinder", String.class);
    }
}
