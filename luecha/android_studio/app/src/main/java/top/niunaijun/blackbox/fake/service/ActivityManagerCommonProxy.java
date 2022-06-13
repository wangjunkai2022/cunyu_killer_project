package top.niunaijun.blackbox.fake.service;

import java.lang.reflect.Method;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;

/* loaded from: classes4.dex */
public class ActivityManagerCommonProxy {
    public static final String TAG = "CommonStub";

    @ProxyMethod(name = "startActivity")
    /* loaded from: classes4.dex */
    public static class StartActivity extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "startActivities")
    /* loaded from: classes4.dex */
    public static class StartActivities extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "activityResumed")
    /* loaded from: classes4.dex */
    public static class ActivityResumed extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return method.invoke(obj, objArr);
        }
    }

    @ProxyMethod(name = "activityDestroyed")
    /* loaded from: classes4.dex */
    public static class ActivityDestroyed extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return method.invoke(obj, objArr);
        }
    }

    @ProxyMethod(name = "finishActivity")
    /* loaded from: classes4.dex */
    public static class FinishActivity extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return method.invoke(obj, objArr);
        }
    }
}
