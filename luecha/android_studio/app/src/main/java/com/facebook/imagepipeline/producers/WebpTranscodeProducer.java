package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.Preconditions;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.TriState;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imageformat.ImageFormatChecker;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.memory.PooledByteBufferFactory;
import com.facebook.imagepipeline.memory.PooledByteBufferOutputStream;
import com.facebook.imagepipeline.nativecode.WebpTranscoder;
import com.facebook.imagepipeline.nativecode.WebpTranscoderFactory;
import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public class WebpTranscodeProducer implements Producer<EncodedImage> {
    private static final int DEFAULT_JPEG_QUALITY = 80;
    private static final String PRODUCER_NAME = "WebpTranscodeProducer";
    private final Executor mExecutor;
    private final Producer<EncodedImage> mInputProducer;
    private final PooledByteBufferFactory mPooledByteBufferFactory;

    public WebpTranscodeProducer(Executor executor, PooledByteBufferFactory pooledByteBufferFactory, Producer<EncodedImage> producer) {
        this.mExecutor = (Executor) Preconditions.checkNotNull(executor);
        this.mPooledByteBufferFactory = (PooledByteBufferFactory) Preconditions.checkNotNull(pooledByteBufferFactory);
        this.mInputProducer = (Producer) Preconditions.checkNotNull(producer);
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        this.mInputProducer.produceResults(new WebpTranscodeConsumer(consumer, producerContext), producerContext);
    }

    /* loaded from: classes2.dex */
    private class WebpTranscodeConsumer extends DelegatingConsumer<EncodedImage, EncodedImage> {
        private final ProducerContext mContext;
        private TriState mShouldTranscodeWhenFinished = TriState.UNSET;

        public WebpTranscodeConsumer(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
            super(consumer);
            this.mContext = producerContext;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onNewResultImpl(@Nullable EncodedImage encodedImage, boolean z) {
            if (this.mShouldTranscodeWhenFinished == TriState.UNSET && encodedImage != null) {
                this.mShouldTranscodeWhenFinished = WebpTranscodeProducer.shouldTranscode(encodedImage);
            }
            if (this.mShouldTranscodeWhenFinished == TriState.NO) {
                getConsumer().onNewResult(encodedImage, z);
            } else if (!z) {
            } else {
                if (this.mShouldTranscodeWhenFinished != TriState.YES || encodedImage == null) {
                    getConsumer().onNewResult(encodedImage, z);
                } else {
                    WebpTranscodeProducer.this.transcodeLastResult(encodedImage, getConsumer(), this.mContext);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void transcodeLastResult(EncodedImage encodedImage, Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        Preconditions.checkNotNull(encodedImage);
        final EncodedImage cloneOrNull = EncodedImage.cloneOrNull(encodedImage);
        this.mExecutor.execute(new StatefulProducerRunnable<EncodedImage>(consumer, producerContext.getListener(), PRODUCER_NAME, producerContext.getId()) { // from class: com.facebook.imagepipeline.producers.WebpTranscodeProducer.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.common.executors.StatefulRunnable
            public EncodedImage getResult() throws Exception {
                PooledByteBufferOutputStream newOutputStream = WebpTranscodeProducer.this.mPooledByteBufferFactory.newOutputStream();
                try {
                    WebpTranscodeProducer.doTranscode(cloneOrNull, newOutputStream);
                    CloseableReference of = CloseableReference.of(newOutputStream.toByteBuffer());
                    EncodedImage encodedImage2 = new EncodedImage(of);
                    encodedImage2.copyMetaDataFrom(cloneOrNull);
                    CloseableReference.closeSafely(of);
                    return encodedImage2;
                } finally {
                    newOutputStream.close();
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            public void disposeResult(EncodedImage encodedImage2) {
                EncodedImage.closeSafely(encodedImage2);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            public void onSuccess(EncodedImage encodedImage2) {
                EncodedImage.closeSafely(cloneOrNull);
                super.onSuccess((AnonymousClass1) encodedImage2);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.StatefulProducerRunnable, com.facebook.common.executors.StatefulRunnable
            public void onFailure(Exception exc) {
                EncodedImage.closeSafely(cloneOrNull);
                super.onFailure(exc);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.StatefulProducerRunnable, com.facebook.common.executors.StatefulRunnable
            public void onCancellation() {
                EncodedImage.closeSafely(cloneOrNull);
                super.onCancellation();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState shouldTranscode(EncodedImage encodedImage) {
        Preconditions.checkNotNull(encodedImage);
        ImageFormat imageFormat_WrapIOException = ImageFormatChecker.getImageFormat_WrapIOException(encodedImage.getInputStream());
        int i = AnonymousClass2.$SwitchMap$com$facebook$imageformat$ImageFormat[imageFormat_WrapIOException.ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            WebpTranscoder webpTranscoder = WebpTranscoderFactory.getWebpTranscoder();
            if (webpTranscoder == null) {
                return TriState.NO;
            }
            return TriState.valueOf(!webpTranscoder.isWebpNativelySupported(imageFormat_WrapIOException));
        } else if (i != 5) {
            return TriState.NO;
        } else {
            return TriState.UNSET;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.imagepipeline.producers.WebpTranscodeProducer$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$imageformat$ImageFormat = new int[ImageFormat.values().length];

        static {
            try {
                $SwitchMap$com$facebook$imageformat$ImageFormat[ImageFormat.WEBP_SIMPLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$facebook$imageformat$ImageFormat[ImageFormat.WEBP_LOSSLESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$facebook$imageformat$ImageFormat[ImageFormat.WEBP_EXTENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$facebook$imageformat$ImageFormat[ImageFormat.WEBP_EXTENDED_WITH_ALPHA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$facebook$imageformat$ImageFormat[ImageFormat.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doTranscode(EncodedImage encodedImage, PooledByteBufferOutputStream pooledByteBufferOutputStream) throws Exception {
        InputStream inputStream = encodedImage.getInputStream();
        int i = AnonymousClass2.$SwitchMap$com$facebook$imageformat$ImageFormat[ImageFormatChecker.getImageFormat_WrapIOException(inputStream).ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        throw new IllegalArgumentException("Wrong image format");
                    }
                }
            }
            WebpTranscoderFactory.getWebpTranscoder().transcodeWebpToPng(inputStream, pooledByteBufferOutputStream);
            return;
        }
        WebpTranscoderFactory.getWebpTranscoder().transcodeWebpToJpeg(inputStream, pooledByteBufferOutputStream, 80);
    }
}
