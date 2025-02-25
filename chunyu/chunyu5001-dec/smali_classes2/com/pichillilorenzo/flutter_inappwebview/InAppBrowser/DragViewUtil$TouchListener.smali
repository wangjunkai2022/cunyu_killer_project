.class Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;
.super Ljava/lang/Object;
.source "DragViewUtil.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchListener"
.end annotation


# instance fields
.field private delay:J

.field private downTime:J

.field private downX:F

.field private downY:F

.field private flagSeed:J

.field private limitBottom:I

.field private limitLeft:I

.field private limitRight:I

.field private limitTop:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->flagSeed:J

    return-void
.end method

.method private constructor <init>(J)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->flagSeed:J

    .line 46
    iput-wide p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->delay:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;-><init>(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->flagSeed:J

    return-wide v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->downTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->delay:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_7

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->downX:F

    sub-float/2addr v0, v2

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->downY:F

    sub-float/2addr p2, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_7

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_7

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    float-to-int v4, v4

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    float-to-int v5, v5

    .line 67
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->access$100()I

    move-result v6

    iput v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->limitLeft:I

    .line 68
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->access$100()I

    move-result v6

    iput v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->limitTop:I

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->access$100()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->limitRight:I

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->access$100()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->limitBottom:I

    .line 73
    iget v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->limitLeft:I

    if-ge v2, v6, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v3, v6, v2

    move v2, v6

    .line 78
    :cond_1
    iget v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->limitTop:I

    if-ge v4, v6, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v5, v6, v4

    move v4, v6

    .line 83
    :cond_2
    iget v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->limitRight:I

    if-le v3, v6, :cond_3

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int v2, v6, v2

    move v3, v6

    .line 88
    :cond_3
    iget v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->limitBottom:I

    if-le v5, v6, :cond_4

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, v6, v4

    move v5, v6

    .line 94
    :cond_4
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    cmpl-float p2, p2, v2

    if-lez p2, :cond_7

    .line 102
    :cond_5
    iget-wide v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->flagSeed:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->flagSeed:J

    .line 103
    iget-wide v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->flagSeed:J

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 106
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->access$300()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener$1;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;JLandroid/view/View;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 53
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->downX:F

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->downY:F

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->downTime:J

    :cond_7
    :goto_0
    return v1
.end method
