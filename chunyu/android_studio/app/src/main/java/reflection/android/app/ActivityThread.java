package reflection.android.app;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.util.ArrayMap;
import java.util.List;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class ActivityThread {
    public static final MirrorReflection REF;
    public static MirrorReflection.StaticMethodWrapper<Object> currentActivityThread;
    public static MirrorReflection.MethodWrapper<IBinder> getApplicationThread;
    public static MirrorReflection.MethodWrapper<Object> getSystemContext;
    public static MirrorReflection.FieldWrapper<Object> mBoundApplication;
    public static MirrorReflection.FieldWrapper<Handler> mH;
    public static MirrorReflection.FieldWrapper<Application> mInitialApplication;
    public static MirrorReflection.FieldWrapper<Instrumentation> mInstrumentation;
    public static MirrorReflection.FieldWrapper<ArrayMap<Object, Object>> mProviderMap;
    public static MirrorReflection.FieldWrapper<IInterface> sPackageManager;

    static {
        MirrorReflection on = MirrorReflection.on("android.app.ActivityThread");
        REF = on;
        currentActivityThread = on.staticMethod("currentActivityThread", new Class[0]);
        mBoundApplication = on.field("mBoundApplication");
        mH = on.field("mH");
        mInitialApplication = on.field("mInitialApplication");
        mProviderMap = on.field("mProviderMap");
        mInstrumentation = on.field("mInstrumentation");
        sPackageManager = on.field("sPackageManager");
        getApplicationThread = on.method("getApplicationThread", new Class[0]);
        getSystemContext = on.method("getSystemContext", new Class[0]);
    }

    /* loaded from: classes3.dex */
    public static class ActivityClientRecord {
        public static final MirrorReflection REF;
        public static MirrorReflection.FieldWrapper<Activity> activity;
        public static MirrorReflection.FieldWrapper<ActivityInfo> activityInfo;
        public static MirrorReflection.FieldWrapper<Intent> intent;

        static {
            MirrorReflection on = MirrorReflection.on("android.app.ActivityThread$ActivityClientRecord");
            REF = on;
            activity = on.field("activity");
            activityInfo = on.field("activityInfo");
            intent = on.field("intent");
        }
    }

    /* loaded from: classes3.dex */
    public static class AppBindData {
        public static final MirrorReflection REF;
        public static MirrorReflection.FieldWrapper<ApplicationInfo> appInfo;
        public static MirrorReflection.FieldWrapper<Object> info;
        public static MirrorReflection.FieldWrapper<ComponentName> instrumentationName;
        public static MirrorReflection.FieldWrapper<String> processName;
        public static MirrorReflection.FieldWrapper<List<ProviderInfo>> providers;

        static {
            MirrorReflection on = MirrorReflection.on("android.app.ActivityThread$AppBindData");
            REF = on;
            appInfo = on.field("appInfo");
            info = on.field("info");
            processName = on.field("processName");
            instrumentationName = on.field("instrumentationName");
            providers = on.field("providers");
        }
    }

    /* loaded from: classes3.dex */
    public static class H {
        public static MirrorReflection.FieldWrapper<Integer> EXECUTE_TRANSACTION;
        public static MirrorReflection.FieldWrapper<Integer> LAUNCH_ACTIVITY;
        public static final MirrorReflection REF;

        static {
            MirrorReflection on = MirrorReflection.on("android.app.ActivityThread$H");
            REF = on;
            LAUNCH_ACTIVITY = on.field("LAUNCH_ACTIVITY");
            EXECUTE_TRANSACTION = on.field("EXECUTE_TRANSACTION");
        }
    }
}
