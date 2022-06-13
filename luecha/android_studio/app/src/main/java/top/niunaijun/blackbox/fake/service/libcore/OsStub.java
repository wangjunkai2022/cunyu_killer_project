package top.niunaijun.blackbox.fake.service.libcore;

import java.lang.reflect.Method;
import reflection.libcore.io.Libcore;
import top.niunaijun.blackbox.core.IOCore;
import top.niunaijun.blackbox.fake.hook.ClassInvocationStub;

/* loaded from: classes4.dex */
public class OsStub extends ClassInvocationStub {
    public static final String TAG = "OsStub";
    private Object mBase = Libcore.os.get();

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void onBindMethod() {
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        return this.mBase;
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        Libcore.os.set(obj2);
    }

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return Libcore.os.get() != getProxyInvocation();
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (objArr != null) {
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] != null && (objArr[i] instanceof String) && ((String) objArr[i]).startsWith("/")) {
                    objArr[i] = IOCore.get().redirectPath((String) objArr[i]);
                }
            }
        }
        return super.invoke(obj, method, objArr);
    }
}
