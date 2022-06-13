package top.niunaijun.blackbox.fake.hook;

import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public abstract class MethodHook {
    /* JADX INFO: Access modifiers changed from: protected */
    public Object afterHook(Object obj) throws Throwable {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object beforeHook(Object obj, Method method, Object[] objArr) throws Throwable {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getMethodName() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object hook(Object obj, Method method, Object[] objArr) throws Throwable;
}
