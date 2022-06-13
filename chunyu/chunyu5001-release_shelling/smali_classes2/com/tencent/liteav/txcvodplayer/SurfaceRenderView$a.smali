.class final Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$a;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;

.field private b:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;

    .line 131
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$a;->b:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/liteav/txcvodplayer/a;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView;

    return-object v0
.end method

.method public a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 136
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lcom/tencent/liteav/txcplayer/c;

    if-eqz v0, :cond_0

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/tencent/liteav/txcplayer/c;

    const/4 v1, 0x0

    .line 139
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/c;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$a;->b:Landroid/view/SurfaceHolder;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public b()Landroid/view/Surface;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$a;->b:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/view/Surface;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/SurfaceRenderView$a;->b()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
