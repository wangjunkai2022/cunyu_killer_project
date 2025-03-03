package org.apache.commons.io.output;

import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class CloseShieldOutputStream extends ProxyOutputStream {
    public CloseShieldOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.apache.commons.io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.out = new ClosedOutputStream();
    }
}
