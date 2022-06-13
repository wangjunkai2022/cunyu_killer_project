package top.niunaijun.blackbox.fake.service;

import android.os.IInterface;
import java.lang.reflect.Method;
import reflection.android.app.AppOpsManager;
import reflection.android.os.ServiceManager;
import reflection.com.android.internal.app.IAppOpsService;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.fake.hook.BinderInvocationStub;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;
import top.niunaijun.blackbox.utils.MethodParameterUtils;

/* loaded from: classes4.dex */
public class IAppOpsManagerProxy extends BinderInvocationStub {
    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    public IAppOpsManagerProxy() {
        super(ServiceManager.getService.call("appops"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        return IAppOpsService.Stub.asInterface.call(ServiceManager.getService.call("appops"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        if (AppOpsManager.mService != null) {
            try {
                AppOpsManager.mService.set((android.app.AppOpsManager) BlackBoxCore.getContext().getSystemService("appops"), (IInterface) getProxyInvocation());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        replaceSystemService("appops");
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        MethodParameterUtils.replaceFirstAppPkg(objArr);
        MethodParameterUtils.replaceLastUserId(objArr);
        return super.invoke(obj, method, objArr);
    }

    @ProxyMethod(name = "checkPackage")
    /* loaded from: classes4.dex */
    public static class CheckPackage extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "checkPackage")
    /* loaded from: classes4.dex */
    public static class CheckOperation extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return method.invoke(obj, objArr);
        }
    }

    @ProxyMethod(name = "noteOperation")
    /* loaded from: classes4.dex */
    public static class NoteOperation extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return method.invoke(obj, objArr);
        }
    }
}
