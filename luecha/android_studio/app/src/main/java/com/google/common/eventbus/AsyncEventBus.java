package com.google.common.eventbus;

import com.google.common.eventbus.EventBus;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class AsyncEventBus extends EventBus {
    public AsyncEventBus(String str, Executor executor) {
        super(str, executor, Dispatcher.legacyAsync(), EventBus.LoggingHandler.INSTANCE);
    }

    public AsyncEventBus(Executor executor, SubscriberExceptionHandler subscriberExceptionHandler) {
        super("default", executor, Dispatcher.legacyAsync(), subscriberExceptionHandler);
    }

    public AsyncEventBus(Executor executor) {
        super("default", executor, Dispatcher.legacyAsync(), EventBus.LoggingHandler.INSTANCE);
    }
}
