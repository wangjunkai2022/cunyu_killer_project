package com.google.common.io;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface LineProcessor<T> {
    T getResult();

    boolean processLine(String str) throws IOException;
}
