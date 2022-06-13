package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import com.facebook.common.logging.FLog;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.time.MonotonicClock;
import com.facebook.drawable.base.DrawableWithCaches;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public abstract class AbstractAnimatedDrawable extends Drawable implements Animatable, DrawableWithCaches {
    private static final int NO_FRAME = -1;
    private static final int POLL_FOR_RENDERED_FRAME_MS = 5;
    private static final Class<?> TAG = AnimatedDrawable.class;
    private static final long WATCH_DOG_TIMER_MIN_TIMEOUT_MS = 1000;
    private static final long WATCH_DOG_TIMER_POLL_INTERVAL_MS = 2000;
    private AnimatedDrawableCachingBackend mAnimatedDrawableBackend;
    private final AnimatedDrawableDiagnostics mAnimatedDrawableDiagnostics;
    private boolean mApplyTransformation;
    private final int mDurationMs;
    private final int mFrameCount;
    private boolean mHaveWatchdogScheduled;
    private boolean mInvalidateTaskScheduled;
    private boolean mIsRunning;
    private CloseableReference<Bitmap> mLastDrawnFrame;
    private volatile String mLogId;
    private final MonotonicClock mMonotonicClock;
    private int mPendingRenderedFrameMonotonicNumber;
    private int mPendingRenderedFrameNumber;
    private final ScheduledExecutorService mScheduledExecutorServiceForUiThread;
    private int mScheduledFrameMonotonicNumber;
    private int mScheduledFrameNumber;
    private long mStartTimeMs;
    private final int mTotalLoops;
    private boolean mWaitingForDraw;
    private final Paint mPaint = new Paint(6);
    private final Rect mDstRect = new Rect();
    private int mLastDrawnFrameNumber = -1;
    private int mLastDrawnFrameMonotonicNumber = -1;
    private long mLastInvalidateTimeMs = -1;
    private float mSx = 1.0f;
    private float mSy = 1.0f;
    private long mNextFrameTaskMs = -1;
    private final Runnable mStartTask = new Runnable() { // from class: com.facebook.imagepipeline.animated.base.AbstractAnimatedDrawable.1
        @Override // java.lang.Runnable
        public void run() {
            AbstractAnimatedDrawable.this.onStart();
        }
    };
    private final Runnable mNextFrameTask = new Runnable() { // from class: com.facebook.imagepipeline.animated.base.AbstractAnimatedDrawable.2
        @Override // java.lang.Runnable
        public void run() {
            FLog.v(AbstractAnimatedDrawable.TAG, "(%s) Next Frame Task", AbstractAnimatedDrawable.this.mLogId);
            AbstractAnimatedDrawable.this.onNextFrame();
        }
    };
    private final Runnable mInvalidateTask = new Runnable() { // from class: com.facebook.imagepipeline.animated.base.AbstractAnimatedDrawable.3
        @Override // java.lang.Runnable
        public void run() {
            FLog.v(AbstractAnimatedDrawable.TAG, "(%s) Invalidate Task", AbstractAnimatedDrawable.this.mLogId);
            AbstractAnimatedDrawable.this.mInvalidateTaskScheduled = false;
            AbstractAnimatedDrawable.this.doInvalidateSelf();
        }
    };
    private final Runnable mWatchdogTask = new Runnable() { // from class: com.facebook.imagepipeline.animated.base.AbstractAnimatedDrawable.4
        @Override // java.lang.Runnable
        public void run() {
            FLog.v(AbstractAnimatedDrawable.TAG, "(%s) Watchdog Task", AbstractAnimatedDrawable.this.mLogId);
            AbstractAnimatedDrawable.this.doWatchdogCheck();
        }
    };
    private final Paint mTransparentPaint = new Paint();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public AbstractAnimatedDrawable(ScheduledExecutorService scheduledExecutorService, AnimatedDrawableCachingBackend animatedDrawableCachingBackend, AnimatedDrawableDiagnostics animatedDrawableDiagnostics, MonotonicClock monotonicClock) {
        this.mScheduledExecutorServiceForUiThread = scheduledExecutorService;
        this.mAnimatedDrawableBackend = animatedDrawableCachingBackend;
        this.mAnimatedDrawableDiagnostics = animatedDrawableDiagnostics;
        this.mMonotonicClock = monotonicClock;
        this.mDurationMs = this.mAnimatedDrawableBackend.getDurationMs();
        this.mFrameCount = this.mAnimatedDrawableBackend.getFrameCount();
        this.mAnimatedDrawableDiagnostics.setBackend(this.mAnimatedDrawableBackend);
        this.mTotalLoops = this.mAnimatedDrawableBackend.getLoopCount();
        this.mTransparentPaint.setColor(0);
        this.mTransparentPaint.setStyle(Paint.Style.FILL);
        resetToPreviewFrame();
    }

    private void resetToPreviewFrame() {
        this.mScheduledFrameNumber = this.mAnimatedDrawableBackend.getFrameForPreview();
        this.mScheduledFrameMonotonicNumber = this.mScheduledFrameNumber;
        this.mPendingRenderedFrameNumber = -1;
        this.mPendingRenderedFrameMonotonicNumber = -1;
    }

    @Override // java.lang.Object
    protected void finalize() throws Throwable {
        super.finalize();
        CloseableReference<Bitmap> closeableReference = this.mLastDrawnFrame;
        if (closeableReference != null) {
            closeableReference.close();
            this.mLastDrawnFrame = null;
        }
    }

    public void setLogId(String str) {
        this.mLogId = str;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mAnimatedDrawableBackend.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mAnimatedDrawableBackend.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
        doInvalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        doInvalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mApplyTransformation = true;
        CloseableReference<Bitmap> closeableReference = this.mLastDrawnFrame;
        if (closeableReference != null) {
            closeableReference.close();
            this.mLastDrawnFrame = null;
        }
        this.mLastDrawnFrameNumber = -1;
        this.mLastDrawnFrameMonotonicNumber = -1;
        this.mAnimatedDrawableBackend.dropCaches();
    }

    public void onStart() {
        if (this.mIsRunning) {
            this.mAnimatedDrawableDiagnostics.onStartMethodBegin();
            try {
                this.mStartTimeMs = this.mMonotonicClock.now();
                this.mScheduledFrameNumber = 0;
                this.mScheduledFrameMonotonicNumber = 0;
                long durationMsForFrame = this.mStartTimeMs + ((long) this.mAnimatedDrawableBackend.getDurationMsForFrame(0));
                scheduleSelf(this.mNextFrameTask, durationMsForFrame);
                this.mNextFrameTaskMs = durationMsForFrame;
                doInvalidateSelf();
            } finally {
                this.mAnimatedDrawableDiagnostics.onStartMethodEnd();
            }
        }
    }

    public void onNextFrame() {
        this.mNextFrameTaskMs = -1;
        if (this.mIsRunning && this.mDurationMs != 0) {
            this.mAnimatedDrawableDiagnostics.onNextFrameMethodBegin();
            try {
                computeAndScheduleNextFrame(true);
            } finally {
                this.mAnimatedDrawableDiagnostics.onNextFrameMethodEnd();
            }
        }
    }

    private void computeAndScheduleNextFrame(boolean z) {
        if (this.mDurationMs != 0) {
            long now = this.mMonotonicClock.now();
            int i = (int) ((now - this.mStartTimeMs) / ((long) this.mDurationMs));
            int i2 = this.mTotalLoops;
            if (i2 <= 0 || i < i2) {
                int i3 = (int) ((now - this.mStartTimeMs) % ((long) this.mDurationMs));
                int frameForTimestampMs = this.mAnimatedDrawableBackend.getFrameForTimestampMs(i3);
                boolean z2 = this.mScheduledFrameNumber != frameForTimestampMs;
                this.mScheduledFrameNumber = frameForTimestampMs;
                this.mScheduledFrameMonotonicNumber = (i * this.mFrameCount) + frameForTimestampMs;
                if (z) {
                    if (z2) {
                        doInvalidateSelf();
                        return;
                    }
                    int timestampMsForFrame = (this.mAnimatedDrawableBackend.getTimestampMsForFrame(this.mScheduledFrameNumber) + this.mAnimatedDrawableBackend.getDurationMsForFrame(this.mScheduledFrameNumber)) - i3;
                    int i4 = (this.mScheduledFrameNumber + 1) % this.mFrameCount;
                    long j = now + ((long) timestampMsForFrame);
                    long j2 = this.mNextFrameTaskMs;
                    if (j2 == -1 || j2 > j) {
                        FLog.v(TAG, "(%s) Next frame (%d) in %d ms", this.mLogId, Integer.valueOf(i4), Integer.valueOf(timestampMsForFrame));
                        unscheduleSelf(this.mNextFrameTask);
                        scheduleSelf(this.mNextFrameTask, j);
                        this.mNextFrameTaskMs = j;
                    }
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        boolean z2;
        CloseableReference<Bitmap> previewBitmap;
        this.mAnimatedDrawableDiagnostics.onDrawMethodBegin();
        try {
            this.mWaitingForDraw = false;
            if (this.mIsRunning && !this.mHaveWatchdogScheduled) {
                this.mScheduledExecutorServiceForUiThread.schedule(this.mWatchdogTask, 2000, TimeUnit.MILLISECONDS);
                this.mHaveWatchdogScheduled = true;
            }
            if (this.mApplyTransformation) {
                this.mDstRect.set(getBounds());
                if (!this.mDstRect.isEmpty()) {
                    AnimatedDrawableCachingBackend forNewBounds = this.mAnimatedDrawableBackend.forNewBounds(this.mDstRect);
                    if (forNewBounds != this.mAnimatedDrawableBackend) {
                        this.mAnimatedDrawableBackend.dropCaches();
                        this.mAnimatedDrawableBackend = forNewBounds;
                        this.mAnimatedDrawableDiagnostics.setBackend(forNewBounds);
                    }
                    this.mSx = ((float) this.mDstRect.width()) / ((float) this.mAnimatedDrawableBackend.getRenderedWidth());
                    this.mSy = ((float) this.mDstRect.height()) / ((float) this.mAnimatedDrawableBackend.getRenderedHeight());
                    this.mApplyTransformation = false;
                }
            }
            if (!this.mDstRect.isEmpty()) {
                canvas.save();
                canvas.scale(this.mSx, this.mSy);
                if (this.mPendingRenderedFrameNumber != -1) {
                    boolean renderFrame = renderFrame(canvas, this.mPendingRenderedFrameNumber, this.mPendingRenderedFrameMonotonicNumber);
                    z = renderFrame | false;
                    if (renderFrame) {
                        FLog.v(TAG, "(%s) Rendered pending frame %d", this.mLogId, Integer.valueOf(this.mPendingRenderedFrameNumber));
                        this.mPendingRenderedFrameNumber = -1;
                        this.mPendingRenderedFrameMonotonicNumber = -1;
                    } else {
                        FLog.v(TAG, "(%s) Trying again later for pending %d", this.mLogId, Integer.valueOf(this.mPendingRenderedFrameNumber));
                        scheduleInvalidatePoll();
                    }
                } else {
                    z = false;
                }
                if (this.mPendingRenderedFrameNumber == -1) {
                    if (this.mIsRunning) {
                        computeAndScheduleNextFrame(false);
                    }
                    boolean renderFrame2 = renderFrame(canvas, this.mScheduledFrameNumber, this.mScheduledFrameMonotonicNumber);
                    z2 = z | renderFrame2;
                    if (renderFrame2) {
                        FLog.v(TAG, "(%s) Rendered current frame %d", this.mLogId, Integer.valueOf(this.mScheduledFrameNumber));
                        if (this.mIsRunning) {
                            computeAndScheduleNextFrame(true);
                        }
                    } else {
                        FLog.v(TAG, "(%s) Trying again later for current %d", this.mLogId, Integer.valueOf(this.mScheduledFrameNumber));
                        this.mPendingRenderedFrameNumber = this.mScheduledFrameNumber;
                        this.mPendingRenderedFrameMonotonicNumber = this.mScheduledFrameMonotonicNumber;
                        scheduleInvalidatePoll();
                    }
                } else {
                    z2 = z;
                }
                if (!z2 && this.mLastDrawnFrame != null) {
                    canvas.drawBitmap(this.mLastDrawnFrame.get(), 0.0f, 0.0f, this.mPaint);
                    FLog.v(TAG, "(%s) Rendered last known frame %d", this.mLogId, Integer.valueOf(this.mLastDrawnFrameNumber));
                    z2 = true;
                }
                if (!z2 && (previewBitmap = this.mAnimatedDrawableBackend.getPreviewBitmap()) != null) {
                    canvas.drawBitmap(previewBitmap.get(), 0.0f, 0.0f, this.mPaint);
                    previewBitmap.close();
                    FLog.v(TAG, "(%s) Rendered preview frame", this.mLogId);
                    z2 = true;
                }
                if (!z2) {
                    canvas.drawRect(0.0f, 0.0f, (float) this.mDstRect.width(), (float) this.mDstRect.height(), this.mTransparentPaint);
                    FLog.v(TAG, "(%s) Failed to draw a frame", this.mLogId);
                }
                canvas.restore();
                this.mAnimatedDrawableDiagnostics.drawDebugOverlay(canvas, this.mDstRect);
            }
        } finally {
            this.mAnimatedDrawableDiagnostics.onDrawMethodEnd();
        }
    }

    private void scheduleInvalidatePoll() {
        if (!this.mInvalidateTaskScheduled) {
            this.mInvalidateTaskScheduled = true;
            scheduleSelf(this.mInvalidateTask, 5);
        }
    }

    public boolean didLastDrawRender() {
        return this.mLastDrawnFrame != null;
    }

    private boolean renderFrame(Canvas canvas, int i, int i2) {
        int i3;
        CloseableReference<Bitmap> bitmapForFrame = this.mAnimatedDrawableBackend.getBitmapForFrame(i);
        if (bitmapForFrame == null) {
            return false;
        }
        canvas.drawBitmap(bitmapForFrame.get(), 0.0f, 0.0f, this.mPaint);
        CloseableReference<Bitmap> closeableReference = this.mLastDrawnFrame;
        if (closeableReference != null) {
            closeableReference.close();
        }
        if (this.mIsRunning && i2 > (i3 = this.mLastDrawnFrameMonotonicNumber)) {
            int i4 = (i2 - i3) - 1;
            this.mAnimatedDrawableDiagnostics.incrementDrawnFrames(1);
            this.mAnimatedDrawableDiagnostics.incrementDroppedFrames(i4);
            if (i4 > 0) {
                FLog.v(TAG, "(%s) Dropped %d frames", this.mLogId, Integer.valueOf(i4));
            }
        }
        this.mLastDrawnFrame = bitmapForFrame;
        this.mLastDrawnFrameNumber = i;
        this.mLastDrawnFrameMonotonicNumber = i2;
        FLog.v(TAG, "(%s) Drew frame %d", this.mLogId, Integer.valueOf(i));
        return true;
    }

    public void doWatchdogCheck() {
        boolean z = false;
        this.mHaveWatchdogScheduled = false;
        if (this.mIsRunning) {
            long now = this.mMonotonicClock.now();
            boolean z2 = this.mWaitingForDraw && now - this.mLastInvalidateTimeMs > 1000;
            long j = this.mNextFrameTaskMs;
            if (j != -1 && now - j > 1000) {
                z = true;
            }
            if (z2 || z) {
                dropCaches();
                doInvalidateSelf();
                return;
            }
            this.mScheduledExecutorServiceForUiThread.schedule(this.mWatchdogTask, 2000, TimeUnit.MILLISECONDS);
            this.mHaveWatchdogScheduled = true;
        }
    }

    public void doInvalidateSelf() {
        this.mWaitingForDraw = true;
        this.mLastInvalidateTimeMs = this.mMonotonicClock.now();
        invalidateSelf();
    }

    boolean isWaitingForDraw() {
        return this.mWaitingForDraw;
    }

    boolean isWaitingForNextFrame() {
        return this.mNextFrameTaskMs != -1;
    }

    int getScheduledFrameNumber() {
        return this.mScheduledFrameNumber;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.mDurationMs != 0 && this.mFrameCount > 1) {
            this.mIsRunning = true;
            scheduleSelf(this.mStartTask, this.mMonotonicClock.now());
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mIsRunning = false;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mIsRunning;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        int frameForTimestampMs;
        if (this.mIsRunning || (frameForTimestampMs = this.mAnimatedDrawableBackend.getFrameForTimestampMs(i)) == this.mScheduledFrameNumber) {
            return false;
        }
        try {
            this.mScheduledFrameNumber = frameForTimestampMs;
            this.mScheduledFrameMonotonicNumber = frameForTimestampMs;
            doInvalidateSelf();
            return true;
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    @Override // com.facebook.drawable.base.DrawableWithCaches
    public void dropCaches() {
        FLog.v(TAG, "(%s) Dropping caches", this.mLogId);
        CloseableReference<Bitmap> closeableReference = this.mLastDrawnFrame;
        if (closeableReference != null) {
            closeableReference.close();
            this.mLastDrawnFrame = null;
            this.mLastDrawnFrameNumber = -1;
            this.mLastDrawnFrameMonotonicNumber = -1;
        }
        this.mAnimatedDrawableBackend.dropCaches();
    }

    protected int getDuration() {
        return this.mDurationMs;
    }

    protected AnimatedDrawableCachingBackend getAnimatedDrawableBackend() {
        return this.mAnimatedDrawableBackend;
    }
}
