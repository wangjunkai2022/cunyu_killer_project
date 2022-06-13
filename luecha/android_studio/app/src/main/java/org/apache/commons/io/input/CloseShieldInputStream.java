package org.apache.commons.io.input;

import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class CloseShieldInputStream extends ProxyInputStream {
    public CloseShieldInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public void close() {
        this.in = new ClosedInputStream();
    }
}
