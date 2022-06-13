package top.niunaijun.blackbox.fake.delegate;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import reflection.android.app.ActivityThread;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.VMCore;
import top.niunaijun.blackbox.fake.hook.HookManager;
import top.niunaijun.blackbox.fake.hook.IInjectHook;
import top.niunaijun.blackbox.fake.service.HCallbackProxy;
import top.niunaijun.blackbox.utils.FileUtils;
import top.niunaijun.blackbox.utils.compat.ContextCompat;

/* loaded from: classes4.dex */
public final class AppInstrumentation extends BaseInstrumentationDelegate implements IInjectHook {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String TAG = "AppInstrumentation";
    private static AppInstrumentation sAppInstrumentation;

    public static AppInstrumentation get() {
        if (sAppInstrumentation == null) {
            synchronized (AppInstrumentation.class) {
                if (sAppInstrumentation == null) {
                    sAppInstrumentation = new AppInstrumentation();
                }
            }
        }
        return sAppInstrumentation;
    }

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public void injectHook() {
        try {
            Instrumentation currInstrumentation = getCurrInstrumentation();
            if (currInstrumentation != this && !checkInstrumentation(currInstrumentation)) {
                this.mBaseInstrumentation = currInstrumentation;
                ActivityThread.mInstrumentation.set(BlackBoxCore.mainThread(), this);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private Instrumentation getCurrInstrumentation() {
        return ActivityThread.mInstrumentation.get(BlackBoxCore.mainThread());
    }

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return !checkInstrumentation(getCurrInstrumentation());
    }

    private boolean checkInstrumentation(Instrumentation instrumentation) {
        if (instrumentation instanceof AppInstrumentation) {
            return true;
        }
        Class<?> cls = instrumentation.getClass();
        if (Instrumentation.class.equals(cls)) {
            return false;
        }
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (Instrumentation.class.isAssignableFrom(field.getType())) {
                    field.setAccessible(true);
                    try {
                        if (field.get(instrumentation) instanceof AppInstrumentation) {
                            return true;
                        }
                    } catch (Exception unused) {
                        return false;
                    }
                }
            }
            cls = cls.getSuperclass();
        } while (!Instrumentation.class.equals(cls));
        return false;
    }

    private void checkHCallback() {
        HookManager.get().checkEnv(HCallbackProxy.class);
    }

    @Override // top.niunaijun.blackbox.fake.delegate.BaseInstrumentationDelegate, android.app.Instrumentation
    public Application newApplication(ClassLoader classLoader, String str, Context context) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        ContextCompat.fix(context);
        if (BlackBoxCore.get().isEnableHookDump()) {
            String absolutePath = new File(BlackBoxCore.get().getDexDumpDir(), context.getPackageName()).getAbsolutePath();
            FileUtils.mkdirs(absolutePath);
            try {
                Method declaredMethod = classLoader.loadClass(VMCore.class.getName()).getDeclaredMethod("hookDumpDex", String.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(null, absolutePath);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return super.newApplication(classLoader, str, context);
    }

    @Override // top.niunaijun.blackbox.fake.delegate.BaseInstrumentationDelegate, android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle bundle) {
        checkHCallback();
        String str = TAG;
        Log.d(str, "callActivityOnCreate: " + activity.getClass().getName());
        ContextCompat.fix(activity);
        super.callActivityOnCreate(activity, bundle);
    }

    @Override // top.niunaijun.blackbox.fake.delegate.BaseInstrumentationDelegate, android.app.Instrumentation
    public void callApplicationOnCreate(Application application) {
        checkHCallback();
        super.callApplicationOnCreate(application);
    }

    @Override // top.niunaijun.blackbox.fake.delegate.BaseInstrumentationDelegate, android.app.Instrumentation
    public Activity newActivity(ClassLoader classLoader, String str, Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        try {
            return super.newActivity(classLoader, str, intent);
        } catch (ClassNotFoundException unused) {
            return this.mBaseInstrumentation.newActivity(classLoader, str, intent);
        }
    }
}
