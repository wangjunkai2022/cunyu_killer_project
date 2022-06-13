package com.facebook.imagepipeline.animated.impl;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.SystemClock;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.facebook.common.logging.FLog;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableCachingBackend;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics;
import com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil;

/* loaded from: classes4.dex */
public class AnimatedDrawableDiagnosticsImpl implements AnimatedDrawableDiagnostics {
    private static final Class<?> TAG = AnimatedDrawableDiagnostics.class;
    private AnimatedDrawableCachingBackend mAnimatedDrawableBackend;
    private final AnimatedDrawableUtil mAnimatedDrawableUtil;
    private final DisplayMetrics mDisplayMetrics;
    private long mLastTimeStamp;
    private final RollingStat mDroppedFramesStat = new RollingStat();
    private final RollingStat mDrawnFrames = new RollingStat();
    private final StringBuilder sbTemp = new StringBuilder();
    private final TextPaint mDebugTextPaint = new TextPaint();

    public AnimatedDrawableDiagnosticsImpl(AnimatedDrawableUtil animatedDrawableUtil, DisplayMetrics displayMetrics) {
        this.mAnimatedDrawableUtil = animatedDrawableUtil;
        this.mDisplayMetrics = displayMetrics;
        this.mDebugTextPaint.setColor(-16776961);
        this.mDebugTextPaint.setTextSize((float) convertDpToPx(14));
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void setBackend(AnimatedDrawableCachingBackend animatedDrawableCachingBackend) {
        this.mAnimatedDrawableBackend = animatedDrawableCachingBackend;
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void onStartMethodBegin() {
        this.mLastTimeStamp = SystemClock.uptimeMillis();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void onStartMethodEnd() {
        long uptimeMillis = SystemClock.uptimeMillis() - this.mLastTimeStamp;
        if (uptimeMillis > 3) {
            FLog.v(TAG, "onStart took %d", Long.valueOf(uptimeMillis));
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void onNextFrameMethodBegin() {
        this.mLastTimeStamp = SystemClock.uptimeMillis();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void onNextFrameMethodEnd() {
        long uptimeMillis = SystemClock.uptimeMillis() - this.mLastTimeStamp;
        if (uptimeMillis > 3) {
            FLog.v(TAG, "onNextFrame took %d", Long.valueOf(uptimeMillis));
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void incrementDroppedFrames(int i) {
        this.mDroppedFramesStat.incrementStats(i);
        if (i > 0) {
            FLog.v(TAG, "Dropped %d frames", Integer.valueOf(i));
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void incrementDrawnFrames(int i) {
        this.mDrawnFrames.incrementStats(i);
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void onDrawMethodBegin() {
        this.mLastTimeStamp = SystemClock.uptimeMillis();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void onDrawMethodEnd() {
        FLog.v(TAG, "draw took %d", Long.valueOf(SystemClock.uptimeMillis() - this.mLastTimeStamp));
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableDiagnostics
    public void drawDebugOverlay(Canvas canvas, Rect rect) {
        int i;
        int sum = this.mDroppedFramesStat.getSum(10);
        int sum2 = this.mDrawnFrames.getSum(10);
        int i2 = sum + sum2;
        int convertDpToPx = convertDpToPx(10);
        int convertDpToPx2 = convertDpToPx(20);
        int convertDpToPx3 = convertDpToPx(5);
        if (i2 > 0) {
            this.sbTemp.setLength(0);
            this.sbTemp.append((sum2 * 100) / i2);
            this.sbTemp.append("%");
            StringBuilder sb = this.sbTemp;
            float f = (float) convertDpToPx;
            canvas.drawText(sb, 0, sb.length(), f, (float) convertDpToPx2, this.mDebugTextPaint);
            TextPaint textPaint = this.mDebugTextPaint;
            StringBuilder sb2 = this.sbTemp;
            i = ((int) (f + textPaint.measureText(sb2, 0, sb2.length()))) + convertDpToPx3;
        } else {
            i = convertDpToPx;
        }
        int memoryUsage = this.mAnimatedDrawableBackend.getMemoryUsage();
        this.sbTemp.setLength(0);
        this.mAnimatedDrawableUtil.appendMemoryString(this.sbTemp, memoryUsage);
        TextPaint textPaint2 = this.mDebugTextPaint;
        StringBuilder sb3 = this.sbTemp;
        float measureText = textPaint2.measureText(sb3, 0, sb3.length());
        if (((float) i) + measureText > ((float) rect.width())) {
            convertDpToPx2 = (int) (((float) convertDpToPx2) + this.mDebugTextPaint.getTextSize() + ((float) convertDpToPx3));
            i = convertDpToPx;
        }
        StringBuilder sb4 = this.sbTemp;
        float f2 = (float) i;
        float f3 = (float) convertDpToPx2;
        canvas.drawText(sb4, 0, sb4.length(), f2, f3, this.mDebugTextPaint);
        int i3 = ((int) (f2 + measureText)) + convertDpToPx3;
        this.sbTemp.setLength(0);
        this.mAnimatedDrawableBackend.appendDebugOptionString(this.sbTemp);
        TextPaint textPaint3 = this.mDebugTextPaint;
        StringBuilder sb5 = this.sbTemp;
        if (((float) i3) + textPaint3.measureText(sb5, 0, sb5.length()) > ((float) rect.width())) {
            convertDpToPx2 = (int) (f3 + this.mDebugTextPaint.getTextSize() + ((float) convertDpToPx3));
            i3 = convertDpToPx;
        }
        StringBuilder sb6 = this.sbTemp;
        canvas.drawText(sb6, 0, sb6.length(), (float) i3, (float) convertDpToPx2, this.mDebugTextPaint);
    }

    private int convertDpToPx(int i) {
        return (int) TypedValue.applyDimension(1, (float) i, this.mDisplayMetrics);
    }
}
