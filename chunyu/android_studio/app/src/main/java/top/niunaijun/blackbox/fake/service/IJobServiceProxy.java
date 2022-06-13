package top.niunaijun.blackbox.fake.service;

import java.lang.reflect.Method;
import reflection.android.app.job.IJobScheduler;
import reflection.android.os.ServiceManager;
import top.niunaijun.blackbox.fake.hook.BinderInvocationStub;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;

/* loaded from: classes3.dex */
public class IJobServiceProxy extends BinderInvocationStub {
    public static final String TAG = "JobServiceStub";

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    public IJobServiceProxy() {
        super(ServiceManager.getService.call("jobscheduler"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        return IJobScheduler.Stub.asInterface.call(ServiceManager.getService.call("jobscheduler"));
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("jobscheduler");
    }

    @ProxyMethod(name = "schedule")
    /* loaded from: classes3.dex */
    public static class Schedule extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "cancel")
    /* loaded from: classes3.dex */
    public static class Cancel extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "cancelAll")
    /* loaded from: classes3.dex */
    public static class CancelAll extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }
}
