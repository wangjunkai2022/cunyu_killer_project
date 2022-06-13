package top.niunaijun.blackbox.fake.service;

import java.lang.reflect.Method;
import reflection.android.os.IDeviceIdentifiersPolicyService;
import reflection.android.os.ServiceManager;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.fake.hook.BinderInvocationStub;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;
import top.niunaijun.blackbox.utils.Md5Utils;

/* loaded from: classes4.dex */
public class IDeviceIdentifiersPolicyProxy extends BinderInvocationStub {
    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    public IDeviceIdentifiersPolicyProxy() {
        super(ServiceManager.getService.call("device_identifiers"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        return IDeviceIdentifiersPolicyService.Stub.asInterface.call(ServiceManager.getService.call("device_identifiers"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("device_identifiers");
    }

    @ProxyMethod(name = "getSerialForPackage")
    /* loaded from: classes4.dex */
    public static class GetSerialForPackage extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return Md5Utils.md5(BlackBoxCore.getHostPkg());
        }
    }
}
