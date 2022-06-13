package com.facebook.imagepipeline.producers;

import bolts.Continuation;
import bolts.Task;
import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.cache.BufferedDiskCache;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public class DiskCacheProducer implements Producer<EncodedImage> {
    static final String PRODUCER_NAME = "DiskCacheProducer";
    static final String VALUE_FOUND = "cached_value_found";
    private final CacheKeyFactory mCacheKeyFactory;
    private final boolean mChooseCacheByImageSize;
    private final BufferedDiskCache mDefaultBufferedDiskCache;
    private final int mForceSmallCacheThresholdBytes;
    private final Producer<EncodedImage> mInputProducer;
    private final BufferedDiskCache mSmallImageBufferedDiskCache;

    public DiskCacheProducer(BufferedDiskCache bufferedDiskCache, BufferedDiskCache bufferedDiskCache2, CacheKeyFactory cacheKeyFactory, Producer<EncodedImage> producer, int i) {
        this.mDefaultBufferedDiskCache = bufferedDiskCache;
        this.mSmallImageBufferedDiskCache = bufferedDiskCache2;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mInputProducer = producer;
        this.mForceSmallCacheThresholdBytes = i;
        this.mChooseCacheByImageSize = i > 0;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        Task<EncodedImage> task;
        final BufferedDiskCache bufferedDiskCache;
        BufferedDiskCache bufferedDiskCache2;
        ImageRequest imageRequest = producerContext.getImageRequest();
        if (!imageRequest.isDiskCacheEnabled()) {
            maybeStartInputProducer(consumer, consumer, producerContext);
            return;
        }
        producerContext.getListener().onProducerStart(producerContext.getId(), PRODUCER_NAME);
        final CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(imageRequest, producerContext.getCallerContext());
        BufferedDiskCache bufferedDiskCache3 = imageRequest.getCacheChoice() == ImageRequest.CacheChoice.SMALL ? this.mSmallImageBufferedDiskCache : this.mDefaultBufferedDiskCache;
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        if (this.mChooseCacheByImageSize) {
            boolean containsSync = this.mSmallImageBufferedDiskCache.containsSync(encodedCacheKey);
            boolean containsSync2 = this.mDefaultBufferedDiskCache.containsSync(encodedCacheKey);
            if (containsSync || !containsSync2) {
                bufferedDiskCache2 = this.mSmallImageBufferedDiskCache;
                bufferedDiskCache = this.mDefaultBufferedDiskCache;
            } else {
                bufferedDiskCache2 = this.mDefaultBufferedDiskCache;
                bufferedDiskCache = this.mSmallImageBufferedDiskCache;
            }
            task = bufferedDiskCache2.get(encodedCacheKey, atomicBoolean).continueWithTask(new Continuation<EncodedImage, Task<EncodedImage>>() { // from class: com.facebook.imagepipeline.producers.DiskCacheProducer.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // bolts.Continuation
                public Task<EncodedImage> then(Task<EncodedImage> task2) throws Exception {
                    if (!DiskCacheProducer.isTaskCancelled(task2)) {
                        return (task2.isFaulted() || task2.getResult() == null) ? bufferedDiskCache.get(encodedCacheKey, atomicBoolean) : task2;
                    }
                    return task2;
                }
            });
        } else {
            task = bufferedDiskCache3.get(encodedCacheKey, atomicBoolean);
        }
        task.continueWith(onFinishDiskReads(consumer, bufferedDiskCache3, encodedCacheKey, producerContext));
        subscribeTaskForRequestCancellation(atomicBoolean, producerContext);
    }

    private Continuation<EncodedImage, Void> onFinishDiskReads(final Consumer<EncodedImage> consumer, final BufferedDiskCache bufferedDiskCache, final CacheKey cacheKey, final ProducerContext producerContext) {
        final String id = producerContext.getId();
        final ProducerListener listener = producerContext.getListener();
        return new Continuation<EncodedImage, Void>() { // from class: com.facebook.imagepipeline.producers.DiskCacheProducer.2
            @Override // bolts.Continuation
            public Void then(Task<EncodedImage> task) throws Exception {
                if (DiskCacheProducer.isTaskCancelled(task)) {
                    listener.onProducerFinishWithCancellation(id, DiskCacheProducer.PRODUCER_NAME, null);
                    consumer.onCancellation();
                } else if (task.isFaulted()) {
                    listener.onProducerFinishWithFailure(id, DiskCacheProducer.PRODUCER_NAME, task.getError(), null);
                    DiskCacheProducer diskCacheProducer = DiskCacheProducer.this;
                    Consumer consumer2 = consumer;
                    diskCacheProducer.maybeStartInputProducer(consumer2, new DiskCacheConsumer(consumer2, bufferedDiskCache, cacheKey), producerContext);
                } else {
                    EncodedImage result = task.getResult();
                    if (result != null) {
                        ProducerListener producerListener = listener;
                        String str = id;
                        producerListener.onProducerFinishWithSuccess(str, DiskCacheProducer.PRODUCER_NAME, DiskCacheProducer.getExtraMap(producerListener, str, true));
                        consumer.onProgressUpdate(1.0f);
                        consumer.onNewResult(result, true);
                        result.close();
                    } else {
                        ProducerListener producerListener2 = listener;
                        String str2 = id;
                        producerListener2.onProducerFinishWithSuccess(str2, DiskCacheProducer.PRODUCER_NAME, DiskCacheProducer.getExtraMap(producerListener2, str2, false));
                        DiskCacheProducer diskCacheProducer2 = DiskCacheProducer.this;
                        Consumer consumer3 = consumer;
                        diskCacheProducer2.maybeStartInputProducer(consumer3, new DiskCacheConsumer(consumer3, bufferedDiskCache, cacheKey), producerContext);
                    }
                }
                return null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isTaskCancelled(Task<?> task) {
        return task.isCancelled() || (task.isFaulted() && (task.getError() instanceof CancellationException));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeStartInputProducer(Consumer<EncodedImage> consumer, Consumer<EncodedImage> consumer2, ProducerContext producerContext) {
        if (producerContext.getLowestPermittedRequestLevel().getValue() >= ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            consumer.onNewResult(null, true);
        } else {
            this.mInputProducer.produceResults(consumer2, producerContext);
        }
    }

    static Map<String, String> getExtraMap(ProducerListener producerListener, String str, boolean z) {
        if (!producerListener.requiresExtraMap(str)) {
            return null;
        }
        return ImmutableMap.of(VALUE_FOUND, String.valueOf(z));
    }

    private void subscribeTaskForRequestCancellation(final AtomicBoolean atomicBoolean, ProducerContext producerContext) {
        producerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.DiskCacheProducer.3
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                atomicBoolean.set(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class DiskCacheConsumer extends DelegatingConsumer<EncodedImage, EncodedImage> {
        private final BufferedDiskCache mCache;
        private final CacheKey mCacheKey;

        private DiskCacheConsumer(Consumer<EncodedImage> consumer, BufferedDiskCache bufferedDiskCache, CacheKey cacheKey) {
            super(consumer);
            this.mCache = bufferedDiskCache;
            this.mCacheKey = cacheKey;
        }

        public void onNewResultImpl(EncodedImage encodedImage, boolean z) {
            if (encodedImage != null && z) {
                if (DiskCacheProducer.this.mChooseCacheByImageSize) {
                    int size = encodedImage.getSize();
                    if (size <= 0 || size >= DiskCacheProducer.this.mForceSmallCacheThresholdBytes) {
                        DiskCacheProducer.this.mDefaultBufferedDiskCache.put(this.mCacheKey, encodedImage);
                    } else {
                        DiskCacheProducer.this.mSmallImageBufferedDiskCache.put(this.mCacheKey, encodedImage);
                    }
                } else {
                    this.mCache.put(this.mCacheKey, encodedImage);
                }
            }
            getConsumer().onNewResult(encodedImage, z);
        }
    }
}
