.class public abstract Lcom/tencent/thumbplayer/h/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(Lcom/tencent/thumbplayer/h/b;Landroid/media/MediaCodec$CodecException;)V
.end method

.method public abstract onInputBufferAvailable(Lcom/tencent/thumbplayer/h/b;I)V
.end method

.method public abstract onOutputBufferAvailable(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onOutputFormatChanged(Lcom/tencent/thumbplayer/h/b;Landroid/media/MediaFormat;)V
.end method
