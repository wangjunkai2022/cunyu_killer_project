package org.junit.runner.notification;

import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import org.junit.runner.Description;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class Failure implements Serializable {
    private static final long serialVersionUID = 1;
    private final Description fDescription;
    private final Throwable fThrownException;

    public Failure(Description description, Throwable th) {
        this.fThrownException = th;
        this.fDescription = description;
    }

    public String getTestHeader() {
        return this.fDescription.getDisplayName();
    }

    public Description getDescription() {
        return this.fDescription;
    }

    public Throwable getException() {
        return this.fThrownException;
    }

    @Override // java.lang.Object
    public String toString() {
        return getTestHeader() + ": " + this.fThrownException.getMessage();
    }

    public String getTrace() {
        StringWriter stringWriter = new StringWriter();
        getException().printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public String getMessage() {
        return getException().getMessage();
    }
}
