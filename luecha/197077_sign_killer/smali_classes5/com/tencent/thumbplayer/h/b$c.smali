.class public final Lcom/tencent/thumbplayer/h/b$c;
.super Landroid/media/MediaCodec$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/tencent/thumbplayer/h/b;

.field private final b:Lcom/tencent/thumbplayer/h/b$a;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/h/b;Lcom/tencent/thumbplayer/h/b$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b$c;->a:Lcom/tencent/thumbplayer/h/b;

    iput-object p2, p0, Lcom/tencent/thumbplayer/h/b$c;->b:Lcom/tencent/thumbplayer/h/b$a;

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b$c;->b:Lcom/tencent/thumbplayer/h/b$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b$c;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/h/b$a;->onError(Lcom/tencent/thumbplayer/h/b;Landroid/media/MediaCodec$CodecException;)V

    :cond_0
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b$c;->b:Lcom/tencent/thumbplayer/h/b$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b$c;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/h/b$a;->onInputBufferAvailable(Lcom/tencent/thumbplayer/h/b;I)V

    :cond_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b$c;->b:Lcom/tencent/thumbplayer/h/b$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b$c;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/thumbplayer/h/b$a;->onOutputBufferAvailable(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b$c;->b:Lcom/tencent/thumbplayer/h/b$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b$c;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/h/b$a;->onOutputFormatChanged(Lcom/tencent/thumbplayer/h/b;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method
