package com.facebook.imagepipeline.producers;

import android.os.Build;
import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.Supplier;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.memory.PooledByteBufferFactory;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public abstract class LocalFetchProducer implements Producer<EncodedImage> {
    private final boolean mDecodeFileDescriptorEnabledForKitKat;
    private final Executor mExecutor;
    private final PooledByteBufferFactory mPooledByteBufferFactory;

    protected abstract EncodedImage getEncodedImage(ImageRequest imageRequest) throws IOException;

    protected abstract String getProducerName();

    public LocalFetchProducer(Executor executor, PooledByteBufferFactory pooledByteBufferFactory, boolean z) {
        this.mExecutor = executor;
        this.mPooledByteBufferFactory = pooledByteBufferFactory;
        this.mDecodeFileDescriptorEnabledForKitKat = z && Build.VERSION.SDK_INT == 19;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        ProducerListener listener = producerContext.getListener();
        String id = producerContext.getId();
        final ImageRequest imageRequest = producerContext.getImageRequest();
        final AnonymousClass1 r7 = new StatefulProducerRunnable<EncodedImage>(consumer, listener, getProducerName(), id) { // from class: com.facebook.imagepipeline.producers.LocalFetchProducer.1
            @Override // com.facebook.common.executors.StatefulRunnable
            public EncodedImage getResult() throws Exception {
                EncodedImage encodedImage = LocalFetchProducer.this.getEncodedImage(imageRequest);
                if (encodedImage == null) {
                    return null;
                }
                encodedImage.parseMetaData();
                return encodedImage;
            }

            public void disposeResult(EncodedImage encodedImage) {
                EncodedImage.closeSafely(encodedImage);
            }
        };
        producerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.LocalFetchProducer.2
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                r7.cancel();
            }
        });
        this.mExecutor.execute(r7);
    }

    protected EncodedImage getByteBufferBackedEncodedImage(InputStream inputStream, int i) throws IOException {
        CloseableReference closeableReference;
        CloseableReference closeableReference2 = null;
        try {
            if (i <= 0) {
                closeableReference = CloseableReference.of(this.mPooledByteBufferFactory.newByteBuffer(inputStream));
            } else {
                closeableReference = CloseableReference.of(this.mPooledByteBufferFactory.newByteBuffer(inputStream, i));
            }
            closeableReference2 = closeableReference;
            return new EncodedImage(closeableReference2);
        } finally {
            Closeables.closeQuietly(inputStream);
            CloseableReference.closeSafely(closeableReference2);
        }
    }

    protected EncodedImage getEncodedImage(InputStream inputStream, int i) throws IOException {
        Runtime runtime = Runtime.getRuntime();
        long maxMemory = runtime.maxMemory();
        long min = Math.min(maxMemory - (runtime.totalMemory() - runtime.freeMemory()), 8388608L);
        if (!this.mDecodeFileDescriptorEnabledForKitKat || !(inputStream instanceof FileInputStream) || maxMemory < min * 64) {
            return getByteBufferBackedEncodedImage(inputStream, i);
        }
        return getInputStreamBackedEncodedImage(new File(inputStream.toString()), i);
    }

    protected EncodedImage getInputStreamBackedEncodedImage(final File file, int i) throws IOException {
        return new EncodedImage(new Supplier<FileInputStream>() { // from class: com.facebook.imagepipeline.producers.LocalFetchProducer.3
            @Override // com.facebook.common.internal.Supplier
            public FileInputStream get() {
                try {
                    return new FileInputStream(file);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }, i);
    }
}
