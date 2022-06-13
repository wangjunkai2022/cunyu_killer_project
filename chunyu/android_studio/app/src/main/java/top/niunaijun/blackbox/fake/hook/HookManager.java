package top.niunaijun.blackbox.fake.hook;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.fake.delegate.AppInstrumentation;
import top.niunaijun.blackbox.fake.service.HCallbackProxy;
import top.niunaijun.blackbox.fake.service.IActivityManagerProxy;
import top.niunaijun.blackbox.fake.service.IActivityTaskManagerProxy;
import top.niunaijun.blackbox.fake.service.IAlarmManagerProxy;
import top.niunaijun.blackbox.fake.service.IAppOpsManagerProxy;
import top.niunaijun.blackbox.fake.service.IDeviceIdentifiersPolicyProxy;
import top.niunaijun.blackbox.fake.service.IJobServiceProxy;
import top.niunaijun.blackbox.fake.service.ILauncherAppsProxy;
import top.niunaijun.blackbox.fake.service.IPackageManagerProxy;
import top.niunaijun.blackbox.fake.service.IStorageManagerProxy;
import top.niunaijun.blackbox.fake.service.ITelephonyManagerProxy;
import top.niunaijun.blackbox.fake.service.ITelephonyRegistryProxy;
import top.niunaijun.blackbox.fake.service.libcore.OsStub;
import top.niunaijun.blackbox.utils.compat.BuildCompat;

/* loaded from: classes3.dex */
public class HookManager {
    public static final String TAG = "HookManager";
    private static final HookManager sHookManager = new HookManager();
    private final Map<Class<?>, IInjectHook> mInjectors = new HashMap();

    public static HookManager get() {
        return sHookManager;
    }

    public void init() {
        if (BlackBoxCore.get().isVirtualProcess()) {
            addInjector(new OsStub());
            addInjector(new IActivityManagerProxy());
            addInjector(new IPackageManagerProxy());
            addInjector(new ITelephonyManagerProxy());
            addInjector(new HCallbackProxy());
            addInjector(new IAppOpsManagerProxy());
            addInjector(new IAlarmManagerProxy());
            addInjector(new IStorageManagerProxy());
            addInjector(new ILauncherAppsProxy());
            addInjector(new IJobServiceProxy());
            addInjector(new ITelephonyRegistryProxy());
            addInjector(AppInstrumentation.get());
            BuildCompat.isR();
            if (BuildCompat.isQ()) {
                addInjector(new IActivityTaskManagerProxy());
            }
            BuildCompat.isPie();
            if (BuildCompat.isOreo()) {
                addInjector(new IDeviceIdentifiersPolicyProxy());
            }
            BuildCompat.isN_MR1();
            BuildCompat.isN();
            BuildCompat.isM();
            if (BuildCompat.isL()) {
                addInjector(new IJobServiceProxy());
            }
        }
        injectAll();
    }

    public void checkEnv(Class<?> cls) {
        IInjectHook iInjectHook = this.mInjectors.get(cls);
        if (iInjectHook != null && iInjectHook.isBadEnv()) {
            Log.d(TAG, "checkEnv: " + cls.getSimpleName() + " is bad env");
            iInjectHook.injectHook();
        }
    }

    void addInjector(IInjectHook iInjectHook) {
        this.mInjectors.put(iInjectHook.getClass(), iInjectHook);
    }

    void injectAll() {
        for (IInjectHook iInjectHook : this.mInjectors.values()) {
            try {
                iInjectHook.injectHook();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
