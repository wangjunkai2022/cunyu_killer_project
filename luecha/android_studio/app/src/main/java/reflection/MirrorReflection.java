package reflection;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* loaded from: classes4.dex */
public final class MirrorReflection {
    private Class<?> clazz;

    private MirrorReflection(Class<?> cls) {
        this.clazz = cls;
    }

    public Class<?> getClazz() {
        return this.clazz;
    }

    public static MirrorReflection on(String str) {
        return new MirrorReflection(findClass(str));
    }

    public static MirrorReflection on(String str, ClassLoader classLoader) {
        return new MirrorReflection(findClass(str, classLoader));
    }

    public static <T> MirrorReflection on(Class<T> cls) {
        return new MirrorReflection(cls);
    }

    public static <T> MethodWrapper<T> wrap(Method method) {
        return new MethodWrapper<>(method);
    }

    public static <T> StaticMethodWrapper<T> wrapStatic(Method method) {
        return new StaticMethodWrapper<>(method);
    }

    public <T> MethodWrapper<T> method(String str, Class<?>... clsArr) {
        return method(this.clazz, str, clsArr);
    }

    public static <T> MethodWrapper<T> method(String str, String str2, Class<?>... clsArr) {
        return method(findClass(str), str2, clsArr);
    }

    public static <T> MethodWrapper<T> method(Class<?> cls, String str, Class<?>... clsArr) {
        Method method = getMethod(cls, str, clsArr);
        if ((clsArr == null || clsArr.length == 0) && method == null) {
            method = findMethodNoChecks(cls, str);
        }
        return wrap(method);
    }

    public <T> StaticMethodWrapper<T> staticMethod(String str, Class<?>... clsArr) {
        return staticMethod(this.clazz, str, clsArr);
    }

    public static <T> StaticMethodWrapper<T> staticMethod(String str, String str2, Class<?>... clsArr) {
        return staticMethod(findClass(str), str2, clsArr);
    }

    public static <T> StaticMethodWrapper<T> staticMethod(Class<?> cls, String str, Class<?>... clsArr) {
        Method method = getMethod(cls, str, clsArr);
        if ((clsArr == null || clsArr.length == 0) && method == null) {
            method = findMethodNoChecks(cls, str);
        }
        return wrapStatic(method);
    }

    public static <T> FieldWrapper<T> wrap(Field field) {
        return new FieldWrapper<>(field);
    }

    public <T> FieldWrapper<T> field(String str) {
        return field(this.clazz, str);
    }

    public static <T> FieldWrapper<T> field(String str, String str2) {
        return field(findClass(str), str2);
    }

    public static <T> FieldWrapper<T> field(Class<?> cls, String str) {
        return wrap(getField(cls, str));
    }

    public static <T> ConstructorWrapper<T> wrap(Constructor<T> constructor) {
        return new ConstructorWrapper<>(constructor);
    }

    public <T> ConstructorWrapper<T> constructor(Class<?>... clsArr) {
        return wrap(getConstructor(this.clazz, clsArr));
    }

    public <T> ConstructorWrapper<T> constructorStringClass(String... strArr) {
        Class<?>[] clsArr = new Class[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            clsArr[i] = getClassFormString(strArr[i]);
        }
        return constructor(clsArr);
    }

    public static Class<?> findClassOrNull(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static Class<?> findClassOrNull(String str, ClassLoader classLoader) {
        try {
            return Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static Class<?> findClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Class<?> findClass(String str, ClassLoader classLoader) {
        try {
            return Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Method getMethod(Class<?> cls, String str, Class<?>... clsArr) {
        return findMethod(cls, str, clsArr);
    }

    public static Method getMethod(Class<?> cls, String str) {
        return findMethod(cls, str, new Class[0]);
    }

    private static String getParameterTypesMessage(Class<?>[] clsArr) {
        if (clsArr == null || clsArr.length == 0) {
            return "()";
        }
        StringBuilder sb = new StringBuilder("(");
        boolean z = true;
        for (Class<?> cls : clsArr) {
            if (z) {
                z = false;
            } else {
                sb.append(",");
            }
            sb.append(cls.getName());
        }
        sb.append(')');
        return sb.toString();
    }

    public static Method findMethod(Class<?> cls, String str, Class<?>... clsArr) {
        checkForFindMethod(cls, str, clsArr);
        return findMethodNoChecks(cls, str, clsArr);
    }

    public static Method findMethodNoChecks(Class<?> cls, String str, Class<?>... clsArr) {
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    public static Method findMethodNoChecks(Class<?> cls, String str) {
        try {
            Method[] declaredMethods = cls.getDeclaredMethods();
            for (Method method : declaredMethods) {
                if (method.getName().equals(str)) {
                    method.setAccessible(true);
                    return method;
                }
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void checkForFindMethod(Class<?> cls, String str, Class<?>... clsArr) {
        if (clsArr != null) {
            for (int i = 0; i < clsArr.length; i++) {
                if (clsArr[i] == null) {
                    throw new NullPointerException("parameterTypes[" + i + "] == null");
                }
            }
        }
    }

    public static Field getField(Class<?> cls, String str) {
        return findField(cls, str);
    }

    public static Field findField(Class<?> cls, String str) {
        return findFieldNoChecks(cls, str);
    }

    public static Field findFieldNoChecks(Class<?> cls, String str) {
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    public static <T> Constructor<T> getConstructor(Class<?> cls, Class<?>... clsArr) {
        return findConstructor(cls, clsArr);
    }

    public static <T> Constructor<T> findConstructor(Class<?> cls, Class<?>... clsArr) {
        checkForFindConstructor(cls, clsArr);
        return findConstructorNoChecks(cls, clsArr);
    }

    public static <T> Constructor<T> findConstructorNoChecks(Class<?> cls, Class<?>... clsArr) {
        try {
            Constructor<T> constructor = (Constructor<T>) cls.getDeclaredConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private static void checkForFindConstructor(Class<?> cls, Class<?>... clsArr) {
        if (clsArr != null) {
            for (int i = 0; i < clsArr.length; i++) {
                if (clsArr[i] == null) {
                    throw new NullPointerException("parameterTypes[" + i + "] == null");
                }
            }
        }
    }

    public boolean isInstance(Object obj) {
        return this.clazz.isInstance(obj);
    }

    public int getModifiers() {
        return this.clazz.getModifiers();
    }

    public boolean isLambdaClass() {
        return isLambdaClass(this.clazz);
    }

    public static boolean isLambdaClass(Class<?> cls) {
        return cls.getName().contains("$$Lambda$");
    }

    public static boolean isProxyClass(Class<?> cls) {
        return Proxy.isProxyClass(cls);
    }

    public static <T extends Throwable> void throwUnchecked(Throwable th) throws Throwable {
        throw th;
    }

    /* loaded from: classes4.dex */
    public static class MemberWrapper<M extends AccessibleObject & Member> {
        M member;

        MemberWrapper(M m) {
            if (m != null) {
                m.setAccessible(true);
                this.member = m;
            }
        }

        public final M unwrap() {
            return this.member;
        }

        public final int getModifiers() {
            return this.member.getModifiers();
        }

        public final Class<?> getDeclaringClass() {
            return this.member.getDeclaringClass();
        }
    }

    /* loaded from: classes4.dex */
    public static class MethodWrapper<T> extends MemberWrapper<Method> {
        MethodWrapper(Method method) {
            super(method);
        }

        public T call(Object obj, Object... objArr) {
            try {
                return (T) ((Method) this.member).invoke(obj, objArr);
            } catch (Throwable unused) {
                return null;
            }
        }

        public T callWithException(Object obj, Object... objArr) throws Throwable {
            return (T) ((Method) this.member).invoke(obj, objArr);
        }
    }

    /* loaded from: classes4.dex */
    public static class StaticMethodWrapper<T> extends MemberWrapper<Method> {
        StaticMethodWrapper(Method method) {
            super(method);
        }

        public T call(Object... objArr) {
            try {
                return (T) ((Method) this.member).invoke(null, objArr);
            } catch (Throwable unused) {
                return null;
            }
        }

        public T callWithException(Object... objArr) throws Throwable {
            return (T) ((Method) this.member).invoke(null, objArr);
        }
    }

    /* loaded from: classes4.dex */
    public static class FieldWrapper<T> extends MemberWrapper<Field> {
        FieldWrapper(Field field) {
            super(field);
        }

        public T get(Object obj) {
            try {
                return (T) ((Field) this.member).get(obj);
            } catch (Throwable unused) {
                return null;
            }
        }

        public T get() {
            return get(null);
        }

        public void set(Object obj, Object obj2) {
            try {
                ((Field) this.member).set(obj, obj2);
            } catch (Throwable unused) {
            }
        }

        public void set(Object obj) {
            set(null, obj);
        }

        public Class<?> getType() {
            return ((Field) this.member).getType();
        }
    }

    /* loaded from: classes4.dex */
    public static class ConstructorWrapper<T> extends MemberWrapper<Constructor<T>> {
        ConstructorWrapper(Constructor<T> constructor) {
            super(constructor);
        }

        public T newInstance(Object... objArr) {
            try {
                return (T) ((Constructor) this.member).newInstance(objArr);
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    static Class<?> getClassFormString(String str) {
        Class<?> protoType = getProtoType(str);
        if (protoType != null) {
            return protoType;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return protoType;
        }
    }

    static Class<?> getProtoType(String str) {
        if (str.equals("int")) {
            return Integer.TYPE;
        }
        if (str.equals("long")) {
            return Long.TYPE;
        }
        if (str.equals("boolean")) {
            return Boolean.TYPE;
        }
        if (str.equals("byte")) {
            return Byte.TYPE;
        }
        if (str.equals("short")) {
            return Short.TYPE;
        }
        if (str.equals("char")) {
            return Character.TYPE;
        }
        if (str.equals("float")) {
            return Float.TYPE;
        }
        if (str.equals("double")) {
            return Double.TYPE;
        }
        if (str.equals("void")) {
            return Void.TYPE;
        }
        return null;
    }
}
