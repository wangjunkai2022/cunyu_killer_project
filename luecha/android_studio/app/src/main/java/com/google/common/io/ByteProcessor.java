package com.google.common.io;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ByteProcessor<T> {
    T getResult();

    boolean processBytes(byte[] bArr, int i, int i2) throws IOException;
}
