package com.appinstall.sdk;

import android.content.Context;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class bc {
    private static final CountDownLatch b = new CountDownLatch(1);
    private static String c;
    private static Object d;
    private cg a = cg.a("PlayInstallReferrer");

    /* loaded from: classes4.dex */
    static class a implements InvocationHandler {
        private final cg a = cg.a("StateListenerHandler");

        a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if ("onInstallReferrerSetupFinished".equalsIgnoreCase(method.getName())) {
                try {
                    int intValue = ((Integer) objArr[0]).intValue();
                    if (cf.a) {
                        cf.a("StateListenerHandler : onInstallReferrerSetupFinished code=" + intValue, new Object[0]);
                    }
                    if (intValue == 0) {
                        Class<?> cls = Class.forName("com.android.installreferrer.api.InstallReferrerClient");
                        String unused = bc.c = (String) Class.forName("com.android.installreferrer.api.ReferrerDetails").getDeclaredMethod("getInstallReferrer", new Class[0]).invoke(cls.getDeclaredMethod("getInstallReferrer", new Class[0]).invoke(bc.d, new Object[0]), new Object[0]);
                        cls.getDeclaredMethod("endConnection", new Class[0]).invoke(bc.d, new Object[0]);
                    }
                } catch (Exception unused2) {
                    if (cf.a) {
                        cf.a("InstallReferrerClient getInstallReferrer failed", new Object[0]);
                    }
                }
                bc.b.countDown();
                return null;
            } else if ("onInstallReferrerServiceDisconnected".equalsIgnoreCase(method.getName())) {
                if (!cf.a) {
                    return null;
                }
                cf.a("StateListenerHandler : InstallReferrerService Disconnected", new Object[0]);
                return null;
            } else if (!cf.a) {
                return null;
            } else {
                cf.a("StateListenerHandler : no such method : " + method.getName(), new Object[0]);
                return null;
            }
        }
    }

    public String a() {
        try {
            b.await(3, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
        }
        if (cf.a) {
            cf.a("PlayInstallReferrer getReferrer : %s", c);
        }
        return c;
    }

    public void a(Context context) {
        try {
            Class<?> cls = Class.forName("com.android.installreferrer.api.InstallReferrerClient");
            d = Class.forName("com.android.installreferrer.api.InstallReferrerClient$Builder").getDeclaredMethod("build", new Class[0]).invoke(cls.getDeclaredMethod("newBuilder", Context.class).invoke(null, context), new Object[0]);
            Class<?> cls2 = Class.forName("com.android.installreferrer.api.InstallReferrerStateListener");
            cls.getDeclaredMethod("startConnection", cls2).invoke(d, Proxy.newProxyInstance(context.getClassLoader(), new Class[]{cls2}, new a()));
        } catch (Exception unused) {
            b.countDown();
            if (cf.a) {
                cf.b("InstallReferrerClient Connection Failed", new Object[0]);
            }
        }
    }
}
