package com.facebook.imagepipeline.animated.factory;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import com.facebook.common.executors.DefaultSerialExecutorService;
import com.facebook.common.executors.SerialExecutorService;
import com.facebook.common.executors.UiThreadImmediateExecutorService;
import com.facebook.common.time.MonotonicClock;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableOptions;
import com.facebook.imagepipeline.animated.base.AnimatedImageResult;
import com.facebook.imagepipeline.animated.impl.AnimatedDrawableBackendImpl;
import com.facebook.imagepipeline.animated.impl.AnimatedDrawableBackendProvider;
import com.facebook.imagepipeline.animated.impl.AnimatedDrawableCachingBackendImpl;
import com.facebook.imagepipeline.animated.impl.AnimatedDrawableCachingBackendImplProvider;
import com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil;
import com.facebook.imagepipeline.bitmaps.PlatformBitmapFactory;
import com.facebook.imagepipeline.core.ExecutorSupplier;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public class AnimatedFactoryImpl implements AnimatedFactory {
    private AnimatedDrawableBackendProvider mAnimatedDrawableBackendProvider;
    private AnimatedDrawableFactory mAnimatedDrawableFactory;
    private AnimatedDrawableUtil mAnimatedDrawableUtil;
    private AnimatedImageFactory mAnimatedImageFactory;
    private ExecutorSupplier mExecutorSupplier;
    private PlatformBitmapFactory mPlatformBitmapFactory;

    public AnimatedFactoryImpl(PlatformBitmapFactory platformBitmapFactory, ExecutorSupplier executorSupplier) {
        this.mPlatformBitmapFactory = platformBitmapFactory;
        this.mExecutorSupplier = executorSupplier;
    }

    private AnimatedDrawableFactory buildAnimatedDrawableFactory(final SerialExecutorService serialExecutorService, final ActivityManager activityManager, final AnimatedDrawableUtil animatedDrawableUtil, AnimatedDrawableBackendProvider animatedDrawableBackendProvider, ScheduledExecutorService scheduledExecutorService, final MonotonicClock monotonicClock, Resources resources) {
        return createAnimatedDrawableFactory(animatedDrawableBackendProvider, new AnimatedDrawableCachingBackendImplProvider() { // from class: com.facebook.imagepipeline.animated.factory.AnimatedFactoryImpl.1
            @Override // com.facebook.imagepipeline.animated.impl.AnimatedDrawableCachingBackendImplProvider
            public AnimatedDrawableCachingBackendImpl get(AnimatedDrawableBackend animatedDrawableBackend, AnimatedDrawableOptions animatedDrawableOptions) {
                return new AnimatedDrawableCachingBackendImpl(serialExecutorService, activityManager, animatedDrawableUtil, monotonicClock, animatedDrawableBackend, animatedDrawableOptions);
            }
        }, animatedDrawableUtil, scheduledExecutorService, resources);
    }

    private AnimatedDrawableBackendProvider getAnimatedDrawableBackendProvider() {
        if (this.mAnimatedDrawableBackendProvider == null) {
            this.mAnimatedDrawableBackendProvider = new AnimatedDrawableBackendProvider() { // from class: com.facebook.imagepipeline.animated.factory.AnimatedFactoryImpl.2
                @Override // com.facebook.imagepipeline.animated.impl.AnimatedDrawableBackendProvider
                public AnimatedDrawableBackend get(AnimatedImageResult animatedImageResult, Rect rect) {
                    return new AnimatedDrawableBackendImpl(AnimatedFactoryImpl.this.getAnimatedDrawableUtil(), animatedImageResult, rect);
                }
            };
        }
        return this.mAnimatedDrawableBackendProvider;
    }

    @Override // com.facebook.imagepipeline.animated.factory.AnimatedFactory
    public AnimatedDrawableFactory getAnimatedDrawableFactory(Context context) {
        if (this.mAnimatedDrawableFactory == null) {
            this.mAnimatedDrawableFactory = buildAnimatedDrawableFactory(new DefaultSerialExecutorService(this.mExecutorSupplier.forDecode()), (ActivityManager) context.getSystemService("activity"), getAnimatedDrawableUtil(), getAnimatedDrawableBackendProvider(), UiThreadImmediateExecutorService.getInstance(), RealtimeSinceBootClock.get(), context.getResources());
        }
        return this.mAnimatedDrawableFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AnimatedDrawableUtil getAnimatedDrawableUtil() {
        if (this.mAnimatedDrawableUtil == null) {
            this.mAnimatedDrawableUtil = new AnimatedDrawableUtil();
        }
        return this.mAnimatedDrawableUtil;
    }

    private AnimatedImageFactory buildAnimatedImageFactory() {
        return new AnimatedImageFactoryImpl(new AnimatedDrawableBackendProvider() { // from class: com.facebook.imagepipeline.animated.factory.AnimatedFactoryImpl.3
            @Override // com.facebook.imagepipeline.animated.impl.AnimatedDrawableBackendProvider
            public AnimatedDrawableBackend get(AnimatedImageResult animatedImageResult, Rect rect) {
                return new AnimatedDrawableBackendImpl(AnimatedFactoryImpl.this.getAnimatedDrawableUtil(), animatedImageResult, rect);
            }
        }, this.mPlatformBitmapFactory);
    }

    @Override // com.facebook.imagepipeline.animated.factory.AnimatedFactory
    public AnimatedImageFactory getAnimatedImageFactory() {
        if (this.mAnimatedImageFactory == null) {
            this.mAnimatedImageFactory = buildAnimatedImageFactory();
        }
        return this.mAnimatedImageFactory;
    }

    protected AnimatedDrawableFactory createAnimatedDrawableFactory(AnimatedDrawableBackendProvider animatedDrawableBackendProvider, AnimatedDrawableCachingBackendImplProvider animatedDrawableCachingBackendImplProvider, AnimatedDrawableUtil animatedDrawableUtil, ScheduledExecutorService scheduledExecutorService, Resources resources) {
        return new AnimatedDrawableFactoryImpl(animatedDrawableBackendProvider, animatedDrawableCachingBackendImplProvider, animatedDrawableUtil, scheduledExecutorService, resources);
    }
}
