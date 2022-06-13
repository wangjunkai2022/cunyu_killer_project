package org.apache.commons.io.filefilter;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ConditionalFileFilter {
    void addFileFilter(IOFileFilter iOFileFilter);

    List<IOFileFilter> getFileFilters();

    boolean removeFileFilter(IOFileFilter iOFileFilter);

    void setFileFilters(List<IOFileFilter> list);
}
