.class public final Lcom/tencent/thumbplayer/h/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/h/b/c;


# instance fields
.field private final a:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p1

    return p1
.end method

.method public a(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    return p1
.end method

.method public a()Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public a(IIIJI)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/h/a/a;)V
    .locals 1

    const-string p1, "DirectCodecWrapper"

    const-string v0, "DirectCodecWrapper setCodecCallback ignore..."

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/f/a$b;
    .locals 1

    const-string p1, "DirectCodecWrapper"

    const-string v0, "setCanReuseType setCodecCallback ignore..."

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/thumbplayer/h/f/a$b;->a:Lcom/tencent/thumbplayer/h/f/a$b;

    return-object p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "DirectCodecWrapper"

    const-string v1, "DirectCodecWrapper prepareToReUse ignore..."

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method
