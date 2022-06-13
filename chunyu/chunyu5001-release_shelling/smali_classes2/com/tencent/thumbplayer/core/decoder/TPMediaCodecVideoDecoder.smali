.class public Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;
.super Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;


# static fields
.field private static final DEVICE_NAME_VIVO_X5L:Ljava/lang/String; = "vivo X5L"

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final PIXEL_STRIDE_CONTINUOUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TPMediaCodecVideoDecode"

.field private static final YUV420P_PLANAR_COUNT:I = 0x3


# instance fields
.field private mCropBottom:I

.field private mCropLeft:I

.field private mCropRight:I

.field private mCropTop:I

.field private mCsd0Data:[B

.field private mCsd1Data:[B

.field private mCsd2Data:[B

.field private mEnableMediaCodecOutputData:Z

.field private mMimeType:Ljava/lang/String;

.field private mRotation:I

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mMimeType:Ljava/lang/String;

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropLeft:I

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropRight:I

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropTop:I

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropBottom:I

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mRotation:I

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCsd0Data:[B

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCsd1Data:[B

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCsd2Data:[B

    return-void
.end method

.method private copyVideoDataFromImage(Landroid/media/Image;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V
    .locals 11

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x23

    if-eq v0, v2, :cond_0

    const/4 p1, -0x1

    iput p1, p2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->format:I

    iput v1, p2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    const/4 p1, 0x4

    const-string p2, "TPMediaCodecVideoDecode"

    const-string v0, "copyVideoDataFromImage: image format not support!"

    invoke-static {p1, p2, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->format:I

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    iget-object v4, p2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->lineSize:[I

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->lineSize:[I

    array-length v4, v4

    if-ge v4, v1, :cond_2

    :cond_1
    new-array v4, v1, [I

    iput-object v4, p2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->lineSize:[I

    :cond_2
    iget-object v4, p2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->videoData:[[B

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->videoData:[[B

    array-length v4, v4

    if-ge v4, v1, :cond_4

    :cond_3
    new-array v4, v1, [[B

    iput-object v4, p2, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->videoData:[[B

    :cond_4
    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_6

    if-nez v4, :cond_5

    move v5, v0

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    :goto_1
    shr-int v7, v2, v5

    shr-int v8, v3, v5

    aget-object v6, p1, v4

    move-object v5, p0

    move v9, v4

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->copyVideoDataFromPlane(Landroid/media/Image$Plane;IIILcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private copyVideoDataFromPlane(Landroid/media/Image$Plane;IIILcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V
    .locals 3

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p5, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->lineSize:[I

    aput p2, v1, p4

    mul-int/2addr p2, p3

    iget-object p3, p5, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->videoData:[[B

    aget-object p3, p3, p4

    if-eqz p3, :cond_0

    iget-object p3, p5, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->videoData:[[B

    aget-object p3, p3, p4

    array-length p3, p3

    if-ge p3, p2, :cond_1

    :cond_0
    iget-object p3, p5, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->videoData:[[B

    new-array v1, p2, [B

    aput-object v1, p3, p4

    :cond_1
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    iget-object p1, p5, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->videoData:[[B

    aget-object p1, p1, p4

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v1, p2, :cond_3

    iget-object p3, p5, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->videoData:[[B

    aget-object p3, p3, p4

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private processOutputData(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V
    .locals 5

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const-string v1, "TPMediaCodecVideoDecode"

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gtz p3, :cond_0

    const/4 p3, 0x2

    const-string v0, "processOutputBuffer: bufferInfo.flags is BUFFER_FLAG_END_OF_STREAM, return EOS!"

    invoke-static {p3, v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iput v2, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->format:I

    iput p3, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    invoke-virtual {p1, p2, v4}, Lcom/tencent/thumbplayer/h/b;->a(IZ)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/h/b;->b(I)Landroid/media/Image;

    move-result-object p3

    if-nez p3, :cond_1

    iput v2, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->format:I

    const/4 p3, 0x3

    iput p3, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    invoke-virtual {p1, p2, v4}, Lcom/tencent/thumbplayer/h/b;->a(IZ)V

    const-string p1, "processOutputBuffer: getOutputImage return null"

    invoke-static {v3, v1, p1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->copyVideoDataFromImage(Landroid/media/Image;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V

    invoke-virtual {p1, p2, v4}, Lcom/tencent/thumbplayer/h/b;->a(IZ)V

    return-void
.end method


# virtual methods
.method configCodec(Lcom/tencent/thumbplayer/h/b;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    iget v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mRotation:I

    const-string v2, "rotation-degrees"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vivo X5L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    iget v2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    mul-int/2addr v1, v2

    const-string v2, "max-input-size"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCsd0Data:[B

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "csd-0"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCsd1Data:[B

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "csd-1"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_3
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCsd2Data:[B

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "csd-2"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_4
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mMimeType:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionProfile:I

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/common/TPCodecUtils;->convertDolbyVisionToOmxProfile(I)I

    move-result v1

    const-string v2, "profile"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionLevel:I

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/common/TPCodecUtils;->convertDolbyVisionToOmxLevel(I)I

    move-result v1

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_5
    iget-boolean v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_6

    const v1, 0x7f420888

    const-string v3, "color-format"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mSurface:Landroid/view/Surface;

    :goto_0
    iget-object v3, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mMediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/tencent/thumbplayer/h/b;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/h/b;->d(I)V

    return-void
.end method

.method getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "TPMediaCodecVideoDecode"

    return-object v0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public initDecoder(Ljava/lang/String;IIII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public initDecoder(Ljava/lang/String;IIILandroid/view/Surface;III)Z
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mMimeType:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    iput p3, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    iput p4, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mRotation:I

    iput-object p5, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mSurface:Landroid/view/Surface;

    iput p6, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mDrmType:I

    iput p7, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionProfile:I

    iput p8, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mDolbyVisionLevel:I

    const/4 p1, 0x1

    return p1
.end method

.method processMediaCodecException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method processOutputBuffer(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V
    .locals 1

    iget v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->width:I

    iget v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->height:I

    iget v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropLeft:I

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->cropLeft:I

    iget v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropRight:I

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->cropRight:I

    iget v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropTop:I

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->cropTop:I

    iget v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropBottom:I

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->cropBottom:I

    const/16 v0, 0xa7

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->format:I

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->processOutputData(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V

    :cond_0
    return-void
.end method

.method processOutputConfigData(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p4, Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;->errCode:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->processOutputBuffer(Lcom/tencent/thumbplayer/h/b;ILandroid/media/MediaCodec$BufferInfo;Lcom/tencent/thumbplayer/core/decoder/TPFrameInfo;)V

    return-void
.end method

.method processOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "crop-right"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    if-eqz v1, :cond_0

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v5, "width"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    const-string v5, "height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropLeft:I

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropRight:I

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropTop:I

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropBottom:I

    :cond_1
    const/4 p1, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processOutputFormatChanged: mVideoWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCropLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCropRight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCropTop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCropBottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCropBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPMediaCodecVideoDecode"

    invoke-static {p1, v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOperateRate(F)I
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->setOperateRate(F)I

    move-result p1

    return p1
.end method

.method public setOutputSurface(Landroid/view/Surface;)I
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->setOutputSurface(Landroid/view/Surface;)I

    move-result p1

    return p1
.end method

.method public setParamBool(IZ)Z
    .locals 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mStarted:Z

    const/16 v1, 0x15

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    iput-boolean p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mEnableMediaCodecOutputData:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BOOL_ENABLE_MEDIACODEC_OUTPUT_DATA failed. need set before start, mStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", api level is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", support api level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/core/decoder/TPBaseMediaCodecDecoder;->setParamBool(IZ)Z

    move-result p1

    return p1
.end method

.method public setParamBytes(I[B)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCsd0Data:[B

    goto :goto_0

    :cond_0
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCsd1Data:[B

    goto :goto_0

    :cond_1
    const/16 v0, 0xca

    if-ne p1, v0, :cond_2

    iput-object p2, p0, Lcom/tencent/thumbplayer/core/decoder/TPMediaCodecVideoDecoder;->mCsd2Data:[B

    :cond_2
    :goto_0
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
