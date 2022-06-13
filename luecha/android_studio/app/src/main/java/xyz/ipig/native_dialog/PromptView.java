package xyz.ipig.native_dialog;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class PromptView extends ImageView {
    public static final int CUSTOMER_LOADING = 110;
    public static final int PROMPT_AD = 109;
    public static final int PROMPT_ALERT_WARN = 107;
    public static final int PROMPT_CUSTOM = 108;
    public static final int PROMPT_ERROR = 103;
    public static final int PROMPT_INFO = 105;
    public static final int PROMPT_LOADING = 102;
    public static final int PROMPT_NONE = 104;
    public static final int PROMPT_SUCCESS = 101;
    public static final int PROMPT_WARN = 106;
    private static final String TAG = "LOADVIEW";
    private Bitmap adBitmap;
    private ValueAnimator animator;
    private float bottomHeight;
    private Builder builder;
    float buttonH;
    float buttonW;
    private PromptButton[] buttons;
    private int canvasHeight;
    private int canvasWidth;
    private int currentType;
    private float density;
    private Drawable drawableClose;
    private int height;
    private boolean isSheet;
    private Matrix max;
    private Paint paint;
    private PromptDialog promptDialog;
    private RectF roundRect;
    private RectF roundTouchRect;
    private float sheetHeight;
    private Rect textRect;
    private TextPaint tpaint;
    private int transX;
    private int transY;
    private int width;

    public PromptView(Context context) {
        super(context);
        this.buttons = new PromptButton[0];
    }

    public PromptView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.buttons = new PromptButton[0];
    }

    public PromptView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.buttons = new PromptButton[0];
    }

    public PromptView(Activity activity, Builder builder, PromptDialog promptDialog) {
        super(activity);
        this.buttons = new PromptButton[0];
        this.density = getResources().getDisplayMetrics().density;
        this.builder = builder;
        this.promptDialog = promptDialog;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.paint != null) {
            if (this.canvasWidth == 0) {
                this.canvasWidth = getWidth();
                this.canvasHeight = getHeight();
            }
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setColor(this.builder.backColor);
            this.paint.setAlpha(this.builder.backAlpha);
            canvas.drawRect(0.0f, 0.0f, (float) this.canvasWidth, (float) this.canvasHeight, this.paint);
            String[] split = this.builder.text.split("-");
            String str = split[1];
            float f = this.builder.padding * this.density;
            float f2 = this.builder.round * this.density;
            this.paint.reset();
            this.paint.setColor(this.builder.textColor);
            this.paint.setStrokeWidth(this.density * 1.0f);
            this.paint.setTextSize(this.density * this.builder.textSize);
            this.paint.setAntiAlias(true);
            this.paint.getTextBounds(str, 0, str.length(), this.textRect);
            float f3 = f * 2.0f;
            float max = Math.max(this.density * 100.0f, ((float) this.textRect.width()) + f3);
            float height = ((float) this.textRect.height()) + (3.0f * f) + ((float) (this.height * 2));
            float f4 = ((float) (this.canvasHeight / 2)) - (height / 2.0f);
            float f5 = max / 2.0f;
            float f6 = ((float) (this.canvasWidth / 2)) - f5;
            canvas.translate(f6, f4);
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setColor(this.builder.roundColor);
            if (this.roundTouchRect == null) {
                this.roundTouchRect = new RectF();
            }
            this.roundTouchRect.set(f6, f4, f6 + max, f4 + height);
            if (this.roundRect == null) {
                this.roundRect = new RectF(0.0f, 0.0f, max, height);
            }
            this.roundRect.set(0.0f, 0.0f, max, height);
            canvas.drawRoundRect(this.roundRect, f2, f2, this.paint);
            this.paint.reset();
            this.paint.setColor(this.builder.textColor);
            this.paint.setStrokeWidth(this.density * 1.0f);
            this.paint.setTextSize(this.density * this.builder.textSize);
            this.paint.setAntiAlias(true);
            canvas.drawText(split[0], (f5 - ((float) (this.textRect.width() / 2))) + 20.0f, ((((float) (this.height * 2)) + f3) + ((float) this.textRect.height())) - 38.0f, this.paint);
            this.paint.reset();
            this.paint.setColor(this.builder.textColor);
            this.paint.setStrokeWidth(this.density * 1.0f);
            this.paint.setTextSize(this.density * this.builder.textSize);
            this.paint.setAntiAlias(true);
            canvas.drawText(split[1], f5 - ((float) (this.textRect.width() / 2)), (((f3 + ((float) (this.height * 2))) + ((float) this.textRect.height())) - 35.0f) + 50.0f, this.paint);
            canvas.translate(f5 - ((float) this.width), f);
            super.onDraw(canvas);
        }
    }

    private float getFontHeight(TextPaint textPaint) {
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        return fontMetrics.bottom - fontMetrics.top;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setScaleType(ImageView.ScaleType.MATRIX);
        if (this.tpaint == null) {
            this.tpaint = new TextPaint();
            this.paint = new Paint();
        }
        initData();
    }

    private void initData() {
        if (this.textRect == null) {
            this.textRect = new Rect();
        }
        if (this.roundRect == null) {
            this.roundTouchRect = new RectF();
        }
        float f = this.density;
        this.buttonW = 120.0f * f;
        this.buttonH = f * 44.0f;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.adBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.adBitmap = null;
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.animator = null;
        this.buttons = null;
        this.promptDialog.onDetach();
        this.currentType = 104;
    }

    private void start() {
        if (this.max == null || this.animator == null) {
            this.max = new Matrix();
            this.animator = ValueAnimator.ofInt(0, 12);
            this.animator.setDuration(960L);
            this.animator.setInterpolator(new LinearInterpolator());
            this.animator.setRepeatCount(-1);
            this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: xyz.ipig.native_dialog.PromptView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PromptView.this.max.setRotate((float) (((Integer) valueAnimator.getAnimatedValue()).intValue() * 30), (float) PromptView.this.width, (float) PromptView.this.height);
                    PromptView promptView = PromptView.this;
                    promptView.setImageMatrix(promptView.max);
                }
            });
        }
        if (!this.animator.isRunning()) {
            this.animator.start();
        }
    }

    private void endAnimator() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.animator.end();
        }
    }

    public void showLoading() {
        boolean z = false;
        if (this.currentType == 107) {
            if (this.buttons.length > 2) {
                z = true;
            }
            this.isSheet = z;
        } else {
            this.isSheet = false;
        }
        setImageDrawable(getResources().getDrawable(this.builder.icon));
        this.width = getDrawable().getMinimumWidth() / 2;
        this.height = getDrawable().getMinimumHeight() / 2;
        System.out.println(this.width);
        System.out.println(this.height);
        start();
        this.currentType = 102;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Builder getBuilder() {
        return this.builder;
    }

    public void showSomthing(int i) {
        this.currentType = i;
        boolean z = false;
        if (i == 107) {
            if (this.buttons.length > 2) {
                z = true;
            }
            this.isSheet = z;
        } else {
            this.isSheet = false;
        }
        endAnimator();
        setImageDrawable(getResources().getDrawable(this.builder.icon));
        this.width = getDrawable().getMinimumWidth() / 2;
        this.height = getDrawable().getMinimumHeight() / 2;
        Matrix matrix = this.max;
        if (matrix != null) {
            matrix.setRotate(0.0f, (float) this.width, (float) this.height);
            setImageMatrix(this.max);
        }
        if (this.isSheet) {
            this.sheetHeight = ((((float) this.builder.sheetCellPad) * 1.5f) + ((float) (this.builder.sheetCellHeight * this.buttons.length))) * this.density;
            Log.i("LOADVIEW", "showSomthing: " + this.sheetHeight);
            startBottomToTopAnim();
        }
        invalidate();
    }

    private void startBottomToTopAnim() {
        ValueAnimator ofFloat = ObjectAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(300L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: xyz.ipig.native_dialog.PromptView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PromptView promptView = PromptView.this;
                promptView.bottomHeight = promptView.sheetHeight * ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Log.i("LOADVIEW", "onAnimationUpdate: " + PromptView.this.bottomHeight);
                PromptView.this.invalidate();
            }
        });
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showSomthingAlert(PromptButton... promptButtonArr) {
        this.buttons = promptButtonArr;
        showSomthing(107);
    }

    public void setBuilder(Builder builder) {
        if (this.builder != builder) {
            this.builder = builder;
        }
    }

    public int getCurrentType() {
        return this.currentType;
    }

    public void setText(String str) {
        this.builder.text(str);
        invalidate();
    }

    public void dismiss() {
        if (this.isSheet) {
            ValueAnimator ofFloat = ObjectAnimator.ofFloat(1.0f, 0.0f);
            ofFloat.setDuration(300L);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: xyz.ipig.native_dialog.PromptView.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PromptView promptView = PromptView.this;
                    promptView.bottomHeight = promptView.sheetHeight * ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    PromptView.this.invalidate();
                }
            });
            ofFloat.start();
        }
    }

    public void showAd() {
        this.currentType = 109;
        endAnimator();
    }

    public void showCustomLoading() {
        boolean z = false;
        if (this.currentType == 107) {
            if (this.buttons.length > 2) {
                z = true;
            }
            this.isSheet = z;
        } else {
            this.isSheet = false;
        }
        setImageDrawable(getResources().getDrawable(this.builder.icon));
        this.width = getDrawable().getMinimumWidth() / 2;
        this.height = getDrawable().getMinimumHeight() / 2;
        ((AnimationDrawable) getDrawable()).start();
        this.currentType = 110;
    }

    public void stopCustomerLoading() {
        ((AnimationDrawable) getDrawable()).stop();
    }
}
