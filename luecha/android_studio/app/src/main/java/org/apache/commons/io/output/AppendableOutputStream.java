package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.Appendable;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class AppendableOutputStream<T extends Appendable> extends OutputStream {
    private final T appendable;

    public AppendableOutputStream(T t) {
        this.appendable = t;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.appendable.append((char) i);
    }

    public T getAppendable() {
        return this.appendable;
    }
}
