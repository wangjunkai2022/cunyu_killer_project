package com.tencent.thumbplayer.utils;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class n {
    private static ArrayList<a> a = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class a {
        String a;
        Map<Integer, Method> b;

        private a() {
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    @Target({ElementType.METHOD, ElementType.TYPE})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface b {
        boolean a() default false;

        boolean b() default false;

        boolean c() default false;
    }

    public static Method a(Class<?> cls, String str, Object[] objArr) {
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null) {
            return null;
        }
        for (Map.Entry<Integer, Method> entry : b2.entrySet()) {
            Method value = entry.getValue();
            if (value != null && str.equals(value.getName()) && a(value, objArr)) {
                return value;
            }
        }
        return null;
    }

    private static boolean a(Class<?> cls) {
        Iterator<a> it = a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next != null && next.a != null && next.a.equals(cls.getName())) {
                return true;
            }
        }
        return false;
    }

    public static synchronized boolean a(Class<?> cls, int i) {
        synchronized (n.class) {
            if (a(cls)) {
                return true;
            }
            HashMap hashMap = new HashMap();
            try {
                Method[] methods = cls.getMethods();
                int i2 = i;
                for (Method method : methods) {
                    if (((b) method.getAnnotation(b.class)) != null) {
                        hashMap.put(Integer.valueOf(i2), method);
                        i2++;
                    }
                }
                a aVar = new a();
                aVar.a = cls.getName();
                aVar.b = hashMap;
                a.add(aVar);
                return true;
            } catch (Exception unused) {
                hashMap.clear();
                return false;
            }
        }
    }

    private static boolean a(Class<?> cls, Object obj) {
        if (!cls.isPrimitive()) {
            return false;
        }
        try {
            return obj.getClass().getField("TYPE").get(null).equals(cls);
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean a(Method method, Object[] objArr) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (objArr == null || objArr.length == 0) {
            return parameterTypes.length == 0;
        }
        if (parameterTypes.length != objArr.length) {
            return false;
        }
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls = parameterTypes[i];
            if (objArr[i] == null) {
                if (cls.isPrimitive()) {
                    return false;
                }
            } else if (!cls.isAssignableFrom(objArr[i].getClass()) && !a(cls, objArr[i])) {
                return false;
            }
        }
        return true;
    }

    public static int b(Class<?> cls, String str, Object[] objArr) {
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null) {
            return -1;
        }
        for (Map.Entry<Integer, Method> entry : b2.entrySet()) {
            Method value = entry.getValue();
            if (value != null && str.equals(value.getName()) && a(value, objArr)) {
                return entry.getKey().intValue();
            }
        }
        return -1;
    }

    public static String b(Class<?> cls, int i) {
        Method method;
        Map<Integer, Method> b2 = b(cls);
        return (b2 == null || (method = b2.get(Integer.valueOf(i))) == null) ? "unknown" : method.getName();
    }

    private static Map<Integer, Method> b(Class<?> cls) {
        Iterator<a> it = a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next != null && next.a != null && next.a.equals(cls.getName())) {
                return next.b;
            }
        }
        return null;
    }

    public static boolean c(Class<?> cls, int i) {
        Method method;
        Map<Integer, Method> b2 = b(cls);
        if (!(b2 == null || (method = b2.get(Integer.valueOf(i))) == null)) {
            Class<?>[] exceptionTypes = method.getExceptionTypes();
            if (exceptionTypes != null && exceptionTypes.length > 0) {
                return true;
            }
            b bVar = (b) method.getAnnotation(b.class);
            if (bVar != null) {
                return bVar.a();
            }
        }
        return false;
    }

    public static boolean d(Class<?> cls, int i) {
        Method method;
        b bVar;
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null || (method = b2.get(Integer.valueOf(i))) == null || (bVar = (b) method.getAnnotation(b.class)) == null) {
            return false;
        }
        return bVar.b();
    }

    public static boolean e(Class<?> cls, int i) {
        Method method;
        b bVar;
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null || (method = b2.get(Integer.valueOf(i))) == null || (bVar = (b) method.getAnnotation(b.class)) == null) {
            return false;
        }
        return bVar.c();
    }

    public static Method f(Class<?> cls, int i) {
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null) {
            return null;
        }
        return b2.get(Integer.valueOf(i));
    }
}
