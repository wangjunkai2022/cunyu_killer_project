package reflection.com.android.internal.app;

import android.os.IBinder;
import android.os.IInterface;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class IAppOpsService {

    /* loaded from: classes3.dex */
    public static class Stub {
        public static final String NAME = "com.android.internal.app.IAppOpsService$Stub";
        private static final MirrorReflection REF;
        public static MirrorReflection.StaticMethodWrapper<IInterface> asInterface;

        static {
            MirrorReflection on = MirrorReflection.on(NAME);
            REF = on;
            asInterface = on.staticMethod("asInterface", IBinder.class);
        }
    }
}
