package cn.pedant.SweetAlert;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* loaded from: classes4.dex */
public class SuccessTickView extends View {
    private boolean mLeftRectGrowMode;
    private float mLeftRectWidth;
    private float mMaxLeftRectWidth;
    private Paint mPaint;
    private float mRightRectWidth;
    private float mDensity = -1.0f;
    private final float CONST_RADIUS = dip2px(1.2f);
    private final float CONST_RECT_WEIGHT = dip2px(3.0f);
    private final float CONST_LEFT_RECT_W = dip2px(15.0f);
    private final float CONST_RIGHT_RECT_W = dip2px(25.0f);
    private final float MIN_LEFT_RECT_W = dip2px(3.3f);
    private final float MAX_RIGHT_RECT_W = this.CONST_RIGHT_RECT_W + dip2px(6.7f);

    public SuccessTickView(Context context) {
        super(context);
        init();
    }

    public SuccessTickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        this.mPaint = new Paint();
        this.mPaint.setColor(getResources().getColor(R.color.success_stroke_color));
        this.mLeftRectWidth = this.CONST_LEFT_RECT_W;
        this.mRightRectWidth = this.CONST_RIGHT_RECT_W;
        this.mLeftRectGrowMode = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        canvas.rotate(45.0f, (float) (width / 2), (float) (height / 2));
        int i = (int) (((double) height) / 1.4d);
        float f = (float) ((int) (((double) width) / 1.2d));
        this.mMaxLeftRectWidth = (((this.CONST_LEFT_RECT_W + f) / 2.0f) + this.CONST_RECT_WEIGHT) - 1.0f;
        RectF rectF = new RectF();
        if (this.mLeftRectGrowMode) {
            rectF.left = 0.0f;
            rectF.right = rectF.left + this.mLeftRectWidth;
            rectF.top = (((float) i) + this.CONST_RIGHT_RECT_W) / 2.0f;
            rectF.bottom = rectF.top + this.CONST_RECT_WEIGHT;
        } else {
            rectF.right = (((this.CONST_LEFT_RECT_W + f) / 2.0f) + this.CONST_RECT_WEIGHT) - 1.0f;
            rectF.left = rectF.right - this.mLeftRectWidth;
            rectF.top = (((float) i) + this.CONST_RIGHT_RECT_W) / 2.0f;
            rectF.bottom = rectF.top + this.CONST_RECT_WEIGHT;
        }
        float f2 = this.CONST_RADIUS;
        canvas.drawRoundRect(rectF, f2, f2, this.mPaint);
        RectF rectF2 = new RectF();
        rectF2.bottom = (((((float) i) + this.CONST_RIGHT_RECT_W) / 2.0f) + this.CONST_RECT_WEIGHT) - 1.0f;
        rectF2.left = (f + this.CONST_LEFT_RECT_W) / 2.0f;
        rectF2.right = rectF2.left + this.CONST_RECT_WEIGHT;
        rectF2.top = rectF2.bottom - this.mRightRectWidth;
        float f3 = this.CONST_RADIUS;
        canvas.drawRoundRect(rectF2, f3, f3, this.mPaint);
    }

    public float dip2px(float f) {
        if (this.mDensity == -1.0f) {
            this.mDensity = getResources().getDisplayMetrics().density;
        }
        return (f * this.mDensity) + 0.5f;
    }

    public void startTickAnim() {
        this.mLeftRectWidth = 0.0f;
        this.mRightRectWidth = 0.0f;
        invalidate();
        AnonymousClass1 r0 = new Animation() { // from class: cn.pedant.SweetAlert.SuccessTickView.1
            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                super.applyTransformation(f, transformation);
                double d = (double) f;
                if (0.54d < d && 0.7d >= d) {
                    SuccessTickView.this.mLeftRectGrowMode = true;
                    SuccessTickView successTickView = SuccessTickView.this;
                    successTickView.mLeftRectWidth = successTickView.mMaxLeftRectWidth * ((f - 0.54f) / 0.16f);
                    if (0.65d < d) {
                        SuccessTickView successTickView2 = SuccessTickView.this;
                        successTickView2.mRightRectWidth = successTickView2.MAX_RIGHT_RECT_W * ((f - 0.65f) / 0.19f);
                    }
                    SuccessTickView.this.invalidate();
                } else if (0.7d < d && 0.84d >= d) {
                    SuccessTickView.this.mLeftRectGrowMode = false;
                    SuccessTickView successTickView3 = SuccessTickView.this;
                    successTickView3.mLeftRectWidth = successTickView3.mMaxLeftRectWidth * (1.0f - ((f - 0.7f) / 0.14f));
                    SuccessTickView successTickView4 = SuccessTickView.this;
                    successTickView4.mLeftRectWidth = successTickView4.mLeftRectWidth < SuccessTickView.this.MIN_LEFT_RECT_W ? SuccessTickView.this.MIN_LEFT_RECT_W : SuccessTickView.this.mLeftRectWidth;
                    SuccessTickView successTickView5 = SuccessTickView.this;
                    successTickView5.mRightRectWidth = successTickView5.MAX_RIGHT_RECT_W * ((f - 0.65f) / 0.19f);
                    SuccessTickView.this.invalidate();
                } else if (0.84d < d && 1.0f >= f) {
                    SuccessTickView.this.mLeftRectGrowMode = false;
                    SuccessTickView successTickView6 = SuccessTickView.this;
                    float f2 = (f - 0.84f) / 0.16f;
                    successTickView6.mLeftRectWidth = successTickView6.MIN_LEFT_RECT_W + ((SuccessTickView.this.CONST_LEFT_RECT_W - SuccessTickView.this.MIN_LEFT_RECT_W) * f2);
                    SuccessTickView successTickView7 = SuccessTickView.this;
                    successTickView7.mRightRectWidth = successTickView7.CONST_RIGHT_RECT_W + ((SuccessTickView.this.MAX_RIGHT_RECT_W - SuccessTickView.this.CONST_RIGHT_RECT_W) * (1.0f - f2));
                    SuccessTickView.this.invalidate();
                }
            }
        };
        r0.setDuration(750);
        r0.setStartOffset(100);
        startAnimation(r0);
    }
}
