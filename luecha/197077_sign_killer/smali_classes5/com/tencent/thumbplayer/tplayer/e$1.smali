.class Lcom/tencent/thumbplayer/tplayer/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/core/player/ITPNativePlayerSurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tplayer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tplayer/e;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/tplayer/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/e$1;->a:Lcom/tencent/thumbplayer/tplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderInfo(Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurfaceRenderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/e$1;->a:Lcom/tencent/thumbplayer/tplayer/e;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tplayer/e;->a(Lcom/tencent/thumbplayer/tplayer/e;)Lcom/tencent/thumbplayer/api/ITPSurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/thumbplayer/adapter/a/b/c;->a(Lcom/tencent/thumbplayer/core/player/TPNativePlayerSurfaceRenderInfo;)Lcom/tencent/thumbplayer/api/TPSurfaceRenderInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPSurfaceListener;->onRenderInfo(Lcom/tencent/thumbplayer/api/TPSurfaceRenderInfo;)V

    :cond_0
    return-void
.end method
