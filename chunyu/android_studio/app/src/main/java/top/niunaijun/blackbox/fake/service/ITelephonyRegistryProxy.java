package top.niunaijun.blackbox.fake.service;

import java.lang.reflect.Method;
import reflection.android.os.ServiceManager;
import reflection.com.android.internal.telephony.ITelephonyRegistry;
import top.niunaijun.blackbox.fake.hook.BinderInvocationStub;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;
import top.niunaijun.blackbox.utils.MethodParameterUtils;

/* loaded from: classes3.dex */
public class ITelephonyRegistryProxy extends BinderInvocationStub {
    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    public ITelephonyRegistryProxy() {
        super(ServiceManager.getService.call("telephony.registry"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        return ITelephonyRegistry.Stub.asInterface.call(ServiceManager.getService.call("telephony.registry"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("telephony.registry");
    }

    @ProxyMethod(name = "listenForSubscriber")
    /* loaded from: classes3.dex */
    public static class ListenForSubscriber extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            MethodParameterUtils.replaceFirstAppPkg(objArr);
            return method.invoke(obj, objArr);
        }
    }

    @ProxyMethod(name = "listen")
    /* loaded from: classes3.dex */
    public static class Listen extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            MethodParameterUtils.replaceFirstAppPkg(objArr);
            return method.invoke(obj, objArr);
        }
    }
}
