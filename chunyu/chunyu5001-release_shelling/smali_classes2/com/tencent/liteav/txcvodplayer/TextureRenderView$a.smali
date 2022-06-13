.class final Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Lcom/tencent/liteav/txcplayer/d;

.field private d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/d;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    .line 156
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->b:Landroid/graphics/SurfaceTexture;

    .line 157
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->c:Lcom/tencent/liteav/txcplayer/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/liteav/txcvodplayer/a;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    return-object v0
.end method

.method public a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    instance-of v0, p1, Lcom/tencent/liteav/txcplayer/c;

    if-eqz v0, :cond_5

    .line 167
    move-object v0, p1

    check-cast v0, Lcom/tencent/liteav/txcplayer/c;

    .line 168
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->access$100(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a(Z)V

    .line 169
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->b:Landroid/graphics/SurfaceTexture;

    .line 172
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/c;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 174
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->access$100(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tencent/liteav/txcplayer/c;->setSurfaceTextureHost(Lcom/tencent/liteav/txcplayer/d;)V

    .line 175
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, v1, :cond_2

    .line 177
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->access$100(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->b(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->d:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->d:Landroid/view/Surface;

    invoke-interface {p1, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setSurface(Landroid/view/Surface;)V

    .line 184
    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/c;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 185
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->a:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;->access$100(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/c;->setSurfaceTextureHost(Lcom/tencent/liteav/txcplayer/d;)V

    .line 187
    :goto_0
    invoke-interface {p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->d:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 193
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->b()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->d:Landroid/view/Surface;

    .line 194
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->d:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setSurface(Landroid/view/Surface;)V

    :goto_1
    return-void
.end method

.method public b()Landroid/view/Surface;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->b:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->d:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 218
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->d:Landroid/view/Surface;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->d:Landroid/view/Surface;

    return-object v0
.end method

.method public c()Landroid/view/Surface;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;->d:Landroid/view/Surface;

    return-object v0
.end method
