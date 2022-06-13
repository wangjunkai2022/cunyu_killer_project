package top.niunaijun.blackbox.fake.hook;

import android.text.TextUtils;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
import top.niunaijun.blackbox.utils.MethodParameterUtils;

/* loaded from: classes3.dex */
public abstract class ClassInvocationStub implements InvocationHandler, IInjectHook {
    public static final String TAG = "ClassInvocationStub";
    private Object mBase;
    private Map<String, MethodHook> mMethodHookMap = new HashMap();
    private Object mProxyInvocation;

    protected abstract Object getWho();

    protected abstract void inject(Object obj, Object obj2);

    protected void onBindMethod() {
    }

    protected Object getProxyInvocation() {
        return this.mProxyInvocation;
    }

    protected Object getBase() {
        return this.mBase;
    }

    @Override // top.niunaijun.blackbox.fake.hook.IInjectHook
    public void injectHook() {
        Object who = getWho();
        this.mBase = who;
        Object newProxyInstance = Proxy.newProxyInstance(who.getClass().getClassLoader(), MethodParameterUtils.getAllInterface(this.mBase.getClass()), this);
        this.mProxyInvocation = newProxyInstance;
        inject(this.mBase, newProxyInstance);
        onBindMethod();
        for (Class<?> cls : getClass().getDeclaredClasses()) {
            initAnnotation(cls);
        }
        ScanClass scanClass = (ScanClass) getClass().getAnnotation(ScanClass.class);
        if (scanClass != null) {
            for (Class<?> cls2 : scanClass.value()) {
                for (Class<?> cls3 : cls2.getDeclaredClasses()) {
                    initAnnotation(cls3);
                }
            }
        }
    }

    protected void initAnnotation(Class<?> cls) {
        ProxyMethod proxyMethod = (ProxyMethod) cls.getAnnotation(ProxyMethod.class);
        if (proxyMethod != null) {
            String name = proxyMethod.name();
            if (!TextUtils.isEmpty(name)) {
                try {
                    addMethodHook(name, (MethodHook) cls.newInstance());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        ProxyMethods proxyMethods = (ProxyMethods) cls.getAnnotation(ProxyMethods.class);
        if (proxyMethods != null) {
            for (String str : proxyMethods.value()) {
                try {
                    addMethodHook(str, (MethodHook) cls.newInstance());
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
    }

    protected void addMethodHook(MethodHook methodHook) {
        this.mMethodHookMap.put(methodHook.getMethodName(), methodHook);
    }

    protected void addMethodHook(String str, MethodHook methodHook) {
        this.mMethodHookMap.put(str, methodHook);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        MethodHook methodHook = this.mMethodHookMap.get(method.getName());
        if (methodHook == null) {
            try {
                return method.invoke(this.mBase, objArr);
            } catch (Throwable th) {
                throw th.getCause();
            }
        } else {
            Object beforeHook = methodHook.beforeHook(this.mBase, method, objArr);
            if (beforeHook != null) {
                return beforeHook;
            }
            return methodHook.afterHook(methodHook.hook(this.mBase, method, objArr));
        }
    }
}
