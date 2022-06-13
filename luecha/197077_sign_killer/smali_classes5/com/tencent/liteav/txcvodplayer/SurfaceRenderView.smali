.class public Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;,
        Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/b;

.field private b:Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 66
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/b;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/txcvodplayer/b;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/b;

    .line 67
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;-><init>(Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;)V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->b:Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;

    .line 68
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->b:Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 70
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->b:Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;->a(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 276
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 277
    const-class v0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 283
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 284
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 285
    const-class v0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->c(II)V

    .line 117
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b;->a()I

    move-result p1

    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {p2}, Lcom/tencent/liteav/txcvodplayer/b;->b()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->b:Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$b;->b(Lcom/tencent/liteav/txcvodplayer/a$a;)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/b;->b(I)V

    .line 111
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->requestLayout()V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceView doesn\'t support rotation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")!\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->b(II)V

    .line 99
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/b;->a(II)V

    .line 90
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 91
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
