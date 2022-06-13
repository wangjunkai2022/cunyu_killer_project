.class public Lcom/tencent/rtmp/ui/TXCloudVideoView;
.super Landroid/widget/FrameLayout;
.source "TXCloudVideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp/ui/TXCloudVideoView$a;
    }
.end annotation


# static fields
.field private static final FOCUS_AREA_SIZE_DP:I = 0x46

.field private static final TAG:Ljava/lang/String; = "TXCloudVideoView"


# instance fields
.field private mBottom:F

.field private mCapture:Lcom/tencent/liteav/i;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCurrentScale:I

.field protected mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

.field private mFocus:Z

.field private mFocusAreaSize:I

.field protected mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

.field protected mGLContext:Ljava/lang/Object;

.field protected mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

.field private mLeft:F

.field private mRight:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field protected mSurfaceView:Landroid/view/SurfaceView;

.field private mTop:F

.field private mTouchFocusRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

.field private mUserId:Ljava/lang/String;

.field protected mVideoView:Landroid/view/TextureView;

.field private mZoom:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCaptureWidth:I

    iput p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCaptureHeight:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mLeft:F

    iput v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mRight:F

    iput v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTop:F

    iput v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mBottom:F

    .line 157
    iput p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusAreaSize:I

    const-string v0, ""

    .line 349
    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mUserId:Ljava/lang/String;

    .line 369
    iput-boolean p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocus:Z

    .line 370
    iput-boolean p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mZoom:Z

    const/4 p2, 0x1

    .line 421
    iput p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCurrentScale:I

    const/4 p2, 0x0

    .line 422
    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 423
    new-instance v0, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;

    invoke-direct {v0, p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView$2;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 489
    new-instance v0, Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    invoke-direct {v0, p0, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView$a;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;Lcom/tencent/rtmp/ui/TXCloudVideoView$1;)V

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTouchFocusRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    .line 41
    new-instance p2, Lcom/tencent/rtmp/ui/TXDashBoard;

    invoke-direct {p2, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    .line 42
    new-instance p2, Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/rtmp/ui/TXCloudVideoView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mLeft:F

    return p0
.end method

.method static synthetic access$002(Lcom/tencent/rtmp/ui/TXCloudVideoView;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mLeft:F

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/rtmp/ui/TXCloudVideoView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mRight:F

    return p0
.end method

.method static synthetic access$102(Lcom/tencent/rtmp/ui/TXCloudVideoView;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mRight:F

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/rtmp/ui/TXCloudVideoView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTop:F

    return p0
.end method

.method static synthetic access$202(Lcom/tencent/rtmp/ui/TXCloudVideoView;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTop:F

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/rtmp/ui/TXCloudVideoView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mBottom:F

    return p0
.end method

.method static synthetic access$302(Lcom/tencent/rtmp/ui/TXCloudVideoView;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mBottom:F

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Lcom/tencent/liteav/i;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCapture:Lcom/tencent/liteav/i;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCurrentScale:I

    return p0
.end method

.method static synthetic access$502(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCurrentScale:I

    return p1
.end method

.method static synthetic access$700(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocus:Z

    return p0
.end method

.method private clamp(III)I
    .locals 0

    if-le p1, p3, :cond_0

    return p3

    :cond_0
    if-ge p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method private getTouchRect(IIIIF)Landroid/graphics/Rect;
    .locals 2

    .line 185
    iget v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusAreaSize:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    if-eqz v0, :cond_0

    const/high16 v1, 0x428c0000    # 70.0f

    .line 186
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusAreaSize:I

    .line 188
    :cond_0
    iget v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusAreaSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Float;->intValue()I

    move-result p5

    .line 190
    div-int/lit8 v0, p5, 0x2

    sub-int/2addr p1, v0

    sub-int/2addr p3, p5

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->clamp(III)I

    move-result p1

    sub-int/2addr p2, v0

    sub-int/2addr p4, p5

    .line 191
    invoke-direct {p0, p2, v1, p4}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->clamp(III)I

    move-result p2

    .line 193
    new-instance p3, Landroid/graphics/Rect;

    add-int p4, p1, p5

    add-int/2addr p5, p2

    invoke-direct {p3, p1, p2, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private updateDbMargin()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz v0, :cond_0

    .line 365
    iget v1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mLeft:F

    float-to-int v1, v1

    iget v2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTop:F

    float-to-int v2, v2

    iget v3, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mRight:F

    float-to-int v3, v3

    iget v4, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mBottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/rtmp/ui/TXDashBoard;->a(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addVideoView(Landroid/view/TextureView;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoView:Landroid/view/TextureView;

    .line 88
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->resetLogView()V

    return-void
.end method

.method public addVideoView(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    .line 75
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->resetLogView()V

    return-void
.end method

.method public appendEventInfo(Ljava/lang/String;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearLastFrame(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 154
    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public clearLog()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXDashBoard;->a()V

    :cond_0
    return-void
.end method

.method public disableLog(Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;->a(Z)V

    :cond_0
    return-void
.end method

.method public getGLSurfaceView()Lcom/tencent/liteav/renderer/TXCGLSurfaceView;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    return-object v0
.end method

.method public getHWVideoView()Landroid/view/TextureView;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoView:Landroid/view/TextureView;

    return-object v0
.end method

.method public getOpenGLContext()Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoView()Landroid/view/TextureView;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoView:Landroid/view/TextureView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 247
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 248
    invoke-direct {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->updateDbMargin()V

    .line 249
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->px2dip(Landroid/content/Context;F)I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 p4, 0x403e000000000000L    # 30.0

    div-double/2addr p2, p4

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/ui/TXDashBoard;->setStatusTextSize(F)V

    .line 251
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->px2dip(Landroid/content/Context;F)I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 p4, 0x4039000000000000L    # 25.0

    div-double/2addr p2, p4

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/ui/TXDashBoard;->setEventTextSize(F)V

    .line 253
    :cond_0
    iget p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCaptureWidth:I

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCaptureHeight:I

    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->updateVideoViewSize(II)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTouchFocusRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView$a;->a(Landroid/view/View;)V

    .line 400
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTouchFocusRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView$a;->a(Landroid/view/MotionEvent;)V

    .line 401
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTouchFocusRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 404
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTouchFocusRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, -0x1

    .line 405
    invoke-virtual {p0, p1, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->onTouchFocus(II)V

    .line 407
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mZoom:Z

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 412
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mZoom:Z

    if-eqz p1, :cond_2

    .line 413
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->performClick()Z

    .line 418
    :cond_2
    iget-boolean p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mZoom:Z

    return p1
.end method

.method public onTouchFocus(II)V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_4

    if-gez p2, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    if-nez v0, :cond_2

    .line 170
    new-instance v0, Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    .line 171
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 175
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    .line 176
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addView(Landroid/view/View;)V

    .line 180
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getTouchRect(IIIIF)Landroid/graphics/Rect;

    move-result-object p1

    .line 181
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    invoke-virtual {p2, v0, v1, v2}, Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;->show(III)V

    return-void

    .line 164
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    if-eqz p1, :cond_5

    const/16 p2, 0x8

    .line 165
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public removeFocusIndicatorView()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/liteav/renderer/TXCFocusIndicatorView;

    :cond_0
    return-void
.end method

.method public removeVideoView()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoView:Landroid/view/TextureView;

    const-string v1, "TXCloudVideoView"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove mVideoView Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    iput-object v2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoView:Landroid/view/TextureView;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    if-eqz v0, :cond_1

    .line 104
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove mGLSurfaceView Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_1
    iput-object v2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    .line 110
    :cond_1
    iput-object v2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method protected resetLogView()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setDashBoardStatusInfo(Ljava/lang/CharSequence;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLogMargin(FFFF)V
    .locals 1

    .line 323
    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mLeft:F

    .line 324
    iput p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mRight:F

    .line 325
    iput p3, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTop:F

    .line 326
    iput p4, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mBottom:F

    .line 327
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz p1, :cond_0

    .line 328
    iget p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mLeft:F

    float-to-int p2, p2

    iget p3, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTop:F

    float-to-int p3, p3

    iget p4, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mRight:F

    float-to-int p4, p4

    iget v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mBottom:F

    float-to-int v0, v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/tencent/rtmp/ui/TXDashBoard;->a(IIII)V

    :cond_0
    return-void
.end method

.method public setLogMarginRatio(FFFF)V
    .locals 7

    .line 333
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getWidth()I

    .line 334
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getHeight()I

    .line 335
    new-instance v6, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;FFFF)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v6, p1, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLogText(Landroid/os/Bundle;Landroid/os/Bundle;I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/rtmp/ui/TXDashBoard;->a(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    return-void
.end method

.method public setOpenGLContext(Ljava/lang/Object;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLContext:Ljava/lang/Object;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    return-void
.end method

.method public setRenderRotation(I)V
    .locals 0

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public showLog(Z)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 221
    :goto_0
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;->setShowLevel(I)V

    :cond_1
    return-void
.end method

.method public showVideoDebugLog(I)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/TXDashBoard;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/ui/TXDashBoard;->setShowLevel(I)V

    :cond_0
    return-void
.end method

.method public start(ZZLcom/tencent/liteav/i;)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocus:Z

    .line 374
    iput-boolean p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mZoom:Z

    .line 375
    iget-boolean p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocus:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mZoom:Z

    if-eqz p1, :cond_1

    .line 376
    :cond_0
    invoke-virtual {p0, p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 377
    iput-object p3, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCapture:Lcom/tencent/liteav/i;

    .line 379
    :cond_1
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 380
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public stop(Z)V
    .locals 2

    .line 385
    iget-boolean v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mZoom:Z

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    :cond_1
    iput-object v1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCapture:Lcom/tencent/liteav/i;

    if-eqz p1, :cond_2

    .line 390
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 391
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updateVideoViewSize(II)V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLSurfaceView:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_5

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getWidth()I

    move-result v1

    .line 270
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getHeight()I

    move-result v2

    if-eqz p2, :cond_5

    if-nez v2, :cond_1

    goto :goto_3

    .line 274
    :cond_1
    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCaptureWidth:I

    .line 275
    iput p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCaptureHeight:I

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v1

    mul-float/2addr v3, p2

    int-to-float v4, v2

    div-float/2addr v3, v4

    cmpl-float v3, p1, v3

    const/4 v5, 0x0

    if-lez v3, :cond_2

    div-float/2addr p2, p1

    float-to-int v2, p2

    .line 281
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getHeight()I

    move-result p1

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    move v6, v5

    move v5, p1

    move p1, v6

    goto :goto_1

    :cond_2
    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 284
    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getWidth()I

    move-result p1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    .line 287
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 289
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 290
    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_3

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v2, :cond_3

    return-void

    .line 294
    :cond_3
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 295
    iput v2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 297
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 299
    :goto_2
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 300
    iput v5, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 301
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_3
    return-void
.end method
