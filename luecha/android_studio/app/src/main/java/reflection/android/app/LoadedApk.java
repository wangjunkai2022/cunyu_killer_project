package reflection.android.app;

import android.app.Application;
import android.app.Instrumentation;
import android.content.pm.ApplicationInfo;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class LoadedApk {
    public static final MirrorReflection REF;
    public static MirrorReflection.MethodWrapper<ClassLoader> getClassloader;
    public static MirrorReflection.FieldWrapper<ApplicationInfo> mApplicationInfo;
    public static MirrorReflection.FieldWrapper<Boolean> mSecurityViolation;
    public static MirrorReflection.MethodWrapper<Application> makeApplication;

    static {
        MirrorReflection on = MirrorReflection.on("android.app.LoadedApk");
        REF = on;
        mApplicationInfo = on.field("mApplicationInfo");
        makeApplication = on.method("makeApplication", Boolean.TYPE, Instrumentation.class);
        getClassloader = on.method("getClassloader", new Class[0]);
        mSecurityViolation = on.field("mSecurityViolation");
    }
}
