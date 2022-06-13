package top.niunaijun.blackbox.fake.service;

import java.lang.reflect.Method;
import reflection.android.app.IAlarmManager;
import reflection.android.os.ServiceManager;
import top.niunaijun.blackbox.fake.hook.BinderInvocationStub;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;
import top.niunaijun.blackbox.utils.MethodParameterUtils;

/* loaded from: classes4.dex */
public class IAlarmManagerProxy extends BinderInvocationStub {
    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    public IAlarmManagerProxy() {
        super(ServiceManager.getService.call("alarm"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        return IAlarmManager.Stub.asInterface.call(ServiceManager.getService.call("alarm"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("alarm");
    }

    @ProxyMethod(name = "set")
    /* loaded from: classes4.dex */
    public static class Set extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            MethodParameterUtils.replaceFirstAppPkg(objArr);
            return method.invoke(obj, objArr);
        }
    }
}
