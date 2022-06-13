package com.facebook.imagepipeline.animated.impl;

import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import androidx.collection.SparseArrayCompat;
import bolts.Continuation;
import bolts.Task;
import com.facebook.common.executors.SerialExecutorService;
import com.facebook.common.logging.FLog;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.references.ResourceReleaser;
import com.facebook.common.time.MonotonicClock;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableCachingBackend;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableOptions;
import com.facebook.imagepipeline.animated.base.DelegatingAnimatedDrawableBackend;
import com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor;
import com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class AnimatedDrawableCachingBackendImpl extends DelegatingAnimatedDrawableBackend implements AnimatedDrawableCachingBackend {
    private static final int PREFETCH_FRAMES = 3;
    private static final Class<?> TAG = AnimatedDrawableCachingBackendImpl.class;
    private static final AtomicInteger sTotalBitmaps = new AtomicInteger();
    private final ActivityManager mActivityManager;
    private final AnimatedDrawableBackend mAnimatedDrawableBackend;
    private final AnimatedDrawableOptions mAnimatedDrawableOptions;
    private final AnimatedDrawableUtil mAnimatedDrawableUtil;
    private final AnimatedImageCompositor mAnimatedImageCompositor;
    private final double mApproxKiloBytesToHoldAllFrames;
    private final WhatToKeepCachedArray mBitmapsToKeepCached;
    private final SparseArrayCompat<CloseableReference<Bitmap>> mCachedBitmaps;
    private int mCurrentFrameIndex;
    private final SparseArrayCompat<Task<Object>> mDecodesInFlight;
    private final SerialExecutorService mExecutorService;
    private final List<Bitmap> mFreeBitmaps;
    private final double mMaximumKiloBytes;
    private final MonotonicClock mMonotonicClock;
    private final ResourceReleaser<Bitmap> mResourceReleaserForBitmaps;

    public AnimatedDrawableCachingBackendImpl(SerialExecutorService serialExecutorService, ActivityManager activityManager, AnimatedDrawableUtil animatedDrawableUtil, MonotonicClock monotonicClock, AnimatedDrawableBackend animatedDrawableBackend, AnimatedDrawableOptions animatedDrawableOptions) {
        super(animatedDrawableBackend);
        int i;
        this.mExecutorService = serialExecutorService;
        this.mActivityManager = activityManager;
        this.mAnimatedDrawableUtil = animatedDrawableUtil;
        this.mMonotonicClock = monotonicClock;
        this.mAnimatedDrawableBackend = animatedDrawableBackend;
        this.mAnimatedDrawableOptions = animatedDrawableOptions;
        if (animatedDrawableOptions.maximumBytes >= 0) {
            i = animatedDrawableOptions.maximumBytes / 1024;
        } else {
            i = getDefaultMaxBytes(activityManager) / 1024;
        }
        this.mMaximumKiloBytes = (double) i;
        this.mAnimatedImageCompositor = new AnimatedImageCompositor(animatedDrawableBackend, new AnimatedImageCompositor.Callback() { // from class: com.facebook.imagepipeline.animated.impl.AnimatedDrawableCachingBackendImpl.1
            @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.Callback
            public void onIntermediateResult(int i2, Bitmap bitmap) {
                AnimatedDrawableCachingBackendImpl.this.maybeCacheBitmapDuringRender(i2, bitmap);
            }

            @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.Callback
            public CloseableReference<Bitmap> getCachedBitmap(int i2) {
                return AnimatedDrawableCachingBackendImpl.this.getCachedOrPredecodedFrame(i2);
            }
        });
        this.mResourceReleaserForBitmaps = new ResourceReleaser<Bitmap>() { // from class: com.facebook.imagepipeline.animated.impl.AnimatedDrawableCachingBackendImpl.2
            public void release(Bitmap bitmap) {
                AnimatedDrawableCachingBackendImpl.this.releaseBitmapInternal(bitmap);
            }
        };
        this.mFreeBitmaps = new ArrayList();
        this.mDecodesInFlight = new SparseArrayCompat<>(10);
        this.mCachedBitmaps = new SparseArrayCompat<>(10);
        this.mBitmapsToKeepCached = new WhatToKeepCachedArray(this.mAnimatedDrawableBackend.getFrameCount());
        this.mApproxKiloBytesToHoldAllFrames = (double) (((this.mAnimatedDrawableBackend.getRenderedWidth() * this.mAnimatedDrawableBackend.getRenderedHeight()) / 1024) * this.mAnimatedDrawableBackend.getFrameCount() * 4);
    }

    protected synchronized void finalize() throws Throwable {
        super.finalize();
        if (this.mCachedBitmaps.size() > 0) {
            FLog.d(TAG, "Finalizing with rendered bitmaps");
        }
        sTotalBitmaps.addAndGet(-this.mFreeBitmaps.size());
        this.mFreeBitmaps.clear();
    }

    private Bitmap createNewBitmap() {
        FLog.v(TAG, "Creating new bitmap");
        sTotalBitmaps.incrementAndGet();
        FLog.v(TAG, "Total bitmaps: %d", Integer.valueOf(sTotalBitmaps.get()));
        return Bitmap.createBitmap(this.mAnimatedDrawableBackend.getRenderedWidth(), this.mAnimatedDrawableBackend.getRenderedHeight(), Bitmap.Config.ARGB_8888);
    }

    @Override // com.facebook.imagepipeline.animated.base.DelegatingAnimatedDrawableBackend, com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public void renderFrame(int i, Canvas canvas) {
        throw new IllegalStateException();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableCachingBackend
    public CloseableReference<Bitmap> getBitmapForFrame(int i) {
        this.mCurrentFrameIndex = i;
        CloseableReference<Bitmap> bitmapForFrameInternal = getBitmapForFrameInternal(i, false);
        schedulePrefetches();
        return bitmapForFrameInternal;
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableCachingBackend
    public CloseableReference<Bitmap> getPreviewBitmap() {
        return getAnimatedImageResult().getPreviewBitmap();
    }

    CloseableReference<Bitmap> getBitmapForFrameBlocking(int i) {
        this.mCurrentFrameIndex = i;
        CloseableReference<Bitmap> bitmapForFrameInternal = getBitmapForFrameInternal(i, true);
        schedulePrefetches();
        return bitmapForFrameInternal;
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public AnimatedDrawableCachingBackend forNewBounds(Rect rect) {
        AnimatedDrawableBackend forNewBounds = this.mAnimatedDrawableBackend.forNewBounds(rect);
        if (forNewBounds == this.mAnimatedDrawableBackend) {
            return this;
        }
        return new AnimatedDrawableCachingBackendImpl(this.mExecutorService, this.mActivityManager, this.mAnimatedDrawableUtil, this.mMonotonicClock, forNewBounds, this.mAnimatedDrawableOptions);
    }

    @Override // com.facebook.imagepipeline.animated.base.DelegatingAnimatedDrawableBackend, com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public synchronized void dropCaches() {
        this.mBitmapsToKeepCached.setAll(false);
        dropBitmapsThatShouldNotBeCached();
        for (Bitmap bitmap : this.mFreeBitmaps) {
            bitmap.recycle();
            sTotalBitmaps.decrementAndGet();
        }
        this.mFreeBitmaps.clear();
        this.mAnimatedDrawableBackend.dropCaches();
        FLog.v(TAG, "Total bitmaps: %d", Integer.valueOf(sTotalBitmaps.get()));
    }

    @Override // com.facebook.imagepipeline.animated.base.DelegatingAnimatedDrawableBackend, com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public int getMemoryUsage() {
        int i;
        synchronized (this) {
            i = 0;
            for (Bitmap bitmap : this.mFreeBitmaps) {
                i += this.mAnimatedDrawableUtil.getSizeOfBitmap(bitmap);
            }
            for (int i2 = 0; i2 < this.mCachedBitmaps.size(); i2++) {
                i += this.mAnimatedDrawableUtil.getSizeOfBitmap(this.mCachedBitmaps.valueAt(i2).get());
            }
        }
        return i + this.mAnimatedDrawableBackend.getMemoryUsage();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableCachingBackend
    public void appendDebugOptionString(StringBuilder sb) {
        if (this.mAnimatedDrawableOptions.forceKeepAllFramesInMemory) {
            sb.append("Pinned To Memory");
        } else {
            if (this.mApproxKiloBytesToHoldAllFrames < this.mMaximumKiloBytes) {
                sb.append("within ");
            } else {
                sb.append("exceeds ");
            }
            this.mAnimatedDrawableUtil.appendMemoryString(sb, (int) this.mMaximumKiloBytes);
        }
        if (shouldKeepAllFramesInMemory() && this.mAnimatedDrawableOptions.allowPrefetching) {
            sb.append(" MT");
        }
    }

    private CloseableReference<Bitmap> getBitmapForFrameInternal(int i, boolean z) {
        Throwable th;
        long now = this.mMonotonicClock.now();
        boolean z2 = true;
        try {
            synchronized (this) {
                this.mBitmapsToKeepCached.set(i, true);
                CloseableReference<Bitmap> cachedOrPredecodedFrame = getCachedOrPredecodedFrame(i);
                if (cachedOrPredecodedFrame != null) {
                    long now2 = this.mMonotonicClock.now() - now;
                    if (now2 > 10) {
                        FLog.v(TAG, "obtainBitmap for frame %d took %d ms (%s)", Integer.valueOf(i), Long.valueOf(now2), "ok");
                    }
                    return cachedOrPredecodedFrame;
                } else if (z) {
                    try {
                        CloseableReference<Bitmap> obtainBitmapInternal = obtainBitmapInternal();
                        this.mAnimatedImageCompositor.renderFrame(i, obtainBitmapInternal.get());
                        maybeCacheRenderedBitmap(i, obtainBitmapInternal);
                        CloseableReference<Bitmap> clone = obtainBitmapInternal.clone();
                        obtainBitmapInternal.close();
                        long now3 = this.mMonotonicClock.now() - now;
                        if (now3 > 10) {
                            FLog.v(TAG, "obtainBitmap for frame %d took %d ms (%s)", Integer.valueOf(i), Long.valueOf(now3), "renderedOnCallingThread");
                        }
                        return clone;
                    } catch (Throwable th2) {
                        th = th2;
                        long now4 = this.mMonotonicClock.now() - now;
                        if (now4 > 10) {
                            FLog.v(TAG, "obtainBitmap for frame %d took %d ms (%s)", Integer.valueOf(i), Long.valueOf(now4), !z2 ? "ok" : "renderedOnCallingThread");
                        }
                        throw th;
                    }
                } else {
                    long now5 = this.mMonotonicClock.now() - now;
                    if (now5 > 10) {
                        FLog.v(TAG, "obtainBitmap for frame %d took %d ms (%s)", Integer.valueOf(i), Long.valueOf(now5), "deferred");
                    }
                    return null;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            z2 = false;
        }
    }

    public void maybeCacheBitmapDuringRender(int i, Bitmap bitmap) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.mBitmapsToKeepCached.get(i) && this.mCachedBitmaps.get(i) == null) {
                z = true;
            }
        }
        if (z) {
            copyAndCacheBitmapDuringRendering(i, bitmap);
        }
    }

    private void copyAndCacheBitmapDuringRendering(int i, Bitmap bitmap) {
        CloseableReference<Bitmap> obtainBitmapInternal = obtainBitmapInternal();
        try {
            Canvas canvas = new Canvas(obtainBitmapInternal.get());
            canvas.drawColor(0, PorterDuff.Mode.SRC);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            maybeCacheRenderedBitmap(i, obtainBitmapInternal);
        } finally {
            obtainBitmapInternal.close();
        }
    }

    private CloseableReference<Bitmap> obtainBitmapInternal() {
        Bitmap bitmap;
        synchronized (this) {
            long nanoTime = System.nanoTime();
            long convert = TimeUnit.NANOSECONDS.convert(20, TimeUnit.MILLISECONDS) + nanoTime;
            while (this.mFreeBitmaps.isEmpty() && nanoTime < convert) {
                try {
                    TimeUnit.NANOSECONDS.timedWait(this, convert - nanoTime);
                    nanoTime = System.nanoTime();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new RuntimeException(e);
                }
            }
            if (this.mFreeBitmaps.isEmpty()) {
                bitmap = createNewBitmap();
            } else {
                bitmap = this.mFreeBitmaps.remove(this.mFreeBitmaps.size() - 1);
            }
        }
        return CloseableReference.of(bitmap, this.mResourceReleaserForBitmaps);
    }

    synchronized void releaseBitmapInternal(Bitmap bitmap) {
        this.mFreeBitmaps.add(bitmap);
    }

    private synchronized void schedulePrefetches() {
        int i = 0;
        boolean z = this.mAnimatedDrawableBackend.getFrameInfo(this.mCurrentFrameIndex).disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS;
        int max = Math.max(0, this.mCurrentFrameIndex - (z ? 1 : 0));
        int i2 = this.mAnimatedDrawableOptions.allowPrefetching ? 3 : 0;
        if (z) {
            i = 1;
        }
        int max2 = Math.max(i2, i);
        int frameCount = (max + max2) % this.mAnimatedDrawableBackend.getFrameCount();
        cancelFuturesOutsideOfRange(max, frameCount);
        if (!shouldKeepAllFramesInMemory()) {
            this.mBitmapsToKeepCached.setAll(true);
            this.mBitmapsToKeepCached.removeOutsideRange(max, frameCount);
            int i3 = max;
            while (true) {
                if (i3 < 0) {
                    break;
                } else if (this.mCachedBitmaps.get(i3) != null) {
                    this.mBitmapsToKeepCached.set(i3, true);
                    break;
                } else {
                    i3--;
                }
            }
            dropBitmapsThatShouldNotBeCached();
        }
        if (this.mAnimatedDrawableOptions.allowPrefetching) {
            doPrefetch(max, max2);
        } else {
            cancelFuturesOutsideOfRange(this.mCurrentFrameIndex, this.mCurrentFrameIndex);
        }
    }

    private static int getDefaultMaxBytes(ActivityManager activityManager) {
        return activityManager.getMemoryClass() > 32 ? 5242880 : 3145728;
    }

    private boolean shouldKeepAllFramesInMemory() {
        if (!this.mAnimatedDrawableOptions.forceKeepAllFramesInMemory && this.mApproxKiloBytesToHoldAllFrames >= this.mMaximumKiloBytes) {
            return false;
        }
        return true;
    }

    private synchronized void doPrefetch(int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            final int frameCount = (i + i3) % this.mAnimatedDrawableBackend.getFrameCount();
            boolean hasCachedOrPredecodedFrame = hasCachedOrPredecodedFrame(frameCount);
            Task<Object> task = this.mDecodesInFlight.get(frameCount);
            if (!hasCachedOrPredecodedFrame && task == null) {
                final Task<Object> call = Task.call(new Callable<Object>() { // from class: com.facebook.imagepipeline.animated.impl.AnimatedDrawableCachingBackendImpl.3
                    @Override // java.util.concurrent.Callable
                    public Object call() {
                        AnimatedDrawableCachingBackendImpl.this.runPrefetch(frameCount);
                        return null;
                    }
                }, this.mExecutorService);
                this.mDecodesInFlight.put(frameCount, call);
                call.continueWith(new Continuation<Object, Object>() { // from class: com.facebook.imagepipeline.animated.impl.AnimatedDrawableCachingBackendImpl.4
                    @Override // bolts.Continuation
                    public Object then(Task<Object> task2) throws Exception {
                        AnimatedDrawableCachingBackendImpl.this.onFutureFinished(call, frameCount);
                        return null;
                    }
                });
            }
        }
    }

    public void runPrefetch(int i) {
        synchronized (this) {
            if (this.mBitmapsToKeepCached.get(i)) {
                if (!hasCachedOrPredecodedFrame(i)) {
                    CloseableReference<Bitmap> preDecodedFrame = this.mAnimatedDrawableBackend.getPreDecodedFrame(i);
                    try {
                        if (preDecodedFrame != null) {
                            maybeCacheRenderedBitmap(i, preDecodedFrame);
                        } else {
                            CloseableReference<Bitmap> obtainBitmapInternal = obtainBitmapInternal();
                            this.mAnimatedImageCompositor.renderFrame(i, obtainBitmapInternal.get());
                            maybeCacheRenderedBitmap(i, obtainBitmapInternal);
                            FLog.v(TAG, "Prefetch rendered frame %d", Integer.valueOf(i));
                            obtainBitmapInternal.close();
                        }
                    } finally {
                        CloseableReference.closeSafely(preDecodedFrame);
                    }
                }
            }
        }
    }

    public synchronized void onFutureFinished(Task<?> task, int i) {
        int indexOfKey = this.mDecodesInFlight.indexOfKey(i);
        if (indexOfKey >= 0 && this.mDecodesInFlight.valueAt(indexOfKey) == task) {
            this.mDecodesInFlight.removeAt(indexOfKey);
            if (task.getError() != null) {
                FLog.v(TAG, task.getError(), "Failed to render frame %d", Integer.valueOf(i));
            }
        }
    }

    private synchronized void cancelFuturesOutsideOfRange(int i, int i2) {
        int i3 = 0;
        while (i3 < this.mDecodesInFlight.size()) {
            if (AnimatedDrawableUtil.isOutsideRange(i, i2, this.mDecodesInFlight.keyAt(i3))) {
                this.mDecodesInFlight.valueAt(i3);
                this.mDecodesInFlight.removeAt(i3);
            } else {
                i3++;
            }
        }
    }

    private synchronized void dropBitmapsThatShouldNotBeCached() {
        int i = 0;
        while (i < this.mCachedBitmaps.size()) {
            if (!this.mBitmapsToKeepCached.get(this.mCachedBitmaps.keyAt(i))) {
                this.mCachedBitmaps.removeAt(i);
                this.mCachedBitmaps.valueAt(i).close();
            } else {
                i++;
            }
        }
    }

    private synchronized void maybeCacheRenderedBitmap(int i, CloseableReference<Bitmap> closeableReference) {
        if (this.mBitmapsToKeepCached.get(i)) {
            int indexOfKey = this.mCachedBitmaps.indexOfKey(i);
            if (indexOfKey >= 0) {
                this.mCachedBitmaps.valueAt(indexOfKey).close();
                this.mCachedBitmaps.removeAt(indexOfKey);
            }
            this.mCachedBitmaps.put(i, closeableReference.clone());
        }
    }

    public synchronized CloseableReference<Bitmap> getCachedOrPredecodedFrame(int i) {
        CloseableReference<Bitmap> cloneOrNull;
        cloneOrNull = CloseableReference.cloneOrNull(this.mCachedBitmaps.get(i));
        if (cloneOrNull == null) {
            cloneOrNull = this.mAnimatedDrawableBackend.getPreDecodedFrame(i);
        }
        return cloneOrNull;
    }

    private synchronized boolean hasCachedOrPredecodedFrame(int i) {
        boolean z;
        if (this.mCachedBitmaps.get(i) == null) {
            if (!this.mAnimatedDrawableBackend.hasPreDecodedFrame(i)) {
                z = false;
            }
        }
        z = true;
        return z;
    }

    synchronized Map<Integer, Task<?>> getDecodesInFlight() {
        HashMap hashMap;
        hashMap = new HashMap();
        for (int i = 0; i < this.mDecodesInFlight.size(); i++) {
            hashMap.put(Integer.valueOf(this.mDecodesInFlight.keyAt(i)), this.mDecodesInFlight.valueAt(i));
        }
        return hashMap;
    }

    synchronized Set<Integer> getFramesCached() {
        HashSet hashSet;
        hashSet = new HashSet();
        for (int i = 0; i < this.mCachedBitmaps.size(); i++) {
            hashSet.add(Integer.valueOf(this.mCachedBitmaps.keyAt(i)));
        }
        return hashSet;
    }
}
