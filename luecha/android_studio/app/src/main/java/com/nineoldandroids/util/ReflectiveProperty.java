package com.nineoldandroids.util;

import com.umeng.analytics.pro.ai;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
class ReflectiveProperty<T, V> extends Property<T, V> {
    private static final String PREFIX_GET = "get";
    private static final String PREFIX_IS = "is";
    private static final String PREFIX_SET = "set";
    private Field mField;
    private Method mGetter;
    private Method mSetter;

    public ReflectiveProperty(Class<T> cls, Class<V> cls2, String str) {
        super(cls2, str);
        String str2 = Character.toUpperCase(str.charAt(0)) + str.substring(1);
        String str3 = "get" + str2;
        try {
            try {
                this.mGetter = cls.getMethod(str3, null);
            } catch (NoSuchMethodException unused) {
                String str4 = ai.ae + str2;
                try {
                    try {
                        try {
                            this.mGetter = cls.getMethod(str4, null);
                        } catch (NoSuchMethodException unused2) {
                            this.mField = cls.getField(str);
                            Class<?> type = this.mField.getType();
                            if (!typesMatch(cls2, type)) {
                                throw new NoSuchPropertyException("Underlying type (" + type + ") does not match Property type (" + cls2 + ")");
                            }
                            return;
                        }
                    } catch (NoSuchFieldException unused3) {
                        throw new NoSuchPropertyException("No accessor method or field found for property with name " + str);
                    }
                } catch (NoSuchMethodException unused4) {
                    this.mGetter = cls.getDeclaredMethod(str4, null);
                    this.mGetter.setAccessible(true);
                }
            }
        } catch (NoSuchMethodException unused5) {
            this.mGetter = cls.getDeclaredMethod(str3, null);
            this.mGetter.setAccessible(true);
        }
        Class<?> returnType = this.mGetter.getReturnType();
        if (typesMatch(cls2, returnType)) {
            try {
                this.mSetter = cls.getDeclaredMethod("set" + str2, returnType);
                this.mSetter.setAccessible(true);
            } catch (NoSuchMethodException unused6) {
            }
        } else {
            throw new NoSuchPropertyException("Underlying type (" + returnType + ") does not match Property type (" + cls2 + ")");
        }
    }

    private boolean typesMatch(Class<V> cls, Class cls2) {
        if (cls2 == cls) {
            return true;
        }
        if (!cls2.isPrimitive()) {
            return false;
        }
        if (cls2 == Float.TYPE && cls == Float.class) {
            return true;
        }
        if (cls2 == Integer.TYPE && cls == Integer.class) {
            return true;
        }
        if (cls2 == Boolean.TYPE && cls == Boolean.class) {
            return true;
        }
        if (cls2 == Long.TYPE && cls == Long.class) {
            return true;
        }
        if (cls2 == Double.TYPE && cls == Double.class) {
            return true;
        }
        if (cls2 == Short.TYPE && cls == Short.class) {
            return true;
        }
        if (cls2 == Byte.TYPE && cls == Byte.class) {
            return true;
        }
        return cls2 == Character.TYPE && cls == Character.class;
    }

    @Override // com.nineoldandroids.util.Property
    public void set(T t, V v) {
        Method method = this.mSetter;
        if (method != null) {
            try {
                method.invoke(t, v);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        } else {
            Field field = this.mField;
            if (field != null) {
                try {
                    field.set(t, v);
                } catch (IllegalAccessException unused2) {
                    throw new AssertionError();
                }
            } else {
                throw new UnsupportedOperationException("Property " + getName() + " is read-only");
            }
        }
    }

    @Override // com.nineoldandroids.util.Property
    public V get(T t) {
        Method method = this.mGetter;
        if (method != null) {
            try {
                return (V) method.invoke(t, null);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        } else {
            Field field = this.mField;
            if (field != null) {
                try {
                    return (V) field.get(t);
                } catch (IllegalAccessException unused2) {
                    throw new AssertionError();
                }
            } else {
                throw new AssertionError();
            }
        }
    }

    @Override // com.nineoldandroids.util.Property
    public boolean isReadOnly() {
        return this.mSetter == null && this.mField == null;
    }
}
