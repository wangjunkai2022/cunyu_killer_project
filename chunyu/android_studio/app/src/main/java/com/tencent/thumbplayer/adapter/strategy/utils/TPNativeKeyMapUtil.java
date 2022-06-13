package com.tencent.thumbplayer.adapter.strategy.utils;

import android.text.TextUtils;
import android.util.SparseArray;
import com.tencent.thumbplayer.adapter.a.b.c;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.tplayer.a;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class TPNativeKeyMapUtil {
    private static final String REVERSE_MAP_NAME_SUFFIX = ".reverseMap";
    private static final String TAG = "TPNativeKeyMapUtil";
    private static final Map<String, Map<Number, Number>> sNameToMap = new ConcurrentHashMap();
    private static final Map<Class<?>, AtomicBoolean> sHasThisAnnotationInitMap = new ConcurrentHashMap();
    private static final SparseArray<c.a> sToNativeOptionalIdMap = new SparseArray<>();
    private static final SparseArray<String> sOptionalIdKeyToNameMap = new SparseArray<>();
    private static final AtomicBoolean sHasOptionalIdMapInit = new AtomicBoolean(false);

    private static <T extends Annotation> void buildBiDirectionMapForAnnotation(Class<T> cls) {
        AtomicBoolean atomicBoolean;
        TPLogUtil.i(TAG, "buildBiDirectionMapForAnnotation, clazz=" + cls);
        synchronized (sHasThisAnnotationInitMap) {
            atomicBoolean = sHasThisAnnotationInitMap.get(cls);
            if (atomicBoolean == null) {
                atomicBoolean = new AtomicBoolean(false);
                sHasThisAnnotationInitMap.put(cls, atomicBoolean);
            }
        }
        synchronized (atomicBoolean) {
            if (atomicBoolean.get()) {
                TPLogUtil.i(TAG, "className=" + cls.getSimpleName() + " already init");
                return;
            }
            searchClassToFillMap(cls);
            atomicBoolean.set(true);
        }
    }

    private static void buildNativeInitConfigMap() {
        TPNativeKeyMap.MapInitConfig mapInitConfig;
        try {
            Class<?> cls = Class.forName(TPOptionalID.class.getName());
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (field.getType().toString().equals("int") && (mapInitConfig = (TPNativeKeyMap.MapInitConfig) field.getAnnotation(TPNativeKeyMap.MapInitConfig.class)) != null) {
                    int i = field.getInt(cls);
                    sOptionalIdKeyToNameMap.put(i, mapInitConfig.keyName());
                    if (mapInitConfig.value() == -1) {
                        sToNativeOptionalIdMap.put(i, new c.a());
                    } else {
                        field.setAccessible(true);
                        sToNativeOptionalIdMap.put(i, new c.a(mapInitConfig.type(), mapInitConfig.value()));
                    }
                }
            }
        } catch (ClassNotFoundException | IllegalAccessException e) {
            TPLogUtil.e(TAG, e);
        }
    }

    private static void buildNativeOptionalIdToMapInternal(Class<?> cls) {
        TPNativeKeyMap.MapOptionalId mapOptionalId;
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (field.getType().toString().equals("int") && (mapOptionalId = (TPNativeKeyMap.MapOptionalId) field.getAnnotation(TPNativeKeyMap.MapOptionalId.class)) != null) {
                    int i = field.getInt(cls);
                    sOptionalIdKeyToNameMap.put(i, mapOptionalId.keyName());
                    if (mapOptionalId.value() == -1) {
                        sToNativeOptionalIdMap.put(i, new c.a());
                    } else {
                        field.setAccessible(true);
                        sToNativeOptionalIdMap.put(i, new c.a(mapOptionalId.type(), mapOptionalId.value()));
                    }
                }
            }
        } catch (IllegalAccessException e) {
            TPLogUtil.e(TAG, e);
        }
    }

    private static void buildOptionalIdMap() {
        synchronized (sHasOptionalIdMapInit) {
            if (sToNativeOptionalIdMap.size() == 0) {
                if (!sHasOptionalIdMapInit.get()) {
                    buildNativeInitConfigMap();
                    buildPublicToNativeOptionalIdMap();
                    buildPrivateToNativeOptionalIdMap();
                    sHasOptionalIdMapInit.set(true);
                    return;
                }
                throw new IllegalStateException("构建Map错误，请查看【--keep class com.tencent.thumbplayer.api.** { *; }】是否加入反混淆");
            }
        }
    }

    private static void buildPrivateToNativeOptionalIdMap() {
        try {
            buildNativeOptionalIdToMapInternal(Class.forName(a.class.getName()));
        } catch (ClassNotFoundException e) {
            TPLogUtil.e(TAG, e);
        }
    }

    private static void buildPublicToNativeOptionalIdMap() {
        try {
            buildNativeOptionalIdToMapInternal(Class.forName(TPOptionalID.class.getName()));
        } catch (ClassNotFoundException e) {
            TPLogUtil.e(TAG, e);
        }
    }

    private static <T extends Annotation> void checkFillMapValidity(Class<T> cls, Map<Number, Number> map, Map<Number, Number> map2, Class<?> cls2, Number number, Number number2) {
        if (map.containsKey(number2)) {
            throw new IllegalStateException(cls2.getName() + " 配置了重复的成员变量，注解=" + cls.getName() + " 成员变量值=" + number2 + " 请查找一下使用这个注解@" + cls.getName() + "的哪两个成员变量值相等");
        } else if (map2.containsKey(number)) {
            throw new IllegalStateException(cls2.getName() + " 配置了重复的注解值，注解=" + cls.getName() + " 成员变量值=" + number2 + " 请查找一下@" + cls.getName() + "(这个值)在哪里重复了");
        }
    }

    public static c.a convertToNativeOptionalId(@TPCommonEnum.TPOptionalId int i) {
        if (sToNativeOptionalIdMap.size() == 0) {
            buildOptionalIdMap();
        }
        return sToNativeOptionalIdMap.get(i, new c.a());
    }

    public static <T extends Annotation> Set<Map.Entry<Number, Number>> getEntrySetOfToNativeMap(Class<T> cls) {
        return new HashSet(getMapForAnnotation(cls, true).entrySet());
    }

    public static <T extends Annotation> Set<Map.Entry<Number, Number>> getEntrySetOfToTPMap(Class<T> cls) {
        return new HashSet(getMapForAnnotation(cls, false).entrySet());
    }

    private static <T extends Annotation> Map<Number, Number> getMapForAnnotation(Class<T> cls, boolean z) {
        String mapKey = getMapKey(cls, z);
        Map<Number, Number> map = sNameToMap.get(mapKey);
        if (map == null || map.size() == 0) {
            buildBiDirectionMapForAnnotation(cls);
            map = sNameToMap.get(mapKey);
        }
        if (((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)) == null) {
            throw new IllegalArgumentException(cls.getSimpleName() + "has not SearchConfig annotation");
        } else if (map != null && map.size() != 0) {
            return map;
        } else {
            throw new IllegalStateException(cls.getSimpleName() + " is null after buildBiDirectionMap");
        }
    }

    private static <T extends Annotation> String getMapKey(Class<T> cls, boolean z) {
        String canonicalName = cls.getCanonicalName();
        if (z) {
            return canonicalName;
        }
        return canonicalName + REVERSE_MAP_NAME_SUFFIX;
    }

    public static String getOptionalIdName(int i) {
        if (!sHasOptionalIdMapInit.get()) {
            buildOptionalIdMap();
        }
        return sOptionalIdKeyToNameMap.get(i, "");
    }

    public static void init() {
        long currentTimeMillis = System.currentTimeMillis();
        Class<?>[] declaredClasses = TPNativeKeyMap.class.getDeclaredClasses();
        TPLogUtil.i(TAG, "init BiDirectionMap for tp&native value");
        for (Class<?> cls : declaredClasses) {
            if (cls.isAnnotation() && Modifier.isPublic(cls.getModifiers()) && ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)) != null) {
                buildBiDirectionMapForAnnotation(cls);
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        TPLogUtil.i(TAG, "init cost time=" + (currentTimeMillis2 - currentTimeMillis));
    }

    private static <T extends Annotation> void searchClassToFillMap(Class<T> cls) {
        HashMap hashMap;
        HashMap hashMap2;
        Throwable e;
        int i;
        Annotation annotation;
        Number number;
        Number number2;
        boolean z = true;
        String mapKey = getMapKey(cls, true);
        Map<Number, Number> map = sNameToMap.get(mapKey);
        int i2 = 0;
        String mapKey2 = getMapKey(cls, false);
        Map<Number, Number> map2 = sNameToMap.get(mapKey2);
        if (map == null || map2 == null) {
            HashMap hashMap3 = new HashMap();
            sNameToMap.put(mapKey, hashMap3);
            HashMap hashMap4 = new HashMap();
            sNameToMap.put(mapKey2, hashMap4);
            hashMap = hashMap4;
            hashMap2 = hashMap3;
        } else {
            hashMap2 = map;
            hashMap = map2;
        }
        try {
            TPNativeKeyMap.SearchConfig searchConfig = (TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class);
            if (searchConfig != null) {
                Class<?> searchClass = searchConfig.searchClass();
                Field[] declaredFields = searchClass.getDeclaredFields();
                int length = declaredFields.length;
                int i3 = 0;
                while (i3 < length) {
                    Field field = declaredFields[i3];
                    String str = "";
                    if (searchConfig.valueClass() == Integer.TYPE) {
                        str = "int";
                    } else if (searchConfig.valueClass() == Long.TYPE) {
                        str = "long";
                    }
                    if (!TextUtils.isEmpty(str)) {
                        if (field.getType().toString().equals(str) && (annotation = field.getAnnotation(cls)) != null) {
                            field.setAccessible(z);
                            Method declaredMethod = cls.getDeclaredMethod("value", new Class[i2]);
                            declaredMethod.setAccessible(true);
                            if (searchConfig.valueClass() == Integer.TYPE) {
                                number = (Integer) declaredMethod.invoke(annotation, new Object[0]);
                                number2 = Integer.valueOf(field.getInt(searchClass));
                                i2 = 0;
                            } else if (searchConfig.valueClass() == Long.TYPE) {
                                i2 = 0;
                                number = (Long) declaredMethod.invoke(annotation, new Object[0]);
                                number2 = Long.valueOf(field.getLong(searchClass));
                            } else {
                                throw new IllegalArgumentException("代码还没实现对" + searchConfig.valueClass().getName() + "的支持");
                            }
                            i = i3;
                            checkFillMapValidity(cls, hashMap2, hashMap, searchClass, number, number2);
                            hashMap2.put(number2, number);
                            hashMap.put(number, number2);
                            i3 = i + 1;
                            z = true;
                        }
                        i = i3;
                        i2 = i2;
                        i3 = i + 1;
                        z = true;
                    } else {
                        throw new IllegalArgumentException("代码还没实现对" + searchConfig.valueClass().getName() + "的支持");
                    }
                }
                return;
            }
            throw new IllegalArgumentException(cls.getCanonicalName() + "has not SearchConfig annotation");
        } catch (IllegalAccessException e2) {
            e = e2;
            TPLogUtil.e(TAG, e);
        } catch (NoSuchMethodException e3) {
            TPLogUtil.e(TAG, e3);
            throw new IllegalStateException("com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap下所有元素需要加到混淆中, 并且每个MapXXX注解需要有value方法");
        } catch (InvocationTargetException e4) {
            e = e4;
            TPLogUtil.e(TAG, e);
        }
    }

    public static <T extends Annotation> int toNativeIntValue(Class<T> cls, int i) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, true);
        if (mapForAnnotation.containsKey(Integer.valueOf(i))) {
            return mapForAnnotation.get(Integer.valueOf(i)).intValue();
        }
        TPLogUtil.e(TAG, "toNativeValue, tpValue=" + i + "return default value, clazz" + cls);
        return (int) ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).nativeDefValue();
    }

    public static <T extends Annotation> long toNativeLongValue(Class<T> cls, long j) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, true);
        if (mapForAnnotation.containsKey(Long.valueOf(j))) {
            return mapForAnnotation.get(Long.valueOf(j)).longValue();
        }
        TPLogUtil.e(TAG, "toNativeValue, tpValue=" + j + "return default value, clazz" + cls);
        return ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).nativeDefValue();
    }

    public static <T extends Annotation> int toTPIntValue(Class<T> cls, int i) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, false);
        if (mapForAnnotation.containsKey(Integer.valueOf(i))) {
            return mapForAnnotation.get(Integer.valueOf(i)).intValue();
        }
        TPLogUtil.i(TAG, "toTPValue, nativeValue=" + i + "return default value, clazz" + cls);
        return (int) ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).tpDefValue();
    }

    public static <T extends Annotation> long toTPLongValue(Class<T> cls, long j) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, false);
        if (mapForAnnotation.containsKey(Long.valueOf(j))) {
            return mapForAnnotation.get(Long.valueOf(j)).longValue();
        }
        TPLogUtil.i(TAG, "toTPValue, nativeValue=" + j + "return default value, clazz" + cls);
        return ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).tpDefValue();
    }
}
