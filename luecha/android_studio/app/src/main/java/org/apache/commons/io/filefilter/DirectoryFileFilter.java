package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class DirectoryFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter DIRECTORY = new DirectoryFileFilter();
    public static final IOFileFilter INSTANCE = DIRECTORY;
    private static final long serialVersionUID = -5148237843784525732L;

    protected DirectoryFileFilter() {
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return file.isDirectory();
    }
}
