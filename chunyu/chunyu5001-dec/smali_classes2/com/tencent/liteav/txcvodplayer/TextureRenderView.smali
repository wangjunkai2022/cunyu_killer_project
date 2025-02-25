.class public Lcom/tencent/liteav/txcvodplayer/TextureRenderView;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;,
        Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureRenderView"


# instance fields
.field private mMeasureHelper:Lcom/tencent/liteav/txcvodplayer/b;

.field private mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0

    .line 69
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/b;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/txcvodplayer/b;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mMeasureHelper:Lcom/tencent/liteav/txcvodplayer/b;

    .line 70
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;-><init>(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    .line 71
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    return-void
.end method

.method public getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/a$b;
    .locals 3

    .line 143
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a(Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/d;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 98
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a()V

    .line 88
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 399
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 400
    const-class v0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 405
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 406
    const-class v0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mMeasureHelper:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->c(II)V

    .line 135
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mMeasureHelper:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b;->a()I

    move-result p1

    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mMeasureHelper:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {p2}, Lcom/tencent/liteav/txcvodplayer/b;->b()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mSurfaceCallback:Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->b(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mMeasureHelper:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/b;->b(I)V

    .line 129
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->requestLayout()V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mMeasureHelper:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/b;->a(I)V

    int-to-float p1, p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setRotation(F)V

    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mMeasureHelper:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->b(II)V

    .line 116
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->mMeasureHelper:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->a(II)V

    .line 108
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
