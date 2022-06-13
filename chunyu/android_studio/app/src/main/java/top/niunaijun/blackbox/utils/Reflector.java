package top.niunaijun.blackbox.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* loaded from: classes3.dex */
public class Reflector {
    public static final String LOG_TAG = "Reflector";
    protected Object mCaller;
    protected Constructor mConstructor;
    protected Field mField;
    protected Method mMethod;
    protected Class<?> mType;

    public static Reflector on(String str) throws Exception {
        return on(str, true, Reflector.class.getClassLoader());
    }

    public static Reflector on(String str, boolean z) throws Exception {
        return on(str, z, Reflector.class.getClassLoader());
    }

    public static Reflector on(String str, boolean z, ClassLoader classLoader) throws Exception {
        try {
            return on(Class.forName(str, z, classLoader));
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public static Reflector on(Class<?> cls) {
        Reflector reflector = new Reflector();
        reflector.mType = cls;
        return reflector;
    }

    public static Reflector with(Object obj) throws Exception {
        return on(obj.getClass()).bind(obj);
    }

    protected Reflector() {
    }

    public Reflector constructor(Class<?>... clsArr) throws Exception {
        try {
            Constructor<?> declaredConstructor = this.mType.getDeclaredConstructor(clsArr);
            this.mConstructor = declaredConstructor;
            declaredConstructor.setAccessible(true);
            this.mField = null;
            this.mMethod = null;
            return this;
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public <R> R newInstance(Object... objArr) throws Exception {
        Constructor constructor = this.mConstructor;
        if (constructor != null) {
            try {
                return (R) constructor.newInstance(objArr);
            } catch (InvocationTargetException e) {
                throw new Exception("Oops!", e.getTargetException());
            } catch (Throwable th) {
                throw new Exception("Oops!", th);
            }
        } else {
            throw new Exception("Constructor was null!");
        }
    }

    protected Object checked(Object obj) throws Exception {
        if (obj == null || this.mType.isInstance(obj)) {
            return obj;
        }
        throw new Exception("Caller [" + obj + "] is not a instance of type [" + this.mType + "]!");
    }

    protected void check(Object obj, Member member, String str) throws Exception {
        if (member == null) {
            throw new Exception(str + " was null!");
        } else if (obj != null || Modifier.isStatic(member.getModifiers())) {
            checked(obj);
        } else {
            throw new Exception("Need a caller!");
        }
    }

    public Reflector bind(Object obj) throws Exception {
        this.mCaller = checked(obj);
        return this;
    }

    public Reflector unbind() {
        this.mCaller = null;
        return this;
    }

    public Reflector field(String str) throws Exception {
        try {
            Field findField = findField(str);
            this.mField = findField;
            findField.setAccessible(true);
            this.mConstructor = null;
            this.mMethod = null;
            return this;
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    protected Field findField(String str) throws NoSuchFieldException {
        try {
            return this.mType.getField(str);
        } catch (NoSuchFieldException e) {
            for (Class<?> cls = this.mType; cls != null; cls = cls.getSuperclass()) {
                try {
                    return cls.getDeclaredField(str);
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e;
        }
    }

    public <R> R get() throws Exception {
        return (R) get(this.mCaller);
    }

    public <R> R get(Object obj) throws Exception {
        check(obj, this.mField, "Field");
        try {
            return (R) this.mField.get(obj);
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public Reflector set(Object obj) throws Exception {
        return set(this.mCaller, obj);
    }

    public Reflector set(Object obj, Object obj2) throws Exception {
        check(obj, this.mField, "Field");
        try {
            this.mField.set(obj, obj2);
            return this;
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public Reflector method(String str, Class<?>... clsArr) throws Exception {
        try {
            Method findMethod = findMethod(str, clsArr);
            this.mMethod = findMethod;
            findMethod.setAccessible(true);
            this.mConstructor = null;
            this.mField = null;
            return this;
        } catch (NoSuchMethodException e) {
            throw new Exception("Oops!", e);
        }
    }

    protected Method findMethod(String str, Class<?>... clsArr) throws NoSuchMethodException {
        try {
            return this.mType.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            for (Class<?> cls = this.mType; cls != null; cls = cls.getSuperclass()) {
                try {
                    return cls.getDeclaredMethod(str, clsArr);
                } catch (NoSuchMethodException unused) {
                }
            }
            throw e;
        }
    }

    public <R> R call(Object... objArr) throws Exception {
        return (R) callByCaller(this.mCaller, objArr);
    }

    public <R> R callByCaller(Object obj, Object... objArr) throws Exception {
        check(obj, this.mMethod, "Method");
        try {
            return (R) this.mMethod.invoke(obj, objArr);
        } catch (InvocationTargetException e) {
            throw new Exception("Oops!", e.getTargetException());
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    /* loaded from: classes3.dex */
    public static class QuietReflector extends Reflector {
        protected Throwable mIgnored;

        public static QuietReflector on(String str) {
            return on(str, true, QuietReflector.class.getClassLoader());
        }

        public static QuietReflector on(String str, boolean z) {
            return on(str, z, QuietReflector.class.getClassLoader());
        }

        public static QuietReflector on(String str, boolean z, ClassLoader classLoader) {
            Throwable th;
            Class cls;
            Class cls2 = null;
            try {
                try {
                    return on(Class.forName(str, z, classLoader), (Throwable) null);
                } catch (Throwable th2) {
                    th = th2;
                    cls2 = cls;
                    return on(cls2, th);
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        public static QuietReflector on(Class<?> cls) {
            return on(cls, cls == null ? new Exception("Type was null!") : null);
        }

        private static QuietReflector on(Class<?> cls, Throwable th) {
            QuietReflector quietReflector = new QuietReflector();
            quietReflector.mType = cls;
            quietReflector.mIgnored = th;
            return quietReflector;
        }

        public static QuietReflector with(Object obj) {
            if (obj == null) {
                return on((Class<?>) null);
            }
            return on(obj.getClass()).bind(obj);
        }

        protected QuietReflector() {
        }

        public Throwable getIgnored() {
            return this.mIgnored;
        }

        protected boolean skip() {
            return skipAlways() || this.mIgnored != null;
        }

        protected boolean skipAlways() {
            return this.mType == null;
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public QuietReflector constructor(Class<?>... clsArr) {
            if (skipAlways()) {
                return this;
            }
            try {
                this.mIgnored = null;
                Reflector.super.constructor(clsArr);
            } catch (Throwable th) {
                this.mIgnored = th;
            }
            return this;
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public <R> R newInstance(Object... objArr) {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) Reflector.super.newInstance(objArr);
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public QuietReflector bind(Object obj) {
            if (skipAlways()) {
                return this;
            }
            try {
                this.mIgnored = null;
                Reflector.super.bind(obj);
            } catch (Throwable th) {
                this.mIgnored = th;
            }
            return this;
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public QuietReflector unbind() {
            Reflector.super.unbind();
            return this;
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public QuietReflector field(String str) {
            if (skipAlways()) {
                return this;
            }
            try {
                this.mIgnored = null;
                Reflector.super.field(str);
            } catch (Throwable th) {
                this.mIgnored = th;
            }
            return this;
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public <R> R get() {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) Reflector.super.get();
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public <R> R get(Object obj) {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) Reflector.super.get(obj);
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public QuietReflector set(Object obj) {
            if (skip()) {
                return this;
            }
            try {
                this.mIgnored = null;
                Reflector.super.set(obj);
            } catch (Throwable th) {
                this.mIgnored = th;
            }
            return this;
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public QuietReflector set(Object obj, Object obj2) {
            if (skip()) {
                return this;
            }
            try {
                this.mIgnored = null;
                Reflector.super.set(obj, obj2);
            } catch (Throwable th) {
                this.mIgnored = th;
            }
            return this;
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public QuietReflector method(String str, Class<?>... clsArr) {
            if (skipAlways()) {
                return this;
            }
            try {
                this.mIgnored = null;
                Reflector.super.method(str, clsArr);
            } catch (Throwable th) {
                this.mIgnored = th;
            }
            return this;
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public <R> R call(Object... objArr) {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) Reflector.super.call(objArr);
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }

        @Override // top.niunaijun.blackbox.utils.Reflector
        public <R> R callByCaller(Object obj, Object... objArr) {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) Reflector.super.callByCaller(obj, objArr);
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }
    }
}
