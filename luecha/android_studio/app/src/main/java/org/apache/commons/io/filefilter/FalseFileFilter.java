package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FalseFileFilter implements IOFileFilter, Serializable {
    public static final IOFileFilter FALSE = new FalseFileFilter();
    public static final IOFileFilter INSTANCE = FALSE;
    private static final long serialVersionUID = 6210271677940926200L;

    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return false;
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return false;
    }

    protected FalseFileFilter() {
    }
}
