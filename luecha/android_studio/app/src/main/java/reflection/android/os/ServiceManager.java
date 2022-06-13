package reflection.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Map;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class ServiceManager {
    public static final MirrorReflection REF;
    public static MirrorReflection.StaticMethodWrapper<Void> addService;
    public static MirrorReflection.StaticMethodWrapper<IInterface> getIServiceManager;
    public static MirrorReflection.StaticMethodWrapper<IBinder> getService;
    public static MirrorReflection.FieldWrapper<Map<String, IBinder>> sCache;

    static {
        MirrorReflection on = MirrorReflection.on("android.os.ServiceManager");
        REF = on;
        addService = on.staticMethod("addService", String.class, IBinder.class);
        getIServiceManager = on.staticMethod("getIServiceManager", new Class[0]);
        getService = on.staticMethod("getService", new Class[0]);
        sCache = on.field("sCache");
    }
}
