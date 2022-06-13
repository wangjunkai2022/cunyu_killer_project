package com.facebook.common.memory;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public class MemoryUiTrimmableRegistry {
    private static final Set<MemoryUiTrimmable> sUiTrimmables = Collections.newSetFromMap(new WeakHashMap());

    public static void registerUiTrimmable(MemoryUiTrimmable memoryUiTrimmable) {
        sUiTrimmables.add(memoryUiTrimmable);
    }

    public static Iterable<MemoryUiTrimmable> iterable() {
        return sUiTrimmables;
    }
}
