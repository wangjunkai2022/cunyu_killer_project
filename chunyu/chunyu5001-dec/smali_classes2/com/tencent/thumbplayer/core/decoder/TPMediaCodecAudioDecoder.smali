.class public Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;
.super Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "TPMediaCodecAudioDecoder"


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private mCsd0Data:[B

.field private mEnableAudioPassThrough:Z

.field private mIsAdts:Z

.field private mMimeType:Ljava/lang/String;

.field private mSampleRate:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mMimeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    iput v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    iput v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mAudioFormat:I

    iput-object p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mCsd0Data:[B

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mIsAdts:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mEnableAudioPassThrough:Z

    return-void
.end method


# virtual methods
.method configCodec(Lcom/tencent/thumbplayer/h/b;)V
    .locals 5

    const-string v0, "TPMediaCodecAudioDecoder"

    const/4 v1, 0x2

    const-string v2, "configCodec: "

    invoke-static {v1, v0, v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mMimeType:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    iget v4, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mCsd0Data:[B

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "csd-0"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_0
    iget-boolean v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mIsAdts:Z

    if-eqz v3, :cond_1

    const-string v3, "configCodec: set is adts"

    invoke-static {v1, v0, v3}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "is-adts"

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mMediaCrypto:Landroid/media/MediaCrypto;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/tencent/thumbplayer/h/b;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "TPMediaCodecAudioDecoder"

    return-object v0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public initDecoder(Ljava/lang/String;IIII)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDecoder, mimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channelCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " drmType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " audioFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "TPMediaCodecAudioDecoder"

    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mMimeType:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    iput p3, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    iput p4, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mDrmType:I

    iput p5, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mAudioFormat:I

    const/4 p1, 0x1

    return p1
.end method

.method public initDecoder(Ljava/lang/String;IIILandroid/view/Surface;III)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method processMediaCodecException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method processOutputBuffer(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V
    .locals 4

    iget v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->sampleRate:I

    iget v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->channelCount:I

    iget v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mAudioFormat:I

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->format:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/h/b;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/h/b;->k()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, p2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_1
    iput-object v1, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->data:[B

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gtz p3, :cond_2

    const/4 p3, 0x2

    const-string v0, "TPMediaCodecAudioDecoder"

    const-string v1, "processOutputBuffer: bufferInfo.flags is BUFFER_FLAG_END_OF_STREAM, return EOS!"

    invoke-static {p3, v0, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iput p3, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    :cond_2
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/tencent/thumbplayer/h/b;->a(IZ)V

    return-void
.end method

.method processOutputConfigData(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/tencent/thumbplayer/h/b;->a(IZ)V

    const/4 p1, 0x1

    iput p1, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    return-void
.end method

.method processOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 7

    const-string v0, "pcm-encoding"

    const-string v1, "channel-count"

    const-string v2, "sample-rate"

    const-string v3, "TPMediaCodecAudioDecoder"

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    :cond_0
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processOutputFormatChanged: MediaFormat.KEY_PCM_ENCODING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, p1

    move-object p1, v6

    goto :goto_0

    :cond_2
    move p1, v4

    goto :goto_1

    :catch_1
    move-exception p1

    move v0, v4

    :goto_0
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processOutputFormatChanged got one exception: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processOutputFormatChanged, mEnableAudioPassThrough:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mEnableAudioPassThrough:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSampleRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAudioFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mAudioFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pcmFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v3, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOperateRate(F)I
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->setOperateRate(F)I

    move-result p1

    return p1
.end method

.method public setParamBool(IZ)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput-boolean p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mIsAdts:Z

    return v0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iput-boolean p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mEnableAudioPassThrough:Z

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParamBool mEnableAudioPassThrough:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mEnableAudioPassThrough:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->setParamBool(IZ)Z

    move-result p1

    return p1
.end method

.method public setParamBytes(I[B)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecAudioDecoder;->mCsd0Data:[B

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->setParamBytes(I[B)Z

    move-result p1

    return p1
.end method

.method public setParamObject(ILjava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->setParamObject(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
