package com.squareup.wire.internal;

import com.squareup.wire.ProtoAdapter;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class Internal {
    public static int countNonNull(Object obj, Object obj2) {
        int i = 1;
        int i2 = obj != null ? 1 : 0;
        if (obj2 == null) {
            i = 0;
        }
        return i2 + i;
    }

    public static int countNonNull(Object obj, Object obj2, Object obj3) {
        int i = 1;
        int i2 = (obj != null ? 1 : 0) + (obj2 != null ? 1 : 0);
        if (obj3 == null) {
            i = 0;
        }
        return i2 + i;
    }

    private Internal() {
    }

    public static <T> List<T> newMutableList() {
        return new MutableOnWriteList(Collections.emptyList());
    }

    public static <K, V> Map<K, V> newMutableMap() {
        return new LinkedHashMap();
    }

    public static <T> List<T> copyOf(String str, List<T> list) {
        if (list == null) {
            throw new NullPointerException(str + " == null");
        } else if (list == Collections.emptyList() || (list instanceof ImmutableList)) {
            return new MutableOnWriteList(list);
        } else {
            return new ArrayList(list);
        }
    }

    public static <K, V> Map<K, V> copyOf(String str, Map<K, V> map) {
        if (map != null) {
            return new LinkedHashMap(map);
        }
        throw new NullPointerException(str + " == null");
    }

    public static <T> List<T> immutableCopyOf(String str, List<T> list) {
        if (list != null) {
            if (list instanceof MutableOnWriteList) {
                list = ((MutableOnWriteList) list).mutableList;
            }
            if (list == Collections.emptyList() || (list instanceof ImmutableList)) {
                return list;
            }
            ImmutableList immutableList = new ImmutableList(list);
            if (!immutableList.contains(null)) {
                return immutableList;
            }
            throw new IllegalArgumentException(str + ".contains(null)");
        }
        throw new NullPointerException(str + " == null");
    }

    public static <K, V> Map<K, V> immutableCopyOf(String str, Map<K, V> map) {
        if (map == null) {
            throw new NullPointerException(str + " == null");
        } else if (map.isEmpty()) {
            return Collections.emptyMap();
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            if (linkedHashMap.containsKey(null)) {
                throw new IllegalArgumentException(str + ".containsKey(null)");
            } else if (!linkedHashMap.containsValue(null)) {
                return Collections.unmodifiableMap(linkedHashMap);
            } else {
                throw new IllegalArgumentException(str + ".containsValue(null)");
            }
        }
    }

    public static <T> void redactElements(List<T> list, ProtoAdapter<T> protoAdapter) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.set(i, protoAdapter.redact(list.get(i)));
        }
    }

    public static <T> void redactElements(Map<?, T> map, ProtoAdapter<T> protoAdapter) {
        for (Map.Entry<?, T> entry : map.entrySet()) {
            entry.setValue(protoAdapter.redact(entry.getValue()));
        }
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static IllegalStateException missingRequiredFields(Object... objArr) {
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        String str = "";
        for (int i = 0; i < length; i += 2) {
            if (objArr[i] == null) {
                if (sb.length() > 0) {
                    str = ai.az;
                }
                sb.append("\n  ");
                sb.append(objArr[i + 1]);
            }
        }
        throw new IllegalStateException("Required field" + str + " not set:" + ((Object) sb));
    }

    public static void checkElementsNotNull(List<?> list) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i) == null) {
                    throw new NullPointerException("Element at index " + i + " is null");
                }
            }
            return;
        }
        throw new NullPointerException("list == null");
    }

    public static void checkElementsNotNull(Map<?, ?> map) {
        if (map != null) {
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                if (entry.getKey() == null) {
                    throw new NullPointerException("map.containsKey(null)");
                } else if (entry.getValue() == null) {
                    throw new NullPointerException("Value for key " + entry.getKey() + " is null");
                }
            }
            return;
        }
        throw new NullPointerException("map == null");
    }

    public static int countNonNull(Object obj, Object obj2, Object obj3, Object obj4, Object... objArr) {
        int i = obj != null ? 1 : 0;
        if (obj2 != null) {
            i++;
        }
        if (obj3 != null) {
            i++;
        }
        if (obj4 != null) {
            i++;
        }
        for (Object obj5 : objArr) {
            if (obj5 != null) {
                i++;
            }
        }
        return i;
    }
}
