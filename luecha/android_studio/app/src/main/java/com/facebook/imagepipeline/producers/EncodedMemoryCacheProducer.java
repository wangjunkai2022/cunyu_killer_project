package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;

/* loaded from: classes2.dex */
public class EncodedMemoryCacheProducer implements Producer<EncodedImage> {
    static final String PRODUCER_NAME = "EncodedMemoryCacheProducer";
    static final String VALUE_FOUND = "cached_value_found";
    private final CacheKeyFactory mCacheKeyFactory;
    private final Producer<EncodedImage> mInputProducer;
    private final MemoryCache<CacheKey, PooledByteBuffer> mMemoryCache;

    public EncodedMemoryCacheProducer(MemoryCache<CacheKey, PooledByteBuffer> memoryCache, CacheKeyFactory cacheKeyFactory, Producer<EncodedImage> producer) {
        this.mMemoryCache = memoryCache;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        String id = producerContext.getId();
        ProducerListener listener = producerContext.getListener();
        listener.onProducerStart(id, PRODUCER_NAME);
        final CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(producerContext.getImageRequest(), producerContext.getCallerContext());
        CloseableReference<PooledByteBuffer> closeableReference = this.mMemoryCache.get(encodedCacheKey);
        Map<String, String> map = null;
        try {
            if (closeableReference != null) {
                EncodedImage encodedImage = new EncodedImage(closeableReference);
                if (listener.requiresExtraMap(id)) {
                    map = ImmutableMap.of(VALUE_FOUND, "true");
                }
                listener.onProducerFinishWithSuccess(id, PRODUCER_NAME, map);
                consumer.onProgressUpdate(1.0f);
                consumer.onNewResult(encodedImage, true);
                EncodedImage.closeSafely(encodedImage);
            } else if (producerContext.getLowestPermittedRequestLevel().getValue() >= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()) {
                listener.onProducerFinishWithSuccess(id, PRODUCER_NAME, listener.requiresExtraMap(id) ? ImmutableMap.of(VALUE_FOUND, "false") : null);
                consumer.onNewResult(null, true);
            } else {
                AnonymousClass1 r5 = new DelegatingConsumer<EncodedImage, EncodedImage>(consumer) { // from class: com.facebook.imagepipeline.producers.EncodedMemoryCacheProducer.1
                    public void onNewResultImpl(EncodedImage encodedImage2, boolean z) {
                        if (!z || encodedImage2 == null) {
                            getConsumer().onNewResult(encodedImage2, z);
                            return;
                        }
                        CloseableReference byteBufferRef = encodedImage2.getByteBufferRef();
                        if (byteBufferRef != null) {
                            try {
                                byteBufferRef = EncodedMemoryCacheProducer.this.mMemoryCache.cache(encodedCacheKey, byteBufferRef);
                                if (byteBufferRef != null) {
                                    try {
                                        EncodedImage encodedImage3 = new EncodedImage(byteBufferRef);
                                        encodedImage3.copyMetaDataFrom(encodedImage2);
                                        try {
                                            getConsumer().onProgressUpdate(1.0f);
                                            getConsumer().onNewResult(encodedImage3, true);
                                            return;
                                        } finally {
                                            EncodedImage.closeSafely(encodedImage3);
                                        }
                                    } finally {
                                    }
                                }
                            } finally {
                            }
                        }
                        getConsumer().onNewResult(encodedImage2, true);
                    }
                };
                if (listener.requiresExtraMap(id)) {
                    map = ImmutableMap.of(VALUE_FOUND, "false");
                }
                listener.onProducerFinishWithSuccess(id, PRODUCER_NAME, map);
                this.mInputProducer.produceResults(r5, producerContext);
            }
        } finally {
            CloseableReference.closeSafely(closeableReference);
        }
    }
}
