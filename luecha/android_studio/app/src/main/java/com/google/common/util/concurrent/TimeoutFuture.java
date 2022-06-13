package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class TimeoutFuture<V> extends FluentFuture.TrustedFuture<V> {
    @NullableDecl
    private ListenableFuture<V> delegateRef;
    @NullableDecl
    private ScheduledFuture<?> timer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> ListenableFuture<V> create(ListenableFuture<V> listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TimeoutFuture timeoutFuture = new TimeoutFuture(listenableFuture);
        Fire fire = new Fire(timeoutFuture);
        timeoutFuture.timer = scheduledExecutorService.schedule(fire, j, timeUnit);
        listenableFuture.addListener(fire, MoreExecutors.directExecutor());
        return timeoutFuture;
    }

    private TimeoutFuture(ListenableFuture<V> listenableFuture) {
        this.delegateRef = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class Fire<V> implements Runnable {
        @NullableDecl
        TimeoutFuture<V> timeoutFutureRef;

        Fire(TimeoutFuture<V> timeoutFuture) {
            this.timeoutFutureRef = timeoutFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<? extends V> listenableFuture;
            TimeoutFuture<V> timeoutFuture = this.timeoutFutureRef;
            if (timeoutFuture != null && (listenableFuture = ((TimeoutFuture) timeoutFuture).delegateRef) != null) {
                this.timeoutFutureRef = null;
                if (listenableFuture.isDone()) {
                    timeoutFuture.setFuture(listenableFuture);
                    return;
                }
                try {
                    ScheduledFuture scheduledFuture = ((TimeoutFuture) timeoutFuture).timer;
                    ((TimeoutFuture) timeoutFuture).timer = null;
                    String str = "Timed out";
                    if (scheduledFuture != null) {
                        long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (abs > 10) {
                            str = str + " (timeout delayed by " + abs + " ms after scheduled time)";
                        }
                    }
                    timeoutFuture.setException(new TimeoutFutureException(str + ": " + listenableFuture));
                } finally {
                    listenableFuture.cancel(true);
                }
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static final class TimeoutFutureException extends TimeoutException {
        private TimeoutFutureException(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    protected String pendingToString() {
        ListenableFuture<V> listenableFuture = this.delegateRef;
        ScheduledFuture<?> scheduledFuture = this.timer;
        if (listenableFuture == null) {
            return null;
        }
        String str = "inputFuture=[" + listenableFuture + "]";
        if (scheduledFuture == null) {
            return str;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return str;
        }
        return str + ", remaining delay=[" + delay + " ms]";
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    protected void afterDone() {
        maybePropagateCancellationTo(this.delegateRef);
        ScheduledFuture<?> scheduledFuture = this.timer;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.delegateRef = null;
        this.timer = null;
    }
}
