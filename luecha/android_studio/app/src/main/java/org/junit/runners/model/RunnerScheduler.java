package org.junit.runners.model;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface RunnerScheduler {
    void finished();

    void schedule(Runnable runnable);
}
