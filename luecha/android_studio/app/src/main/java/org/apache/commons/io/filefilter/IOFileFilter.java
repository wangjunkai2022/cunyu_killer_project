package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface IOFileFilter extends FileFilter, FilenameFilter {
    @Override // java.io.FileFilter
    boolean accept(File file);

    @Override // java.io.FilenameFilter
    boolean accept(File file, String str);
}
