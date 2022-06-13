package org.junit.rules;

import java.util.concurrent.TimeUnit;
import org.junit.AssumptionViolatedException;
import org.junit.runner.Description;
import org.junit.runners.model.Statement;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class Stopwatch implements TestRule {
    private final Clock clock;
    private volatile long endNanos;
    private volatile long startNanos;

    protected void failed(long j, Throwable th, Description description) {
    }

    protected void finished(long j, Description description) {
    }

    protected void skipped(long j, AssumptionViolatedException assumptionViolatedException, Description description) {
    }

    protected void succeeded(long j, Description description) {
    }

    public Stopwatch() {
        this(new Clock());
    }

    Stopwatch(Clock clock) {
        this.clock = clock;
    }

    public long runtime(TimeUnit timeUnit) {
        return timeUnit.convert(getNanos(), TimeUnit.NANOSECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getNanos() {
        if (this.startNanos != 0) {
            long j = this.endNanos;
            if (j == 0) {
                j = this.clock.nanoTime();
            }
            return j - this.startNanos;
        }
        throw new IllegalStateException("Test has not started");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void starting() {
        this.startNanos = this.clock.nanoTime();
        this.endNanos = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopping() {
        this.endNanos = this.clock.nanoTime();
    }

    @Override // org.junit.rules.TestRule
    public final Statement apply(Statement statement, Description description) {
        return new InternalWatcher().apply(statement, description);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private class InternalWatcher extends TestWatcher {
        private InternalWatcher() {
        }

        @Override // org.junit.rules.TestWatcher
        protected void starting(Description description) {
            Stopwatch.this.starting();
        }

        @Override // org.junit.rules.TestWatcher
        protected void finished(Description description) {
            Stopwatch stopwatch = Stopwatch.this;
            stopwatch.finished(stopwatch.getNanos(), description);
        }

        @Override // org.junit.rules.TestWatcher
        protected void succeeded(Description description) {
            Stopwatch.this.stopping();
            Stopwatch stopwatch = Stopwatch.this;
            stopwatch.succeeded(stopwatch.getNanos(), description);
        }

        @Override // org.junit.rules.TestWatcher
        protected void failed(Throwable th, Description description) {
            Stopwatch.this.stopping();
            Stopwatch stopwatch = Stopwatch.this;
            stopwatch.failed(stopwatch.getNanos(), th, description);
        }

        @Override // org.junit.rules.TestWatcher
        protected void skipped(AssumptionViolatedException assumptionViolatedException, Description description) {
            Stopwatch.this.stopping();
            Stopwatch stopwatch = Stopwatch.this;
            stopwatch.skipped(stopwatch.getNanos(), assumptionViolatedException, description);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class Clock {
        Clock() {
        }

        public long nanoTime() {
            return System.nanoTime();
        }
    }
}
