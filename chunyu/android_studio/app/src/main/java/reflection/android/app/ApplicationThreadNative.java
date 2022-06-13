package reflection.android.app;

import android.os.IBinder;
import android.os.IInterface;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class ApplicationThreadNative {
    public static final MirrorReflection REF;
    public static MirrorReflection.MethodWrapper<IInterface> asInterface;

    static {
        MirrorReflection on = MirrorReflection.on("android.app.ApplicationThreadNative");
        REF = on;
        asInterface = on.method("asInterface", IBinder.class);
    }
}
