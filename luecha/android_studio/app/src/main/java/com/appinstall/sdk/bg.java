package com.appinstall.sdk;

import android.content.Context;
import android.text.TextUtils;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class bg {
    private static final LinkedBlockingQueue c = new LinkedBlockingQueue();
    private final cg a = cg.a("oaid");
    private String b = null;

    /* loaded from: classes2.dex */
    static class a implements InvocationHandler {
        private final cg a = cg.a("oaidLH");

        a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            Class<?> cls;
            String str = "NULL";
            try {
                if ("OnSupport".equals(method.getName())) {
                    if (objArr[0] != null ? Boolean.parseBoolean(String.valueOf(objArr[0])) : false) {
                        try {
                            cls = Class.forName("com.bun.miitmdid.supplier.IdSupplier");
                        } catch (ClassNotFoundException unused) {
                            cls = Class.forName("com.bun.supplier.IdSupplier");
                        }
                        str = (String) cls.getDeclaredMethod("getOAID", new Class[0]).invoke(objArr[1], new Object[0]);
                    } else if (cf.a) {
                        cf.b("IdSupplier isSupport = false", new Object[0]);
                    }
                } else {
                    str = null;
                }
            } catch (Exception e) {
                if (cf.a) {
                    cf.b("IdSupplier getOAID failed : %s", e.toString());
                }
            }
            bg.c.offer(str);
            return null;
        }
    }

    public String a() {
        return this.b;
    }

    public void a(Context context) {
        Class<?> cls;
        try {
            try {
                Class.forName("com.bun.miitmdid.core.JLibrary").getDeclaredMethod("InitEntry", Context.class).invoke(null, context);
            } catch (Exception e) {
                if (cf.a) {
                    cf.b("MdidSdkHelper InitSdk failed : %s", e.toString());
                    return;
                }
                return;
            }
        } catch (ClassNotFoundException unused) {
        }
        try {
            cls = Class.forName("com.bun.miitmdid.core.IIdentifierListener");
        } catch (ClassNotFoundException unused2) {
            cls = Class.forName("com.bun.supplier.IIdentifierListener");
        }
        Object newProxyInstance = Proxy.newProxyInstance(context.getClassLoader(), new Class[]{cls}, new a());
        Method declaredMethod = Class.forName("com.bun.miitmdid.core.MdidSdkHelper").getDeclaredMethod("InitSdk", Context.class, Boolean.TYPE, cls);
        String str = null;
        int i = 0;
        while (TextUtils.isEmpty(str) && i < 3) {
            Integer num = (Integer) declaredMethod.invoke(null, context, true, newProxyInstance);
            if (cf.a) {
                cf.a("MdidSdkHelper InitSdk return value：" + num, new Object[0]);
            }
            str = (String) c.poll(500, TimeUnit.MILLISECONDS);
            if (!"NULL".equals(str)) {
                this.b = str;
                i++;
            } else {
                return;
            }
        }
    }
}
