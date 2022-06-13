package top.niunaijun.blackbox.fake.service;

import java.lang.reflect.Method;
import reflection.android.app.ActivityManagerNative;
import reflection.android.app.ActivityManagerOreo;
import reflection.android.util.Singleton;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.fake.delegate.ContentProviderDelegate;
import top.niunaijun.blackbox.fake.hook.ClassInvocationStub;
import top.niunaijun.blackbox.fake.hook.MethodHook;
import top.niunaijun.blackbox.fake.hook.ProxyMethod;
import top.niunaijun.blackbox.fake.hook.ScanClass;
import top.niunaijun.blackbox.proxy.ProxyManifest;
import top.niunaijun.blackbox.utils.compat.BuildCompat;

@ScanClass({ActivityManagerCommonProxy.class})
/* loaded from: classes4.dex */
public class IActivityManagerProxy extends ClassInvocationStub {
    public static final String TAG = "ActivityManagerStub";

    @ProxyMethod(name = "broadcastIntentWithFeature")
    /* loaded from: classes4.dex */
    public static class BroadcastIntentWithFeature extends BroadcastIntent {
    }

    @ProxyMethod(name = "getIntentSender")
    /* loaded from: classes4.dex */
    public static class GetIntentSender extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return null;
        }
    }

    @ProxyMethod(name = "getIntentSenderWithFeature")
    /* loaded from: classes4.dex */
    public static class GetIntentSenderWithFeature extends GetIntentSender {
    }

    @ProxyMethod(name = "registerReceiver")
    /* loaded from: classes4.dex */
    public static class RegisterReceiver extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return null;
        }
    }

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public boolean isBadEnv() {
        return false;
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected Object getWho() {
        Object obj;
        if (BuildCompat.isOreo()) {
            obj = ActivityManagerOreo.IActivityManagerSingleton.get();
        } else {
            obj = BuildCompat.isL() ? ActivityManagerNative.gDefault.get() : null;
        }
        return Singleton.get.call(obj, new Object[0]);
    }

    @Override // top.niunaijun.blackbox.fake.hook.ClassInvocationStub
    protected void inject(Object obj, Object obj2) {
        Object obj3;
        if (BuildCompat.isOreo()) {
            obj3 = ActivityManagerOreo.IActivityManagerSingleton.get();
        } else {
            obj3 = BuildCompat.isL() ? ActivityManagerNative.gDefault.get() : null;
        }
        Singleton.mInstance.set(obj3, obj2);
    }

    @ProxyMethod(name = "getContentProvider")
    /* loaded from: classes4.dex */
    public static class GetContentProvider extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2 = objArr[getAuthIndex()];
            if (obj2 instanceof String) {
                String str = (String) obj2;
                if (ProxyManifest.isProxy(str)) {
                    return method.invoke(obj, objArr);
                }
                if (BuildCompat.isQ()) {
                    objArr[1] = BlackBoxCore.getHostPkg();
                }
                if (obj2.equals("settings") || obj2.equals("media") || obj2.equals("telephony")) {
                    Object invoke = method.invoke(obj, objArr);
                    ContentProviderDelegate.update(invoke, str);
                    return invoke;
                }
            }
            return method.invoke(obj, objArr);
        }

        private int getAuthIndex() {
            return BuildCompat.isQ() ? 2 : 1;
        }
    }

    @ProxyMethod(name = "startService")
    /* loaded from: classes4.dex */
    public static class StartService extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "stopService")
    /* loaded from: classes4.dex */
    public static class StopService extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "bindService")
    /* loaded from: classes4.dex */
    public static class BindService extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "bindIsolatedService")
    /* loaded from: classes4.dex */
    public static class BindIsolatedService extends BindService {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object beforeHook(Object obj, Method method, Object[] objArr) throws Throwable {
            objArr[6] = null;
            return super.beforeHook(obj, method, objArr);
        }
    }

    @ProxyMethod(name = "unbindService")
    /* loaded from: classes4.dex */
    public static class UnbindService extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "broadcastIntent")
    /* loaded from: classes4.dex */
    public static class BroadcastIntent extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "sendIntentSender")
    /* loaded from: classes4.dex */
    public static class SendIntentSender extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    @ProxyMethod(name = "grantUriPermission")
    /* loaded from: classes4.dex */
    public static class GrantUriPermission extends MethodHook {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // top.niunaijun.blackbox.fake.hook.MethodHook
        public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }
}
