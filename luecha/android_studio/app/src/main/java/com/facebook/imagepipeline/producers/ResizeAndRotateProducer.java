package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.TriState;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.memory.PooledByteBufferFactory;
import com.facebook.imagepipeline.memory.PooledByteBufferOutputStream;
import com.facebook.imagepipeline.nativecode.JpegTranscoder;
import com.facebook.imagepipeline.producers.JobScheduler;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public class ResizeAndRotateProducer implements Producer<EncodedImage> {
    static final int DEFAULT_JPEG_QUALITY = 85;
    private static final String FRACTION_KEY = "Fraction";
    static final int MAX_JPEG_SCALE_NUMERATOR = 8;
    static final int MIN_TRANSFORM_INTERVAL_MS = 100;
    private static final String ORIGINAL_SIZE_KEY = "Original size";
    private static final String PRODUCER_NAME = "ResizeAndRotateProducer";
    private static final String REQUESTED_SIZE_KEY = "Requested size";
    private static final float ROUNDUP_FRACTION = 0.6666667f;
    private final Executor mExecutor;
    private final Producer<EncodedImage> mInputProducer;
    private final PooledByteBufferFactory mPooledByteBufferFactory;

    static int roundNumerator(float f) {
        return (int) ((f * 8.0f) + ROUNDUP_FRACTION);
    }

    private static boolean shouldResize(int i) {
        return i < 8;
    }

    public ResizeAndRotateProducer(Executor executor, PooledByteBufferFactory pooledByteBufferFactory, Producer<EncodedImage> producer) {
        this.mExecutor = (Executor) Preconditions.checkNotNull(executor);
        this.mPooledByteBufferFactory = (PooledByteBufferFactory) Preconditions.checkNotNull(pooledByteBufferFactory);
        this.mInputProducer = (Producer) Preconditions.checkNotNull(producer);
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        this.mInputProducer.produceResults(new TransformingConsumer(consumer, producerContext), producerContext);
    }

    /* loaded from: classes2.dex */
    private class TransformingConsumer extends DelegatingConsumer<EncodedImage, EncodedImage> {
        private boolean mIsCancelled = false;
        private final JobScheduler mJobScheduler;
        private final ProducerContext mProducerContext;

        public TransformingConsumer(final Consumer<EncodedImage> consumer, ProducerContext producerContext) {
            super(consumer);
            this.mProducerContext = producerContext;
            this.mJobScheduler = new JobScheduler(ResizeAndRotateProducer.this.mExecutor, new JobScheduler.JobRunnable(ResizeAndRotateProducer.this) { // from class: com.facebook.imagepipeline.producers.ResizeAndRotateProducer.TransformingConsumer.1
                @Override // com.facebook.imagepipeline.producers.JobScheduler.JobRunnable
                public void run(EncodedImage encodedImage, boolean z) {
                    TransformingConsumer.this.doTransform(encodedImage, z);
                }
            }, 100);
            this.mProducerContext.addCallbacks(new BaseProducerContextCallbacks(ResizeAndRotateProducer.this) { // from class: com.facebook.imagepipeline.producers.ResizeAndRotateProducer.TransformingConsumer.2
                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onIsIntermediateResultExpectedChanged() {
                    if (TransformingConsumer.this.mProducerContext.isIntermediateResultExpected()) {
                        TransformingConsumer.this.mJobScheduler.scheduleJob();
                    }
                }

                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onCancellationRequested() {
                    TransformingConsumer.this.mJobScheduler.clearJob();
                    TransformingConsumer.this.mIsCancelled = true;
                    consumer.onCancellation();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onNewResultImpl(@Nullable EncodedImage encodedImage, boolean z) {
            if (!this.mIsCancelled) {
                if (encodedImage != null) {
                    TriState shouldTransform = ResizeAndRotateProducer.shouldTransform(this.mProducerContext.getImageRequest(), encodedImage);
                    if (!z && shouldTransform == TriState.UNSET) {
                        return;
                    }
                    if (shouldTransform != TriState.YES) {
                        getConsumer().onNewResult(encodedImage, z);
                    } else if (this.mJobScheduler.updateJob(encodedImage, z)) {
                        if (z || this.mProducerContext.isIntermediateResultExpected()) {
                            this.mJobScheduler.scheduleJob();
                        }
                    }
                } else if (z) {
                    getConsumer().onNewResult(null, true);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.io.InputStream] */
        public void doTransform(EncodedImage encodedImage, boolean z) {
            Exception e;
            Map<String, String> map;
            this.mProducerContext.getListener().onProducerStart(this.mProducerContext.getId(), ResizeAndRotateProducer.PRODUCER_NAME);
            ImageRequest imageRequest = this.mProducerContext.getImageRequest();
            PooledByteBufferOutputStream newOutputStream = ResizeAndRotateProducer.this.mPooledByteBufferFactory.newOutputStream();
            InputStream inputStream = 0;
            try {
                try {
                    int scaleNumerator = ResizeAndRotateProducer.getScaleNumerator(imageRequest, encodedImage);
                    map = getExtraMap(encodedImage, imageRequest, scaleNumerator);
                    try {
                        inputStream = encodedImage.getInputStream();
                        JpegTranscoder.transcodeJpeg(inputStream, newOutputStream, ResizeAndRotateProducer.getRotationAngle(imageRequest, encodedImage), scaleNumerator, 85);
                        CloseableReference of = CloseableReference.of(newOutputStream.toByteBuffer());
                        try {
                            EncodedImage encodedImage2 = new EncodedImage(of);
                            encodedImage2.setImageFormat(ImageFormat.JPEG);
                            encodedImage2.parseMetaData();
                            this.mProducerContext.getListener().onProducerFinishWithSuccess(this.mProducerContext.getId(), ResizeAndRotateProducer.PRODUCER_NAME, map);
                            getConsumer().onNewResult(encodedImage2, z);
                            EncodedImage.closeSafely(encodedImage2);
                        } finally {
                            CloseableReference.closeSafely(of);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        this.mProducerContext.getListener().onProducerFinishWithFailure(this.mProducerContext.getId(), ResizeAndRotateProducer.PRODUCER_NAME, e, map);
                        getConsumer().onFailure(e);
                    }
                } finally {
                    Closeables.closeQuietly((InputStream) inputStream);
                    newOutputStream.close();
                }
            } catch (Exception e3) {
                e = e3;
                map = inputStream;
            }
        }

        private Map<String, String> getExtraMap(EncodedImage encodedImage, ImageRequest imageRequest, int i) {
            String str;
            String str2;
            if (!this.mProducerContext.getListener().requiresExtraMap(this.mProducerContext.getId())) {
                return null;
            }
            String str3 = encodedImage.getWidth() + "x" + encodedImage.getHeight();
            if (imageRequest.getResizeOptions() != null) {
                str = imageRequest.getResizeOptions().width + "x" + imageRequest.getResizeOptions().height;
            } else {
                str = "Unspecified";
            }
            if (i > 0) {
                str2 = i + "/8";
            } else {
                str2 = "";
            }
            return ImmutableMap.of(ResizeAndRotateProducer.ORIGINAL_SIZE_KEY, str3, ResizeAndRotateProducer.REQUESTED_SIZE_KEY, str, ResizeAndRotateProducer.FRACTION_KEY, str2, "queueTime", String.valueOf(this.mJobScheduler.getQueuedTime()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState shouldTransform(ImageRequest imageRequest, EncodedImage encodedImage) {
        if (encodedImage == null || encodedImage.getImageFormat() == ImageFormat.UNKNOWN) {
            return TriState.UNSET;
        }
        if (encodedImage.getImageFormat() != ImageFormat.JPEG) {
            return TriState.NO;
        }
        return TriState.valueOf(getRotationAngle(imageRequest, encodedImage) != 0 || shouldResize(getScaleNumerator(imageRequest, encodedImage)));
    }

    static float determineResizeRatio(ResizeOptions resizeOptions, int i, int i2) {
        if (resizeOptions == null) {
            return 1.0f;
        }
        float f = (float) i;
        float f2 = (float) i2;
        float max = Math.max(((float) resizeOptions.width) / f, ((float) resizeOptions.height) / f2);
        if (f * max > 2048.0f) {
            max = 2048.0f / f;
        }
        return f2 * max > 2048.0f ? 2048.0f / f2 : max;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getScaleNumerator(ImageRequest imageRequest, EncodedImage encodedImage) {
        int i;
        int i2;
        ResizeOptions resizeOptions = imageRequest.getResizeOptions();
        if (resizeOptions == null) {
            return 8;
        }
        int rotationAngle = getRotationAngle(imageRequest, encodedImage);
        boolean z = rotationAngle == 90 || rotationAngle == 270;
        if (z) {
            i = encodedImage.getHeight();
        } else {
            i = encodedImage.getWidth();
        }
        if (z) {
            i2 = encodedImage.getWidth();
        } else {
            i2 = encodedImage.getHeight();
        }
        int roundNumerator = roundNumerator(determineResizeRatio(resizeOptions, i, i2));
        if (roundNumerator > 8) {
            return 8;
        }
        if (roundNumerator < 1) {
            return 1;
        }
        return roundNumerator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getRotationAngle(ImageRequest imageRequest, EncodedImage encodedImage) {
        boolean z = false;
        if (!imageRequest.getAutoRotateEnabled()) {
            return 0;
        }
        int rotationAngle = encodedImage.getRotationAngle();
        if (rotationAngle == 0 || rotationAngle == 90 || rotationAngle == 180 || rotationAngle == 270) {
            z = true;
        }
        Preconditions.checkArgument(z);
        return rotationAngle;
    }
}
