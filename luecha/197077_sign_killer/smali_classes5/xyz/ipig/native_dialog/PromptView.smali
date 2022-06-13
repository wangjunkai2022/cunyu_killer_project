.class Lxyz/ipig/native_dialog/PromptView;
.super Landroid/widget/ImageView;
.source "PromptView.java"


# static fields
.field public static final CUSTOMER_LOADING:I = 0x6e

.field public static final PROMPT_AD:I = 0x6d

.field public static final PROMPT_ALERT_WARN:I = 0x6b

.field public static final PROMPT_CUSTOM:I = 0x6c

.field public static final PROMPT_ERROR:I = 0x67

.field public static final PROMPT_INFO:I = 0x69

.field public static final PROMPT_LOADING:I = 0x66

.field public static final PROMPT_NONE:I = 0x68

.field public static final PROMPT_SUCCESS:I = 0x65

.field public static final PROMPT_WARN:I = 0x6a

.field private static final TAG:Ljava/lang/String; = "LOADVIEW"


# instance fields
.field private adBitmap:Landroid/graphics/Bitmap;

.field private animator:Landroid/animation/ValueAnimator;

.field private bottomHeight:F

.field private builder:Lxyz/ipig/native_dialog/Builder;

.field buttonH:F

.field buttonW:F

.field private buttons:[Lxyz/ipig/native_dialog/PromptButton;

.field private canvasHeight:I

.field private canvasWidth:I

.field private currentType:I

.field private density:F

.field private drawableClose:Landroid/graphics/drawable/Drawable;

.field private height:I

.field private isSheet:Z

.field private max:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private promptDialog:Lxyz/ipig/native_dialog/PromptDialog;

.field private roundRect:Landroid/graphics/RectF;

.field private roundTouchRect:Landroid/graphics/RectF;

.field private sheetHeight:F

.field private textRect:Landroid/graphics/Rect;

.field private tpaint:Landroid/text/TextPaint;

.field private transX:I

.field private transY:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lxyz/ipig/native_dialog/Builder;Lxyz/ipig/native_dialog/PromptDialog;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lxyz/ipig/native_dialog/PromptButton;

    .line 65
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    .line 96
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lxyz/ipig/native_dialog/PromptView;->density:F

    .line 98
    iput-object p2, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    .line 99
    iput-object p3, p0, Lxyz/ipig/native_dialog/PromptView;->promptDialog:Lxyz/ipig/native_dialog/PromptDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lxyz/ipig/native_dialog/PromptButton;

    .line 65
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lxyz/ipig/native_dialog/PromptButton;

    .line 65
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Lxyz/ipig/native_dialog/PromptButton;

    .line 65
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    return-void
.end method

.method static synthetic access$000(Lxyz/ipig/native_dialog/PromptView;)I
    .locals 0

    .line 40
    iget p0, p0, Lxyz/ipig/native_dialog/PromptView;->width:I

    return p0
.end method

.method static synthetic access$100(Lxyz/ipig/native_dialog/PromptView;)I
    .locals 0

    .line 40
    iget p0, p0, Lxyz/ipig/native_dialog/PromptView;->height:I

    return p0
.end method

.method static synthetic access$200(Lxyz/ipig/native_dialog/PromptView;)Landroid/graphics/Matrix;
    .locals 0

    .line 40
    iget-object p0, p0, Lxyz/ipig/native_dialog/PromptView;->max:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$300(Lxyz/ipig/native_dialog/PromptView;)F
    .locals 0

    .line 40
    iget p0, p0, Lxyz/ipig/native_dialog/PromptView;->bottomHeight:F

    return p0
.end method

.method static synthetic access$302(Lxyz/ipig/native_dialog/PromptView;F)F
    .locals 0

    .line 40
    iput p1, p0, Lxyz/ipig/native_dialog/PromptView;->bottomHeight:F

    return p1
.end method

.method static synthetic access$400(Lxyz/ipig/native_dialog/PromptView;)F
    .locals 0

    .line 40
    iget p0, p0, Lxyz/ipig/native_dialog/PromptView;->sheetHeight:F

    return p0
.end method

.method private endAnimator()V
    .locals 1

    .line 270
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method private getFontHeight(Landroid/text/TextPaint;)F
    .locals 1

    .line 189
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 190
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p1

    return v0
.end method

.method private initData()V
    .locals 2

    .line 206
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->textRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->textRect:Landroid/graphics/Rect;

    .line 208
    :cond_0
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->roundRect:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->roundTouchRect:Landroid/graphics/RectF;

    .line 211
    :cond_1
    iget v0, p0, Lxyz/ipig/native_dialog/PromptView;->density:F

    const/high16 v1, 0x42f00000    # 120.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lxyz/ipig/native_dialog/PromptView;->buttonW:F

    const/high16 v1, 0x42300000    # 44.0f

    mul-float/2addr v0, v1

    .line 212
    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->buttonH:F

    return-void
.end method

.method private start()V
    .locals 3

    .line 243
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->max:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 244
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->max:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 245
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    .line 246
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3c0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 249
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lxyz/ipig/native_dialog/PromptView$1;

    invoke-direct {v1, p0}, Lxyz/ipig/native_dialog/PromptView$1;-><init>(Lxyz/ipig/native_dialog/PromptView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 258
    :cond_1
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0xc
    .end array-data
.end method

.method private startBottomToTopAnim()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 328
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 331
    new-instance v1, Lxyz/ipig/native_dialog/PromptView$2;

    invoke-direct {v1, p0}, Lxyz/ipig/native_dialog/PromptView$2;-><init>(Lxyz/ipig/native_dialog/PromptView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 340
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 369
    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptView;->isSheet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 371
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    new-instance v1, Lxyz/ipig/native_dialog/PromptView$3;

    invoke-direct {v1, p0}, Lxyz/ipig/native_dialog/PromptView$3;-><init>(Lxyz/ipig/native_dialog/PromptView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 381
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method getBuilder()Lxyz/ipig/native_dialog/Builder;
    .locals 1

    .line 295
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    return-object v0
.end method

.method public getCurrentType()I
    .locals 1

    .line 356
    iget v0, p0, Lxyz/ipig/native_dialog/PromptView;->currentType:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 195
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 196
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lxyz/ipig/native_dialog/PromptView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->tpaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->tpaint:Landroid/text/TextPaint;

    .line 200
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    .line 202
    :cond_0
    invoke-direct {p0}, Lxyz/ipig/native_dialog/PromptView;->initData()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 217
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 219
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->adBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->adBitmap:Landroid/graphics/Bitmap;

    .line 224
    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 226
    :cond_1
    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->animator:Landroid/animation/ValueAnimator;

    .line 227
    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    .line 230
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->promptDialog:Lxyz/ipig/native_dialog/PromptDialog;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptDialog;->onDetach()V

    const/16 v0, 0x68

    .line 232
    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->currentType:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 107
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    return-void

    .line 108
    :cond_0
    iget v1, v0, Lxyz/ipig/native_dialog/PromptView;->canvasWidth:I

    if-nez v1, :cond_1

    .line 109
    invoke-virtual/range {p0 .. p0}, Lxyz/ipig/native_dialog/PromptView;->getWidth()I

    move-result v1

    iput v1, v0, Lxyz/ipig/native_dialog/PromptView;->canvasWidth:I

    .line 110
    invoke-virtual/range {p0 .. p0}, Lxyz/ipig/native_dialog/PromptView;->getHeight()I

    move-result v1

    iput v1, v0, Lxyz/ipig/native_dialog/PromptView;->canvasHeight:I

    .line 113
    :cond_1
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 114
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v2, v2, Lxyz/ipig/native_dialog/Builder;->backColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v2, v2, Lxyz/ipig/native_dialog/Builder;->backAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    iget v1, v0, Lxyz/ipig/native_dialog/PromptView;->canvasWidth:I

    int-to-float v4, v1

    iget v1, v0, Lxyz/ipig/native_dialog/PromptView;->canvasHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget-object v1, v1, Lxyz/ipig/native_dialog/Builder;->text:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    aget-object v2, v1, v8

    .line 122
    iget-object v3, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v3, v3, Lxyz/ipig/native_dialog/Builder;->padding:F

    iget v4, v0, Lxyz/ipig/native_dialog/PromptView;->density:F

    mul-float/2addr v3, v4

    .line 123
    iget-object v4, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v4, v4, Lxyz/ipig/native_dialog/Builder;->round:F

    iget v5, v0, Lxyz/ipig/native_dialog/PromptView;->density:F

    mul-float/2addr v4, v5

    .line 124
    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    .line 125
    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget-object v6, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v6, v6, Lxyz/ipig/native_dialog/Builder;->textColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget v6, v0, Lxyz/ipig/native_dialog/PromptView;->density:F

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget v6, v0, Lxyz/ipig/native_dialog/PromptView;->density:F

    iget-object v10, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v10, v10, Lxyz/ipig/native_dialog/Builder;->textSize:F

    mul-float/2addr v6, v10

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v10, v0, Lxyz/ipig/native_dialog/PromptView;->textRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v5, v2, v11, v6, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v2, 0x42c80000    # 100.0f

    .line 135
    iget v5, v0, Lxyz/ipig/native_dialog/PromptView;->density:F

    mul-float/2addr v5, v2

    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v10, v3, v6

    add-float/2addr v2, v10

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 136
    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v12, 0x40400000    # 3.0f

    mul-float/2addr v12, v3

    add-float/2addr v5, v12

    iget v12, v0, Lxyz/ipig/native_dialog/PromptView;->height:I

    mul-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v5, v12

    .line 140
    iget v12, v0, Lxyz/ipig/native_dialog/PromptView;->canvasHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    div-float v13, v5, v6

    sub-float/2addr v12, v13

    .line 141
    iget v13, v0, Lxyz/ipig/native_dialog/PromptView;->canvasWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    div-float v6, v2, v6

    sub-float/2addr v13, v6

    .line 143
    invoke-virtual {v7, v13, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    iget-object v14, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->reset()V

    .line 148
    iget-object v14, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v14, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget-object v15, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v15, v15, Lxyz/ipig/native_dialog/Builder;->roundColor:I

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v14, v0, Lxyz/ipig/native_dialog/PromptView;->roundTouchRect:Landroid/graphics/RectF;

    if-nez v14, :cond_2

    .line 152
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    iput-object v14, v0, Lxyz/ipig/native_dialog/PromptView;->roundTouchRect:Landroid/graphics/RectF;

    .line 153
    :cond_2
    iget-object v14, v0, Lxyz/ipig/native_dialog/PromptView;->roundTouchRect:Landroid/graphics/RectF;

    add-float v15, v13, v2

    add-float v11, v12, v5

    invoke-virtual {v14, v13, v12, v15, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 154
    iget-object v11, v0, Lxyz/ipig/native_dialog/PromptView;->roundRect:Landroid/graphics/RectF;

    const/4 v12, 0x0

    if-nez v11, :cond_3

    .line 155
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v12, v12, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v11, v0, Lxyz/ipig/native_dialog/PromptView;->roundRect:Landroid/graphics/RectF;

    .line 156
    :cond_3
    iget-object v11, v0, Lxyz/ipig/native_dialog/PromptView;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v12, v12, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 157
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->roundRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 160
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 161
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget-object v4, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v4, v4, Lxyz/ipig/native_dialog/Builder;->textColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lxyz/ipig/native_dialog/PromptView;->density:F

    mul-float/2addr v4, v9

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lxyz/ipig/native_dialog/PromptView;->density:F

    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v5, v5, Lxyz/ipig/native_dialog/Builder;->textSize:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 164
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget v2, v0, Lxyz/ipig/native_dialog/PromptView;->height:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v10

    iget-object v4, v0, Lxyz/ipig/native_dialog/PromptView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    const/high16 v4, 0x42180000    # 38.0f

    sub-float/2addr v2, v4

    .line 168
    iget-object v4, v0, Lxyz/ipig/native_dialog/PromptView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v6, v4

    const/4 v5, 0x0

    .line 169
    aget-object v5, v1, v5

    const/high16 v11, 0x41a00000    # 20.0f

    add-float/2addr v4, v11

    iget-object v11, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v4, v2, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 172
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget-object v4, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v4, v4, Lxyz/ipig/native_dialog/Builder;->textColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lxyz/ipig/native_dialog/PromptView;->density:F

    mul-float/2addr v4, v9

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lxyz/ipig/native_dialog/PromptView;->density:F

    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v5, v5, Lxyz/ipig/native_dialog/Builder;->textSize:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget v2, v0, Lxyz/ipig/native_dialog/PromptView;->height:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v10, v2

    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    const/high16 v2, 0x420c0000    # 35.0f

    sub-float/2addr v10, v2

    .line 178
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v6, v2

    .line 179
    aget-object v1, v1, v8

    const/high16 v4, 0x42480000    # 50.0f

    add-float/2addr v10, v4

    iget-object v4, v0, Lxyz/ipig/native_dialog/PromptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    iget v1, v0, Lxyz/ipig/native_dialog/PromptView;->width:I

    int-to-float v1, v1

    sub-float/2addr v6, v1

    invoke-virtual {v7, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBuilder(Lxyz/ipig/native_dialog/Builder;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    if-eq v0, p1, :cond_0

    .line 352
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    invoke-virtual {v0, p1}, Lxyz/ipig/native_dialog/Builder;->text(Ljava/lang/String;)Lxyz/ipig/native_dialog/Builder;

    .line 361
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->invalidate()V

    return-void
.end method

.method public showAd()V
    .locals 1

    const/16 v0, 0x6d

    .line 387
    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->currentType:I

    .line 388
    invoke-direct {p0}, Lxyz/ipig/native_dialog/PromptView;->endAnimator()V

    return-void
.end method

.method public showCustomLoading()V
    .locals 4

    .line 395
    iget v0, p0, Lxyz/ipig/native_dialog/PromptView;->currentType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_1

    .line 396
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    array-length v0, v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lxyz/ipig/native_dialog/PromptView;->isSheet:Z

    goto :goto_0

    .line 398
    :cond_1
    iput-boolean v1, p0, Lxyz/ipig/native_dialog/PromptView;->isSheet:Z

    .line 400
    :goto_0
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v1, v1, Lxyz/ipig/native_dialog/Builder;->icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxyz/ipig/native_dialog/PromptView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    div-int/2addr v0, v2

    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->width:I

    .line 402
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    div-int/2addr v0, v2

    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->height:I

    .line 403
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 404
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/16 v0, 0x6e

    .line 405
    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->currentType:I

    return-void
.end method

.method public showLoading()V
    .locals 4

    .line 279
    iget v0, p0, Lxyz/ipig/native_dialog/PromptView;->currentType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_1

    .line 280
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    array-length v0, v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lxyz/ipig/native_dialog/PromptView;->isSheet:Z

    goto :goto_0

    .line 282
    :cond_1
    iput-boolean v1, p0, Lxyz/ipig/native_dialog/PromptView;->isSheet:Z

    .line 284
    :goto_0
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v1, v1, Lxyz/ipig/native_dialog/Builder;->icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxyz/ipig/native_dialog/PromptView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    div-int/2addr v0, v2

    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->width:I

    .line 286
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    div-int/2addr v0, v2

    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->height:I

    .line 287
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lxyz/ipig/native_dialog/PromptView;->width:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 288
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lxyz/ipig/native_dialog/PromptView;->height:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 289
    invoke-direct {p0}, Lxyz/ipig/native_dialog/PromptView;->start()V

    const/16 v0, 0x66

    .line 290
    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->currentType:I

    return-void
.end method

.method public showSomthing(I)V
    .locals 3

    .line 299
    iput p1, p0, Lxyz/ipig/native_dialog/PromptView;->currentType:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x6b

    if-ne p1, v2, :cond_1

    .line 301
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    array-length p1, p1

    if-le p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lxyz/ipig/native_dialog/PromptView;->isSheet:Z

    goto :goto_0

    .line 303
    :cond_1
    iput-boolean v0, p0, Lxyz/ipig/native_dialog/PromptView;->isSheet:Z

    .line 305
    :goto_0
    invoke-direct {p0}, Lxyz/ipig/native_dialog/PromptView;->endAnimator()V

    .line 306
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v0, v0, Lxyz/ipig/native_dialog/Builder;->icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxyz/ipig/native_dialog/PromptView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lxyz/ipig/native_dialog/PromptView;->width:I

    .line 308
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lxyz/ipig/native_dialog/PromptView;->height:I

    .line 310
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->max:Landroid/graphics/Matrix;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 311
    iget v1, p0, Lxyz/ipig/native_dialog/PromptView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lxyz/ipig/native_dialog/PromptView;->height:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 312
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->max:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lxyz/ipig/native_dialog/PromptView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 315
    :cond_2
    iget-boolean p1, p0, Lxyz/ipig/native_dialog/PromptView;->isSheet:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 317
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget v0, v0, Lxyz/ipig/native_dialog/Builder;->sheetCellPad:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->builder:Lxyz/ipig/native_dialog/Builder;

    iget p1, p1, Lxyz/ipig/native_dialog/Builder;->sheetCellHeight:I

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    array-length v1, v1

    mul-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lxyz/ipig/native_dialog/PromptView;->density:F

    mul-float/2addr v0, p1

    iput v0, p0, Lxyz/ipig/native_dialog/PromptView;->sheetHeight:F

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showSomthing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lxyz/ipig/native_dialog/PromptView;->sheetHeight:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADVIEW"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lxyz/ipig/native_dialog/PromptView;->startBottomToTopAnim()V

    .line 321
    :cond_3
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->invalidate()V

    return-void
.end method

.method varargs showSomthingAlert([Lxyz/ipig/native_dialog/PromptButton;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptView;->buttons:[Lxyz/ipig/native_dialog/PromptButton;

    const/16 p1, 0x6b

    .line 346
    invoke-virtual {p0, p1}, Lxyz/ipig/native_dialog/PromptView;->showSomthing(I)V

    return-void
.end method

.method public stopCustomerLoading()V
    .locals 1

    .line 412
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 413
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method
