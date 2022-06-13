package reflection.android.content.pm;

import android.os.IInterface;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class ILauncherApps {

    /* loaded from: classes3.dex */
    public static final class Stub {
        public static final MirrorReflection REF;
        public static MirrorReflection.StaticMethodWrapper<IInterface> asInterface;

        static {
            MirrorReflection on = MirrorReflection.on("android.content.pm.ILauncherApps$Stub");
            REF = on;
            asInterface = on.staticMethod("asInterface", new Class[0]);
        }
    }
}
