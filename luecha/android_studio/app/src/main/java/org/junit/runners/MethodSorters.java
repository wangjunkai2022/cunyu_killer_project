package org.junit.runners;

import java.lang.reflect.Method;
import java.util.Comparator;
import org.junit.internal.MethodSorter;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public enum MethodSorters {
    NAME_ASCENDING(MethodSorter.NAME_ASCENDING),
    JVM(null),
    DEFAULT(MethodSorter.DEFAULT);
    
    private final Comparator<Method> comparator;

    MethodSorters(Comparator comparator) {
        this.comparator = comparator;
    }

    public Comparator<Method> getComparator() {
        return this.comparator;
    }
}
