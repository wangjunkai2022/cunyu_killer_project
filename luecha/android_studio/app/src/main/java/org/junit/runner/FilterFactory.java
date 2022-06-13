package org.junit.runner;

import org.junit.runner.manipulation.Filter;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface FilterFactory {
    Filter createFilter(FilterFactoryParams filterFactoryParams) throws FilterNotCreatedException;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class FilterNotCreatedException extends Exception {
        public FilterNotCreatedException(Exception exc) {
            super(exc.getMessage(), exc);
        }
    }
}
