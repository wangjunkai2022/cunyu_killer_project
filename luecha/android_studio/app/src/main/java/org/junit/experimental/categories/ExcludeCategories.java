package org.junit.experimental.categories;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.experimental.categories.Categories;
import org.junit.runner.manipulation.Filter;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class ExcludeCategories extends CategoryFilterFactory {
    @Override // org.junit.experimental.categories.CategoryFilterFactory
    protected Filter createFilter(List<Class<?>> list) {
        return new ExcludesAny(list);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class ExcludesAny extends Categories.CategoryFilter {
        public ExcludesAny(List<Class<?>> list) {
            this(new HashSet(list));
        }

        public ExcludesAny(Set<Class<?>> set) {
            super(true, null, true, set);
        }

        @Override // org.junit.experimental.categories.Categories.CategoryFilter, org.junit.runner.manipulation.Filter
        public String describe() {
            return "excludes " + super.describe();
        }
    }
}
