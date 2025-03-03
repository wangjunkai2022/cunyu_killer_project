package com.facebook.datasource;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* loaded from: classes4.dex */
public interface DataSource<T> {
    boolean close();

    @Nullable
    Throwable getFailureCause();

    float getProgress();

    @Nullable
    T getResult();

    boolean hasFailed();

    boolean hasResult();

    boolean isClosed();

    boolean isFinished();

    void subscribe(DataSubscriber<T> dataSubscriber, Executor executor);
}
