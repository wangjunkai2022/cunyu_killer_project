.class final Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/tencent/liteav/txcplayer/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/SurfaceTexture;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/txcvodplayer/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/liteav/txcvodplayer/a$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->e:Z

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->f:Z

    .line 252
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->g:Z

    .line 255
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->i:Ljava/util/Map;

    .line 258
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "TextureRenderView"

    const-string v1, "willDetachFromWindow()"

    .line 378
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->f:Z

    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const-string v0, "TextureRenderView"

    if-nez p1, :cond_0

    const-string p1, "releaseSurfaceTexture: null"

    .line 343
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 344
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->g:Z

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_1

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    .line 346
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 348
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->e:Z

    if-nez v1, :cond_2

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    .line 349
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    :cond_2
    const-string p1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    .line 352
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_3
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 355
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_4

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    .line 356
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 358
    :cond_4
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->e:Z

    if-nez p1, :cond_5

    const-string p1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    .line 359
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a(Z)V

    goto :goto_0

    :cond_5
    const-string p1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    .line 362
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_6
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_7

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    .line 366
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 368
    :cond_7
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->e:Z

    if-nez p1, :cond_8

    const-string p1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    .line 369
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a(Z)V

    goto :goto_0

    :cond_8
    const-string p1, "releaseSurfaceTexture: alive: will released by TextureView"

    .line 372
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/d;)V

    .line 276
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->c:I

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->d:I

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->b:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/d;)V

    :cond_1
    const/4 v1, 0x0

    .line 282
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->c:I

    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->d:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;III)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->e:Z

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "TextureRenderView"

    const-string v1, "didDetachFromWindow()"

    .line 383
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->g:Z

    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public b(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "TextureRenderView"

    const-string v1, "onAttachFromWindow()"

    .line 388
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->f:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->g:Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 292
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 p2, 0x0

    .line 293
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->b:Z

    .line 294
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->c:I

    .line 295
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->d:I

    .line 297
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-direct {p3, v0, p1, p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/d;)V

    .line 298
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 299
    invoke-interface {v0, p3, p2, p2}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 318
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->b:Z

    .line 320
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->c:I

    .line 321
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->d:I

    .line 323
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-direct {v0, v1, p1, p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/d;)V

    .line 324
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 325
    invoke-interface {v1, v0}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;)V

    goto :goto_0

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextureRenderView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->e:Z

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 305
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->b:Z

    .line 307
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->c:I

    .line 308
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->d:I

    .line 310
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-direct {v0, v1, p1, p0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/d;)V

    .line 311
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/txcvodplayer/a$a;

    const/4 v2, 0x0

    .line 312
    invoke-interface {v1, v0, v2, p2, p3}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
