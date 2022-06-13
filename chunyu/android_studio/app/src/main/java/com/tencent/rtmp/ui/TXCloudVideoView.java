package com.tencent.rtmp.ui;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.i;
import com.tencent.liteav.renderer.TXCFocusIndicatorView;
import com.tencent.liteav.renderer.TXCGLSurfaceView;

/* loaded from: classes2.dex */
public class TXCloudVideoView extends FrameLayout implements View.OnTouchListener {
    private static final int FOCUS_AREA_SIZE_DP = 70;
    private static final String TAG = "TXCloudVideoView";
    private float mBottom;
    private i mCapture;
    private int mCaptureHeight;
    private int mCaptureWidth;
    private int mCurrentScale;
    protected TXDashBoard mDashBoard;
    private boolean mFocus;
    private int mFocusAreaSize;
    protected TXCFocusIndicatorView mFocusIndicatorView;
    protected Object mGLContext;
    protected TXCGLSurfaceView mGLSurfaceView;
    private float mLeft;
    private float mRight;
    private ScaleGestureDetector mScaleGestureDetector;
    private ScaleGestureDetector.OnScaleGestureListener mScaleGestureListener;
    protected SurfaceView mSurfaceView;
    private float mTop;
    private a mTouchFocusRunnable;
    private String mUserId;
    protected TextureView mVideoView;
    private boolean mZoom;

    private int clamp(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void setMirror(boolean z) {
    }

    public void setRenderMode(int i) {
    }

    public void setRenderRotation(int i) {
    }

    public TXCloudVideoView(Context context) {
        this(context, null);
    }

    public TXCloudVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCaptureWidth = 0;
        this.mCaptureHeight = 0;
        this.mLeft = 0.0f;
        this.mRight = 0.0f;
        this.mTop = 0.0f;
        this.mBottom = 0.0f;
        this.mFocusAreaSize = 0;
        this.mUserId = "";
        this.mFocus = false;
        this.mZoom = false;
        this.mCurrentScale = 1;
        this.mScaleGestureDetector = null;
        this.mScaleGestureListener = new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.tencent.rtmp.ui.TXCloudVideoView.2
            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                int a2 = TXCloudVideoView.this.mCapture != null ? TXCloudVideoView.this.mCapture.a() : 0;
                if (a2 > 0) {
                    float scaleFactor = scaleGestureDetector.getScaleFactor();
                    if (scaleFactor > 1.0f) {
                        scaleFactor = ((0.2f / ((float) a2)) * ((float) (a2 - TXCloudVideoView.this.mCurrentScale))) + 1.0f;
                        if (scaleFactor <= 1.1f) {
                            scaleFactor = 1.1f;
                        }
                    } else if (scaleFactor < 1.0f) {
                        scaleFactor = 1.0f - ((0.2f / ((float) a2)) * ((float) TXCloudVideoView.this.mCurrentScale));
                        if (scaleFactor >= 0.9f) {
                            scaleFactor = 0.9f;
                        }
                    }
                    int round = Math.round(((float) TXCloudVideoView.this.mCurrentScale) * scaleFactor);
                    if (round == TXCloudVideoView.this.mCurrentScale) {
                        if (scaleFactor > 1.0f) {
                            round++;
                        } else if (scaleFactor < 1.0f) {
                            round--;
                        }
                    }
                    if (round < a2) {
                        a2 = round;
                    }
                    if (a2 <= 1) {
                        a2 = 1;
                    }
                    if (scaleFactor > 1.0f) {
                        if (a2 < TXCloudVideoView.this.mCurrentScale) {
                            a2 = TXCloudVideoView.this.mCurrentScale;
                        }
                    } else if (scaleFactor < 1.0f && a2 > TXCloudVideoView.this.mCurrentScale) {
                        a2 = TXCloudVideoView.this.mCurrentScale;
                    }
                    TXCloudVideoView.this.mCurrentScale = a2;
                    if (TXCloudVideoView.this.mCapture != null) {
                        TXCloudVideoView.this.mCapture.a(TXCloudVideoView.this.mCurrentScale);
                    }
                }
                return false;
            }
        };
        this.mTouchFocusRunnable = new a();
        this.mDashBoard = new TXDashBoard(context);
        this.mScaleGestureDetector = new ScaleGestureDetector(context, this.mScaleGestureListener);
    }

    public TXCloudVideoView(SurfaceView surfaceView) {
        this(surfaceView.getContext(), null);
        this.mSurfaceView = surfaceView;
    }

    public void setOpenGLContext(Object obj) {
        this.mGLContext = obj;
    }

    public Object getOpenGLContext() {
        return this.mGLContext;
    }

    public void addVideoView(TXCGLSurfaceView tXCGLSurfaceView) {
        TXCGLSurfaceView tXCGLSurfaceView2 = this.mGLSurfaceView;
        if (tXCGLSurfaceView2 != null) {
            removeView(tXCGLSurfaceView2);
        }
        this.mGLSurfaceView = tXCGLSurfaceView;
        addView(this.mGLSurfaceView);
        resetLogView();
    }

    public void addVideoView(TextureView textureView) {
        TextureView textureView2 = this.mVideoView;
        if (textureView2 != null) {
            removeView(textureView2);
        }
        this.mVideoView = textureView;
        addView(this.mVideoView);
        resetLogView();
    }

    public void removeVideoView() {
        TextureView textureView = this.mVideoView;
        if (textureView != null) {
            try {
                removeView(textureView);
            } catch (Exception e) {
                TXCLog.e(TAG, "remove mVideoView Exception: " + e.getMessage());
            }
            this.mVideoView = null;
        }
        TXCGLSurfaceView tXCGLSurfaceView = this.mGLSurfaceView;
        if (tXCGLSurfaceView != null) {
            try {
                removeView(tXCGLSurfaceView);
            } catch (Exception e2) {
                TXCLog.e(TAG, "remove mGLSurfaceView Exception: " + e2.getMessage());
            }
            this.mGLSurfaceView = null;
        }
        this.mSurfaceView = null;
    }

    public void removeFocusIndicatorView() {
        TXCFocusIndicatorView tXCFocusIndicatorView = this.mFocusIndicatorView;
        if (tXCFocusIndicatorView != null) {
            removeView(tXCFocusIndicatorView);
            this.mFocusIndicatorView = null;
        }
    }

    public TextureView getVideoView() {
        return this.mVideoView;
    }

    public TXCGLSurfaceView getGLSurfaceView() {
        return this.mGLSurfaceView;
    }

    public SurfaceView getSurfaceView() {
        return this.mSurfaceView;
    }

    public TextureView getHWVideoView() {
        return this.mVideoView;
    }

    public void clearLastFrame(boolean z) {
        if (z) {
            setVisibility(8);
        }
    }

    public void onTouchFocus(int i, int i2) {
        if (this.mGLSurfaceView != null) {
            if (i < 0 || i2 < 0) {
                TXCFocusIndicatorView tXCFocusIndicatorView = this.mFocusIndicatorView;
                if (tXCFocusIndicatorView != null) {
                    tXCFocusIndicatorView.setVisibility(8);
                    return;
                }
                return;
            }
            TXCFocusIndicatorView tXCFocusIndicatorView2 = this.mFocusIndicatorView;
            if (tXCFocusIndicatorView2 == null) {
                this.mFocusIndicatorView = new TXCFocusIndicatorView(getContext());
                this.mFocusIndicatorView.setVisibility(0);
                addView(this.mFocusIndicatorView);
            } else if (indexOfChild(tXCFocusIndicatorView2) != getChildCount() - 1) {
                removeView(this.mFocusIndicatorView);
                addView(this.mFocusIndicatorView);
            }
            Rect touchRect = getTouchRect(i, i2, this.mGLSurfaceView.getWidth(), this.mGLSurfaceView.getHeight(), 1.0f);
            this.mFocusIndicatorView.show(touchRect.left, touchRect.top, touchRect.right - touchRect.left);
        }
    }

    private Rect getTouchRect(int i, int i2, int i3, int i4, float f) {
        TXCGLSurfaceView tXCGLSurfaceView;
        if (this.mFocusAreaSize == 0 && (tXCGLSurfaceView = this.mGLSurfaceView) != null) {
            this.mFocusAreaSize = (int) ((tXCGLSurfaceView.getResources().getDisplayMetrics().density * 70.0f) + 0.5f);
        }
        int intValue = Float.valueOf(((float) this.mFocusAreaSize) * f).intValue();
        int i5 = intValue / 2;
        int clamp = clamp(i - i5, 0, i3 - intValue);
        int clamp2 = clamp(i2 - i5, 0, i4 - intValue);
        return new Rect(clamp, clamp2, clamp + intValue, intValue + clamp2);
    }

    public void disableLog(boolean z) {
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.a(z);
        }
    }

    public void showLog(boolean z) {
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.setShowLevel(z ? 2 : 0);
        }
    }

    public void clearLog() {
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.a();
        }
    }

    public void setLogText(Bundle bundle, Bundle bundle2, int i) {
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.a(bundle, bundle2, i);
        }
    }

    protected void resetLogView() {
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            removeView(tXDashBoard);
            addView(this.mDashBoard);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View, android.view.ViewGroup
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        updateDbMargin();
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.setStatusTextSize((float) (((double) px2dip(getContext(), (float) getWidth())) / 30.0d));
            this.mDashBoard.setEventTextSize((float) (((double) px2dip(getContext(), (float) getWidth())) / 25.0d));
        }
        int i6 = this.mCaptureWidth;
        if (i6 != 0 && (i5 = this.mCaptureHeight) != 0) {
            updateVideoViewSize(i6, i5);
        }
    }

    public void updateVideoViewSize(int i, int i2) {
        int i3;
        FrameLayout.LayoutParams layoutParams;
        View view = this.mGLSurfaceView;
        if (view != null || (view = this.mVideoView) != null) {
            int width = getWidth();
            int height = getHeight();
            if (i2 != 0 && height != 0) {
                this.mCaptureWidth = i;
                this.mCaptureHeight = i2;
                float f = (((float) i) * 1.0f) / ((float) i2);
                float f2 = (float) width;
                float f3 = (float) height;
                int i4 = 0;
                if (f > (1.0f * f2) / f3) {
                    height = (int) (f2 / f);
                    i4 = (getHeight() - height) / 2;
                    i3 = 0;
                } else {
                    width = (int) (f3 * f);
                    i3 = (getWidth() - width) / 2;
                }
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams = (FrameLayout.LayoutParams) layoutParams2;
                    if (layoutParams.width != width || layoutParams.height != height) {
                        layoutParams.width = width;
                        layoutParams.height = height;
                    } else {
                        return;
                    }
                } else {
                    layoutParams = new FrameLayout.LayoutParams(width, height);
                }
                layoutParams.leftMargin = i3;
                layoutParams.topMargin = i4;
                view.setLayoutParams(layoutParams);
            }
        }
    }

    public void setDashBoardStatusInfo(CharSequence charSequence) {
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.a(charSequence);
        }
    }

    public void appendEventInfo(String str) {
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.a(str);
        }
    }

    public void showVideoDebugLog(int i) {
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.setShowLevel(i);
        }
    }

    public void setLogMargin(float f, float f2, float f3, float f4) {
        this.mLeft = f;
        this.mRight = f2;
        this.mTop = f3;
        this.mBottom = f4;
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.a((int) this.mLeft, (int) this.mTop, (int) this.mRight, (int) this.mBottom);
        }
    }

    public void setLogMarginRatio(final float f, final float f2, final float f3, final float f4) {
        getWidth();
        getHeight();
        postDelayed(new Runnable() { // from class: com.tencent.rtmp.ui.TXCloudVideoView.1
            @Override // java.lang.Runnable
            public void run() {
                TXCloudVideoView tXCloudVideoView = TXCloudVideoView.this;
                tXCloudVideoView.mLeft = ((float) tXCloudVideoView.getWidth()) * f;
                TXCloudVideoView tXCloudVideoView2 = TXCloudVideoView.this;
                tXCloudVideoView2.mRight = ((float) tXCloudVideoView2.getWidth()) * f2;
                TXCloudVideoView tXCloudVideoView3 = TXCloudVideoView.this;
                tXCloudVideoView3.mTop = ((float) tXCloudVideoView3.getHeight()) * f3;
                TXCloudVideoView tXCloudVideoView4 = TXCloudVideoView.this;
                tXCloudVideoView4.mBottom = ((float) tXCloudVideoView4.getHeight()) * f4;
                if (TXCloudVideoView.this.mDashBoard != null) {
                    TXCloudVideoView.this.mDashBoard.a((int) TXCloudVideoView.this.mLeft, (int) TXCloudVideoView.this.mTop, (int) TXCloudVideoView.this.mRight, (int) TXCloudVideoView.this.mBottom);
                }
            }
        }, 100);
    }

    public String getUserId() {
        return this.mUserId;
    }

    public void setUserId(String str) {
        this.mUserId = str;
    }

    public static int px2dip(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void updateDbMargin() {
        TXDashBoard tXDashBoard = this.mDashBoard;
        if (tXDashBoard != null) {
            tXDashBoard.a((int) this.mLeft, (int) this.mTop, (int) this.mRight, (int) this.mBottom);
        }
    }

    public void start(boolean z, boolean z2, i iVar) {
        this.mFocus = z;
        this.mZoom = z2;
        if (this.mFocus || this.mZoom) {
            setOnTouchListener(this);
            this.mCapture = iVar;
        }
        TXCGLSurfaceView tXCGLSurfaceView = this.mGLSurfaceView;
        if (tXCGLSurfaceView != null) {
            tXCGLSurfaceView.setVisibility(0);
        }
    }

    public void stop(boolean z) {
        TXCGLSurfaceView tXCGLSurfaceView;
        if (this.mFocus || this.mZoom) {
            setOnTouchListener(null);
        }
        this.mCapture = null;
        if (z && (tXCGLSurfaceView = this.mGLSurfaceView) != null) {
            tXCGLSurfaceView.setVisibility(8);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() == 1 && motionEvent.getAction() == 0) {
            this.mTouchFocusRunnable.a(view);
            this.mTouchFocusRunnable.a(motionEvent);
            postDelayed(this.mTouchFocusRunnable, 100);
        } else if (motionEvent.getPointerCount() > 1 && motionEvent.getAction() == 2) {
            removeCallbacks(this.mTouchFocusRunnable);
            onTouchFocus(-1, -1);
            ScaleGestureDetector scaleGestureDetector = this.mScaleGestureDetector;
            if (scaleGestureDetector != null && this.mZoom) {
                scaleGestureDetector.onTouchEvent(motionEvent);
            }
        }
        if (this.mZoom && motionEvent.getAction() == 0) {
            performClick();
        }
        return this.mZoom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        private View b;
        private MotionEvent c;

        private a() {
            TXCloudVideoView.this = r1;
        }

        public void a(View view) {
            this.b = view;
        }

        public void a(MotionEvent motionEvent) {
            this.c = motionEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TXCloudVideoView.this.mCapture != null && TXCloudVideoView.this.mFocus) {
                TXCloudVideoView.this.mCapture.a(this.c.getX() / ((float) this.b.getWidth()), this.c.getY() / ((float) this.b.getHeight()));
            }
            if (TXCloudVideoView.this.mFocus) {
                TXCloudVideoView.this.onTouchFocus((int) this.c.getX(), (int) this.c.getY());
            }
        }
    }
}
