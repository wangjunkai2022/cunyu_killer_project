.class Lcom/tencent/liteav/renderer/d$4;
.super Ljava/lang/Object;
.source "TXCTextureViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/renderer/d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/liteav/renderer/d;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/renderer/d;Z)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/tencent/liteav/renderer/d$4;->b:Lcom/tencent/liteav/renderer/d;

    iput-boolean p2, p0, Lcom/tencent/liteav/renderer/d$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$4;->b:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->e(Lcom/tencent/liteav/renderer/d;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$4;->b:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->f(Lcom/tencent/liteav/renderer/d;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/renderer/d;->a(Lcom/tencent/liteav/renderer/d;F)F

    .line 234
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/d$4;->a:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$4;->b:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->f(Lcom/tencent/liteav/renderer/d;)F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/renderer/d;->a(Lcom/tencent/liteav/renderer/d;F)F

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$4;->b:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->e(Lcom/tencent/liteav/renderer/d;)Landroid/view/TextureView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/renderer/d$4;->b:Lcom/tencent/liteav/renderer/d;

    invoke-static {v1}, Lcom/tencent/liteav/renderer/d;->f(Lcom/tencent/liteav/renderer/d;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 238
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$4;->b:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->e(Lcom/tencent/liteav/renderer/d;)Landroid/view/TextureView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/renderer/d$4;->b:Lcom/tencent/liteav/renderer/d;

    invoke-static {v1}, Lcom/tencent/liteav/renderer/d;->f(Lcom/tencent/liteav/renderer/d;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleY(F)V

    :cond_1
    return-void
.end method
