package top.niunaijun.blackbox.fake.service;

import java.lang.reflect.Method;
import reflection.android.os.ServiceManager;
import reflection.com.android.internal.telephony.ITelephony;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.fake.hook.BinderInvocationStub;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;
import top.niunaijun.blackbox.utils.Md5Utils;

/* loaded from: classes3.dex */
public class ITelephonyManagerProxy extends BinderInvocationStub {
    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    public ITelephonyManagerProxy() {
        super(ServiceManager.getService.call("phone"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        return ITelephony.Stub.asInterface.call(ServiceManager.getService.call("phone"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("phone");
    }

    @ProxyMethod(name = "getDeviceId")
    /* loaded from: classes3.dex */
    public static class GetDeviceId extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return Md5Utils.md5(BlackBoxCore.getHostPkg());
        }
    }

    @ProxyMethod(name = "getImeiForSlot")
    /* loaded from: classes3.dex */
    public static class getImeiForSlot extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return Md5Utils.md5(BlackBoxCore.getHostPkg());
        }
    }

    @ProxyMethod(name = "isUserDataEnabled")
    /* loaded from: classes3.dex */
    public static class IsUserDataEnabled extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return true;
        }
    }

    @ProxyMethod(name = "getSubscriberId")
    /* loaded from: classes3.dex */
    public static class GetSubscriberId extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return Md5Utils.md5(BlackBoxCore.getHostPkg());
        }
    }
}
