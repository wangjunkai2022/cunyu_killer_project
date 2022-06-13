package top.niunaijun.blackbox.fake.service.base;

import java.lang.reflect.Method;
import top.niunaijun.blackbox.fake.hook.MethodHook;

/* loaded from: classes3.dex */
public class ValueMethodProxy extends MethodHook {
    String mName;
    Object mValue;

    public ValueMethodProxy(String str, Object obj) {
        this.mValue = obj;
        this.mName = str;
    }

    public String getName() {
        return this.mName;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // top.niunaijun.blackbox.fake.hook.MethodHook
    public Object hook(Object obj, Method method, Object[] objArr) throws Throwable {
        return this.mValue;
    }
}
