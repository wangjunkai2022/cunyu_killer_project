.class public Lcom/tencent/thumbplayer/tplayer/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/api/ITPSurface;


# instance fields
.field private a:Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;

.field private b:Lcom/tencent/thumbplayer/api/ITPSurfaceListener;

.field private c:Lcom/tencent/thumbplayer/core/player/ITPNativePlayerSurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/e;->a:Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/e;->b:Lcom/tencent/thumbplayer/api/ITPSurfaceListener;

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/e$1;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tplayer/e$1;-><init>(Lcom/tencent/thumbplayer/tplayer/e;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/e;->c:Lcom/tencent/thumbplayer/core/player/ITPNativePlayerSurfaceCallback;

    new-instance v0, Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/e;->a:Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/e;->a:Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/e;->c:Lcom/tencent/thumbplayer/core/player/ITPNativePlayerSurfaceCallback;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;->setTPSurfaceCallback(Lcom/tencent/thumbplayer/core/player/ITPNativePlayerSurfaceCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/e;)Lcom/tencent/thumbplayer/api/ITPSurfaceListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/tplayer/e;->b:Lcom/tencent/thumbplayer/api/ITPSurfaceListener;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/e;->a:Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/e;->a:Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurface;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public setSurfaceListener(Lcom/tencent/thumbplayer/api/ITPSurfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/e;->b:Lcom/tencent/thumbplayer/api/ITPSurfaceListener;

    return-void
.end method
