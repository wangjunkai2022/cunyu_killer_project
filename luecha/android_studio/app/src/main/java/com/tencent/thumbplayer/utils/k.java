package com.tencent.thumbplayer.utils;

import java.lang.reflect.Method;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class k {
    private static Method a;
    private static Method b;
    private static Method c;

    static {
        try {
            a = Class.class.getDeclaredMethod("forName", String.class);
            b = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            c = Class.class.getDeclaredMethod("getDeclaredField", String.class);
        } catch (Throwable th) {
            TPLogUtil.e("TPPrimaryReflectUtil", th.getMessage());
        }
    }

    public static Object a(Object obj, String str, String str2, Class[] clsArr, Object... objArr) {
        try {
            Method a2 = a(str, str2, clsArr);
            if (a2 != null) {
                return a2.invoke(obj, objArr);
            }
            return null;
        } catch (Throwable th) {
            TPLogUtil.e("TPPrimaryReflectUtil", th.getMessage());
            return null;
        }
    }

    private static Method a(String str, String str2, Class[] clsArr) {
        Throwable th;
        Method method = null;
        if (!a()) {
            return null;
        }
        try {
            Method method2 = (Method) b.invoke((Class) a.invoke(null, str), str2, clsArr);
            try {
                method2.setAccessible(true);
                return method2;
            } catch (Throwable th2) {
                th = th2;
                method = method2;
                TPLogUtil.e("TPPrimaryReflectUtil", th.getMessage());
                return method;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static boolean a() {
        return (a == null || b == null || c == null) ? false : true;
    }
}
