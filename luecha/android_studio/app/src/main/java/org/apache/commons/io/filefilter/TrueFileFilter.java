package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TrueFileFilter implements IOFileFilter, Serializable {
    private static final long serialVersionUID = 8782512160909720199L;
    public static final IOFileFilter TRUE = new TrueFileFilter();
    public static final IOFileFilter INSTANCE = TRUE;

    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return true;
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return true;
    }

    protected TrueFileFilter() {
    }
}
