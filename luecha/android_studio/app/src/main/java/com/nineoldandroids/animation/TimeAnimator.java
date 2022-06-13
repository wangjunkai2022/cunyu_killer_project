package com.nineoldandroids.animation;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TimeAnimator extends ValueAnimator {
    private TimeListener mListener;
    private long mPreviousTime = -1;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface TimeListener {
        void onTimeUpdate(TimeAnimator timeAnimator, long j, long j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.nineoldandroids.animation.ValueAnimator
    public void animateValue(float f) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.nineoldandroids.animation.ValueAnimator
    public void initAnimation() {
    }

    @Override // com.nineoldandroids.animation.ValueAnimator
    boolean animationFrame(long j) {
        long j2 = 0;
        if (this.mPlayingState == 0) {
            this.mPlayingState = 1;
            if (this.mSeekTime < 0) {
                this.mStartTime = j;
            } else {
                this.mStartTime = j - this.mSeekTime;
                this.mSeekTime = -1;
            }
        }
        if (this.mListener == null) {
            return false;
        }
        long j3 = j - this.mStartTime;
        long j4 = this.mPreviousTime;
        if (j4 >= 0) {
            j2 = j - j4;
        }
        this.mPreviousTime = j;
        this.mListener.onTimeUpdate(this, j3, j2);
        return false;
    }

    public void setTimeListener(TimeListener timeListener) {
        this.mListener = timeListener;
    }
}
