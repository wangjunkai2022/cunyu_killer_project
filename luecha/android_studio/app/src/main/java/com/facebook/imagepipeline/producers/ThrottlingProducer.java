package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.common.internal.Preconditions;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class ThrottlingProducer<T> implements Producer<T> {
    static final String PRODUCER_NAME = "ThrottlingProducer";
    private final Executor mExecutor;
    private final Producer<T> mInputProducer;
    private final int mMaxSimultaneousRequests;
    private final ConcurrentLinkedQueue<Pair<Consumer<T>, ProducerContext>> mPendingRequests = new ConcurrentLinkedQueue<>();
    private int mNumCurrentRequests = 0;

    static /* synthetic */ int access$210(ThrottlingProducer throttlingProducer) {
        int i = throttlingProducer.mNumCurrentRequests;
        throttlingProducer.mNumCurrentRequests = i - 1;
        return i;
    }

    public ThrottlingProducer(int i, Executor executor, Producer<T> producer) {
        this.mMaxSimultaneousRequests = i;
        this.mExecutor = (Executor) Preconditions.checkNotNull(executor);
        this.mInputProducer = (Producer) Preconditions.checkNotNull(producer);
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<T> consumer, ProducerContext producerContext) {
        boolean z;
        producerContext.getListener().onProducerStart(producerContext.getId(), PRODUCER_NAME);
        synchronized (this) {
            z = true;
            if (this.mNumCurrentRequests >= this.mMaxSimultaneousRequests) {
                this.mPendingRequests.add(Pair.create(consumer, producerContext));
            } else {
                this.mNumCurrentRequests++;
                z = false;
            }
        }
        if (!z) {
            produceResultsInternal(consumer, producerContext);
        }
    }

    void produceResultsInternal(Consumer<T> consumer, ProducerContext producerContext) {
        producerContext.getListener().onProducerFinishWithSuccess(producerContext.getId(), PRODUCER_NAME, null);
        this.mInputProducer.produceResults(new ThrottlerConsumer(consumer), producerContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class ThrottlerConsumer extends DelegatingConsumer<T, T> {
        private ThrottlerConsumer(Consumer<T> consumer) {
            super(consumer);
        }

        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        protected void onNewResultImpl(T t, boolean z) {
            getConsumer().onNewResult(t, z);
            if (z) {
                onRequestFinished();
            }
        }

        @Override // com.facebook.imagepipeline.producers.DelegatingConsumer, com.facebook.imagepipeline.producers.BaseConsumer
        protected void onFailureImpl(Throwable th) {
            getConsumer().onFailure(th);
            onRequestFinished();
        }

        @Override // com.facebook.imagepipeline.producers.DelegatingConsumer, com.facebook.imagepipeline.producers.BaseConsumer
        protected void onCancellationImpl() {
            getConsumer().onCancellation();
            onRequestFinished();
        }

        private void onRequestFinished() {
            final Pair pair;
            synchronized (ThrottlingProducer.this) {
                pair = (Pair) ThrottlingProducer.this.mPendingRequests.poll();
                if (pair == null) {
                    ThrottlingProducer.access$210(ThrottlingProducer.this);
                }
            }
            if (pair != null) {
                ThrottlingProducer.this.mExecutor.execute(new Runnable() { // from class: com.facebook.imagepipeline.producers.ThrottlingProducer.ThrottlerConsumer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ThrottlingProducer.this.produceResultsInternal((Consumer) pair.first, (ProducerContext) pair.second);
                    }
                });
            }
        }
    }
}
