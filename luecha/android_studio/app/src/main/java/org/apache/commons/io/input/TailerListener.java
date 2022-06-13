package org.apache.commons.io.input;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TailerListener {
    void fileNotFound();

    void fileRotated();

    void handle(Exception exc);

    void handle(String str);

    void init(Tailer tailer);
}
