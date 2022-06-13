package com.google.android.exoplayer2.util;

import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public abstract class RunnableFutureTask<R, E extends Exception> implements RunnableFuture<R> {
    private boolean canceled;
    private Exception exception;
    private R result;
    private Thread workThread;
    private final ConditionVariable started = new ConditionVariable();
    private final ConditionVariable finished = new ConditionVariable();
    private final Object cancelLock = new Object();

    protected void cancelWork() {
    }

    protected abstract R doWork() throws Exception;

    public final void blockUntilStarted() {
        this.started.blockUninterruptible();
    }

    public final void blockUntilFinished() {
        this.finished.blockUninterruptible();
    }

    @Override // java.util.concurrent.Future
    public final R get() throws ExecutionException, InterruptedException {
        this.finished.block();
        return getResult();
    }

    @Override // java.util.concurrent.Future
    public final R get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.finished.block(TimeUnit.MILLISECONDS.convert(j, timeUnit))) {
            return getResult();
        }
        throw new TimeoutException();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this.cancelLock) {
            if (!this.canceled && !this.finished.isOpen()) {
                this.canceled = true;
                cancelWork();
                Thread thread = this.workThread;
                if (thread == null) {
                    this.started.open();
                    this.finished.open();
                } else if (z) {
                    thread.interrupt();
                }
                return true;
            }
            return false;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.finished.isOpen();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.canceled;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        synchronized (this.cancelLock) {
            try {
                if (!this.canceled) {
                    this.workThread = Thread.currentThread();
                    this.started.open();
                    try {
                        try {
                            this.result = doWork();
                            synchronized (this.cancelLock) {
                                try {
                                    this.finished.open();
                                    this.workThread = null;
                                    Thread.interrupted();
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        } catch (Exception e) {
                            this.exception = e;
                            synchronized (this.cancelLock) {
                                try {
                                    this.finished.open();
                                    this.workThread = null;
                                    Thread.interrupted();
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        synchronized (this.cancelLock) {
                            try {
                                this.finished.open();
                                this.workThread = null;
                                Thread.interrupted();
                                throw th3;
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    private R getResult() throws ExecutionException {
        if (!this.canceled) {
            Exception exc = this.exception;
            if (exc == null) {
                return this.result;
            }
            throw new ExecutionException(exc);
        }
        throw new CancellationException();
    }
}
