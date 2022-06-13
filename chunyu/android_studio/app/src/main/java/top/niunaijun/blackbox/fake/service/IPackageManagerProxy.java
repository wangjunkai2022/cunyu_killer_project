package top.niunaijun.blackbox.fake.service;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IInterface;
import android.os.Process;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.lang.reflect.Method;
import reflection.android.app.ActivityThread;
import reflection.android.app.ContextImpl;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.app.BActivityThread;
import top.niunaijun.blackbox.core.env.AppSystemEnv;
import top.niunaijun.blackbox.fake.hook.BinderInvocationStub;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;
import top.niunaijun.blackbox.utils.MethodParameterUtils;
import top.niunaijun.blackbox.utils.Reflector;
import top.niunaijun.blackbox.utils.compat.ParceledListSliceCompat;

/* loaded from: classes3.dex */
public class IPackageManagerProxy extends BinderInvocationStub {
    public static final String TAG = "PackageManagerStub";

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    public IPackageManagerProxy() {
        super(ActivityThread.sPackageManager.get().asBinder());
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        return ActivityThread.sPackageManager.get();
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        ActivityThread.sPackageManager.set((IInterface) obj2);
        replaceSystemService(TPDownloadProxyEnum.DLPARAM_PACKAGE);
        PackageManager packageManager = ContextImpl.mPackageManager.get(ActivityThread.getSystemContext.call(BlackBoxCore.mainThread(), new Object[0]));
        if (packageManager != null) {
            try {
                Reflector.on("android.app.ApplicationPackageManager").field("mPM").set(packageManager, obj2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @ProxyMethod(name = "resolveIntent")
    /* loaded from: classes3.dex */
    public static class ResolveIntent extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            int intValue = ((Integer) objArr[2]).intValue();
            ResolveInfo resolveIntent = BlackBoxCore.getBPackageManager().resolveIntent((Intent) objArr[0], (String) objArr[1], intValue, BActivityThread.getUserId());
            if (resolveIntent != null) {
                return resolveIntent;
            }
            return method.invoke(obj, objArr);
        }
    }

    @ProxyMethod(name = "setComponentEnabledSetting")
    /* loaded from: classes3.dex */
    public static class SetComponentEnabledSetting extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "getPackageInfo")
    /* loaded from: classes3.dex */
    public static class GetPackageInfo extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            String str = (String) objArr[0];
            PackageInfo packageInfo = BlackBoxCore.getBPackageManager().getPackageInfo(str, ((Integer) objArr[1]).intValue(), BActivityThread.getUserId());
            if (packageInfo != null) {
                return packageInfo;
            }
            if (AppSystemEnv.isOpenPackage(str)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    @ProxyMethod(name = "getPackageUid")
    /* loaded from: classes3.dex */
    public static class GetPackageUid extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            MethodParameterUtils.replaceFirstAppPkg(objArr);
            return method.invoke(obj, objArr);
        }
    }

    @ProxyMethod(name = "getProviderInfo")
    /* loaded from: classes3.dex */
    public static class GetProviderInfo extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            ComponentName componentName = (ComponentName) objArr[0];
            ProviderInfo providerInfo = BlackBoxCore.getBPackageManager().getProviderInfo(componentName, ((Integer) objArr[1]).intValue(), BActivityThread.getUserId());
            if (providerInfo != null) {
                return providerInfo;
            }
            if (AppSystemEnv.isOpenPackage(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    @ProxyMethod(name = "getReceiverInfo")
    /* loaded from: classes3.dex */
    public static class GetReceiverInfo extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            ComponentName componentName = (ComponentName) objArr[0];
            ActivityInfo receiverInfo = BlackBoxCore.getBPackageManager().getReceiverInfo(componentName, ((Integer) objArr[1]).intValue(), BActivityThread.getUserId());
            if (receiverInfo != null) {
                return receiverInfo;
            }
            if (AppSystemEnv.isOpenPackage(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    @ProxyMethod(name = "getActivityInfo")
    /* loaded from: classes3.dex */
    public static class GetActivityInfo extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            ComponentName componentName = (ComponentName) objArr[0];
            ActivityInfo activityInfo = BlackBoxCore.getBPackageManager().getActivityInfo(componentName, ((Integer) objArr[1]).intValue(), BActivityThread.getUserId());
            if (activityInfo != null) {
                return activityInfo;
            }
            if (AppSystemEnv.isOpenPackage(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    @ProxyMethod(name = "getServiceInfo")
    /* loaded from: classes3.dex */
    public static class GetServiceInfo extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            ComponentName componentName = (ComponentName) objArr[0];
            ServiceInfo serviceInfo = BlackBoxCore.getBPackageManager().getServiceInfo(componentName, ((Integer) objArr[1]).intValue(), BActivityThread.getUserId());
            if (serviceInfo != null) {
                return serviceInfo;
            }
            if (AppSystemEnv.isOpenPackage(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    @ProxyMethod(name = "getInstalledApplications")
    /* loaded from: classes3.dex */
    public static class GetInstalledApplications extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return ParceledListSliceCompat.create(BlackBoxCore.getBPackageManager().getInstalledApplications(((Integer) objArr[0]).intValue(), BActivityThread.getUserId()));
        }
    }

    @ProxyMethod(name = "getInstalledPackages")
    /* loaded from: classes3.dex */
    public static class GetInstalledPackages extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return ParceledListSliceCompat.create(BlackBoxCore.getBPackageManager().getInstalledPackages(((Integer) objArr[0]).intValue(), BActivityThread.getUserId()));
        }
    }

    @ProxyMethod(name = "getApplicationInfo")
    /* loaded from: classes3.dex */
    public static class GetApplicationInfo extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            String str = (String) objArr[0];
            ApplicationInfo applicationInfo = BlackBoxCore.getBPackageManager().getApplicationInfo(str, ((Integer) objArr[1]).intValue(), BActivityThread.getUserId());
            if (applicationInfo != null) {
                return applicationInfo;
            }
            if (AppSystemEnv.isOpenPackage(str)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    @ProxyMethod(name = "queryContentProviders")
    /* loaded from: classes3.dex */
    public static class QueryContentProviders extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return ParceledListSliceCompat.create(BlackBoxCore.getBPackageManager().queryContentProviders(BActivityThread.getAppProcessName(), Process.myUid(), ((Integer) objArr[2]).intValue(), BActivityThread.getUserId()));
        }
    }

    @ProxyMethod(name = "resolveContentProvider")
    /* loaded from: classes3.dex */
    public static class ResolveContentProvider extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            ProviderInfo resolveContentProvider = BlackBoxCore.getBPackageManager().resolveContentProvider((String) objArr[0], ((Integer) objArr[1]).intValue(), BActivityThread.getUserId());
            return resolveContentProvider == null ? method.invoke(obj, objArr) : resolveContentProvider;
        }
    }

    @ProxyMethod(name = "canRequestPackageInstalls")
    /* loaded from: classes3.dex */
    public static class CanRequestPackageInstalls extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            MethodParameterUtils.replaceFirstAppPkg(objArr);
            return method.invoke(obj, objArr);
        }
    }
}
