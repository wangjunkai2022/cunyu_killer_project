package org.junit.runners.model;

import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TestTimedOutException extends Exception {
    private static final long serialVersionUID = 31935685163547539L;
    private final TimeUnit timeUnit;
    private final long timeout;

    public TestTimedOutException(long j, TimeUnit timeUnit) {
        super(String.format("test timed out after %d %s", Long.valueOf(j), timeUnit.name().toLowerCase()));
        this.timeUnit = timeUnit;
        this.timeout = j;
    }

    public long getTimeout() {
        return this.timeout;
    }

    public TimeUnit getTimeUnit() {
        return this.timeUnit;
    }
}
