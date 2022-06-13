package com.humrousz.sequence;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class AnimationSequenceDrawable extends Drawable implements Animatable, Runnable {
    private static final long DEFAULT_DELAY_MS = 100;
    public static final int LOOP_DEFAULT = 3;
    public static final int LOOP_FINITE = 1;
    public static final int LOOP_INF = 2;
    private static final long MIN_DELAY_MS = 20;
    private static final int STATE_DECODING = 2;
    private static final int STATE_READY_TO_SWAP = 4;
    private static final int STATE_SCHEDULED = 1;
    private static final int STATE_WAITING_TO_SWAP = 3;
    private static final String TAG = "BaseAnimationSequence";
    private static HandlerThread sDecodingThread;
    private static Handler sDecodingThreadHandler;
    private final BaseAnimationSequence mAnimationSequence;
    private Bitmap mBackBitmap;
    private BitmapShader mBackBitmapShader;
    private final BitmapProvider mBitmapProvider;
    private boolean mCircleMaskEnabled;
    private int mCurrentLoop;
    private Runnable mDecodeRunnable;
    private boolean mDestroyed;
    private Runnable mFinishedCallbackRunnable;
    private Bitmap mFrontBitmap;
    private BitmapShader mFrontBitmapShader;
    private long mLastSwap;
    private final Object mLock;
    private int mLoopBehavior;
    private int mLoopCount;
    private int mNextFrameToDecode;
    private long mNextSwap;
    private OnFinishedListener mOnFinishedListener;
    private final Paint mPaint;
    private final Rect mSrcRect;
    private int mState;
    private RectF mTempRectF;
    private static final Object S_LOCK = new Object();
    private static BitmapProvider sAllocatingBitmapProvider = new BitmapProvider() { // from class: com.humrousz.sequence.AnimationSequenceDrawable.1
        @Override // com.humrousz.sequence.AnimationSequenceDrawable.BitmapProvider
        public void releaseBitmap(Bitmap bitmap) {
        }

        @Override // com.humrousz.sequence.AnimationSequenceDrawable.BitmapProvider
        public Bitmap acquireBitmap(int i, int i2) {
            return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        }
    };

    /* loaded from: classes2.dex */
    public interface BitmapProvider {
        Bitmap acquireBitmap(int i, int i2);

        void releaseBitmap(Bitmap bitmap);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface LoopBehavior {
    }

    /* loaded from: classes2.dex */
    public interface OnFinishedListener {
        void onFinished(AnimationSequenceDrawable animationSequenceDrawable);
    }

    private static void initializeDecodingThread() {
        synchronized (S_LOCK) {
            if (sDecodingThread == null) {
                sDecodingThread = new HandlerThread("BaseAnimationSequence decoding thread", 10);
                sDecodingThread.start();
                sDecodingThreadHandler = new Handler(sDecodingThread.getLooper());
            }
        }
    }

    public void setOnFinishedListener(OnFinishedListener onFinishedListener) {
        this.mOnFinishedListener = onFinishedListener;
    }

    public void setLoopBehavior(int i) {
        this.mLoopBehavior = i;
    }

    public void setLoopCount(int i) {
        this.mLoopCount = i;
    }

    private static Bitmap acquireAndValidateBitmap(BitmapProvider bitmapProvider, int i, int i2) {
        Bitmap acquireBitmap = bitmapProvider.acquireBitmap(i, i2);
        if (acquireBitmap.getWidth() >= i && acquireBitmap.getHeight() >= i2 && acquireBitmap.getConfig() == Bitmap.Config.ARGB_8888) {
            return acquireBitmap;
        }
        throw new IllegalArgumentException("Invalid bitmap provided");
    }

    public AnimationSequenceDrawable(BaseAnimationSequence baseAnimationSequence) {
        this(baseAnimationSequence, sAllocatingBitmapProvider);
    }

    public AnimationSequenceDrawable(BaseAnimationSequence baseAnimationSequence, BitmapProvider bitmapProvider) {
        this.mLock = new Object();
        this.mDestroyed = false;
        this.mLoopBehavior = 3;
        this.mLoopCount = 1;
        this.mTempRectF = new RectF();
        this.mDecodeRunnable = new Runnable() { // from class: com.humrousz.sequence.AnimationSequenceDrawable.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                Bitmap bitmap;
                synchronized (AnimationSequenceDrawable.this.mLock) {
                    if (!AnimationSequenceDrawable.this.mDestroyed) {
                        int i = AnimationSequenceDrawable.this.mNextFrameToDecode;
                        if (i >= 0) {
                            Bitmap bitmap2 = AnimationSequenceDrawable.this.mBackBitmap;
                            AnimationSequenceDrawable.this.mState = 2;
                            long j = 0;
                            boolean z2 = false;
                            try {
                                j = AnimationSequenceDrawable.this.mAnimationSequence.getFrame(i, bitmap2, i - 2);
                                z = false;
                            } catch (Exception e) {
                                Log.e(AnimationSequenceDrawable.TAG, "exception during decode: " + e);
                                z = true;
                            }
                            if (j < 20) {
                                j = AnimationSequenceDrawable.DEFAULT_DELAY_MS;
                            }
                            synchronized (AnimationSequenceDrawable.this.mLock) {
                                bitmap = null;
                                if (AnimationSequenceDrawable.this.mDestroyed) {
                                    Bitmap bitmap3 = AnimationSequenceDrawable.this.mBackBitmap;
                                    AnimationSequenceDrawable.this.mBackBitmap = null;
                                    bitmap = bitmap3;
                                } else if (AnimationSequenceDrawable.this.mNextFrameToDecode >= 0 && AnimationSequenceDrawable.this.mState == 2) {
                                    AnimationSequenceDrawable.this.mNextSwap = z ? Long.MAX_VALUE : j + AnimationSequenceDrawable.this.mLastSwap;
                                    AnimationSequenceDrawable.this.mState = 3;
                                    z2 = true;
                                }
                            }
                            if (z2) {
                                AnimationSequenceDrawable animationSequenceDrawable = AnimationSequenceDrawable.this;
                                animationSequenceDrawable.scheduleSelf(animationSequenceDrawable, animationSequenceDrawable.mNextSwap);
                            }
                            if (bitmap != null) {
                                AnimationSequenceDrawable.this.mBitmapProvider.releaseBitmap(bitmap);
                            }
                        }
                    }
                }
            }
        };
        this.mFinishedCallbackRunnable = new Runnable() { // from class: com.humrousz.sequence.AnimationSequenceDrawable.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (AnimationSequenceDrawable.this.mLock) {
                    AnimationSequenceDrawable.this.mNextFrameToDecode = -1;
                    AnimationSequenceDrawable.this.mState = 0;
                }
                if (AnimationSequenceDrawable.this.mOnFinishedListener != null) {
                    AnimationSequenceDrawable.this.mOnFinishedListener.onFinished(AnimationSequenceDrawable.this);
                }
            }
        };
        int width = baseAnimationSequence.getWidth();
        int height = baseAnimationSequence.getHeight();
        this.mBitmapProvider = bitmapProvider;
        this.mFrontBitmap = acquireAndValidateBitmap(bitmapProvider, width, height);
        this.mBackBitmap = acquireAndValidateBitmap(bitmapProvider, width, height);
        this.mSrcRect = new Rect(0, 0, width, height);
        this.mPaint = new Paint();
        this.mPaint.setFilterBitmap(true);
        this.mFrontBitmapShader = new BitmapShader(this.mFrontBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        this.mBackBitmapShader = new BitmapShader(this.mBackBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        this.mLastSwap = 0;
        this.mNextFrameToDecode = -1;
        this.mAnimationSequence = baseAnimationSequence;
        this.mAnimationSequence.getFrame(0, this.mFrontBitmap, -1);
        initializeDecodingThread();
    }

    public final void setCircleMaskEnabled(boolean z) {
        if (this.mCircleMaskEnabled != z) {
            this.mCircleMaskEnabled = z;
            this.mPaint.setAntiAlias(z);
            invalidateSelf();
        }
    }

    public final boolean getCircleMaskEnabled() {
        return this.mCircleMaskEnabled;
    }

    private void checkDestroyedLocked() {
        if (this.mDestroyed) {
            throw new IllegalStateException("Cannot perform operation on recycled drawable");
        }
    }

    public boolean isDestroyed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mDestroyed;
        }
        return z;
    }

    public void destroy() {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this.mBitmapProvider != null) {
            synchronized (this.mLock) {
                checkDestroyedLocked();
                bitmap = this.mFrontBitmap;
                bitmap2 = null;
                this.mFrontBitmap = null;
                if (this.mState != 2) {
                    Bitmap bitmap3 = this.mBackBitmap;
                    this.mBackBitmap = null;
                    bitmap2 = bitmap3;
                }
                this.mDestroyed = true;
            }
            this.mBitmapProvider.releaseBitmap(bitmap);
            if (bitmap2 != null) {
                this.mBitmapProvider.releaseBitmap(bitmap2);
                return;
            }
            return;
        }
        throw new IllegalStateException("BitmapProvider must be non-null");
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!isRunning()) {
            synchronized (this.mLock) {
                checkDestroyedLocked();
                if (this.mState != 1) {
                    this.mCurrentLoop = 0;
                    scheduleDecodeLocked();
                }
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            unscheduleSelf(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mNextFrameToDecode > -1 && !this.mDestroyed;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        synchronized (this.mLock) {
            this.mNextFrameToDecode = -1;
            this.mState = 0;
        }
        super.unscheduleSelf(runnable);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (!z) {
            stop();
        } else if (z2 || visible) {
            stop();
            start();
        } else if (!isRunning() && z) {
            start();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        synchronized (this.mLock) {
            checkDestroyedLocked();
            if (this.mState == 3 && this.mNextSwap - SystemClock.uptimeMillis() <= 0) {
                this.mState = 4;
            }
            if (isRunning() && this.mState == 4) {
                Bitmap bitmap = this.mBackBitmap;
                this.mBackBitmap = this.mFrontBitmap;
                this.mFrontBitmap = bitmap;
                BitmapShader bitmapShader = this.mBackBitmapShader;
                this.mBackBitmapShader = this.mFrontBitmapShader;
                this.mFrontBitmapShader = bitmapShader;
                this.mLastSwap = SystemClock.uptimeMillis();
                boolean z = true;
                if (this.mNextFrameToDecode == this.mAnimationSequence.getFrameCount() - 1) {
                    this.mCurrentLoop++;
                    if ((this.mLoopBehavior == 1 && this.mCurrentLoop == this.mLoopCount) || (this.mLoopBehavior == 3 && this.mCurrentLoop == this.mAnimationSequence.getDefaultLoopCount())) {
                        z = false;
                    }
                }
                if (z) {
                    scheduleDecodeLocked();
                } else {
                    scheduleSelf(this.mFinishedCallbackRunnable, 0);
                }
            }
        }
        if (this.mCircleMaskEnabled) {
            Rect bounds = getBounds();
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            float f = (float) intrinsicWidth;
            float width = (((float) bounds.width()) * 1.0f) / f;
            float f2 = (float) intrinsicHeight;
            float height = (((float) bounds.height()) * 1.0f) / f2;
            canvas.save();
            canvas.translate((float) bounds.left, (float) bounds.top);
            canvas.scale(width, height);
            float min = (float) Math.min(bounds.width(), bounds.height());
            float f3 = min / width;
            float f4 = min / height;
            this.mTempRectF.set((f - f3) / 2.0f, (f2 - f4) / 2.0f, (f + f3) / 2.0f, (f2 + f4) / 2.0f);
            this.mPaint.setShader(this.mFrontBitmapShader);
            canvas.drawOval(this.mTempRectF, this.mPaint);
            canvas.restore();
            return;
        }
        this.mPaint.setShader(null);
        canvas.drawBitmap(this.mFrontBitmap, this.mSrcRect, getBounds(), this.mPaint);
    }

    private void scheduleDecodeLocked() {
        this.mState = 1;
        this.mNextFrameToDecode = (this.mNextFrameToDecode + 1) % this.mAnimationSequence.getFrameCount();
        sDecodingThreadHandler.post(this.mDecodeRunnable);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.mPaint.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mAnimationSequence.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mAnimationSequence.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mAnimationSequence.isOpaque() ? -1 : -2;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        synchronized (this.mLock) {
            if (this.mNextFrameToDecode < 0 || this.mState != 3) {
                z = false;
            } else {
                this.mState = 4;
                z = true;
            }
        }
        if (z) {
            invalidateSelf();
        }
    }
}
