package reflection.android.app;

import android.os.IBinder;
import android.os.IInterface;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class IActivityTaskManager {

    /* loaded from: classes4.dex */
    public static class Stub {
        public static final MirrorReflection REF;
        public static MirrorReflection.StaticMethodWrapper<IInterface> asInterface;

        static {
            MirrorReflection on = MirrorReflection.on("android.app.IActivityTaskManager$Stub");
            REF = on;
            asInterface = on.staticMethod("asInterface", IBinder.class);
        }
    }
}
