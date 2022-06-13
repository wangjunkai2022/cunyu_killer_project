.class public Lcom/tencent/liteav/basic/structs/TXSVideoFrame;
.super Ljava/lang/Object;
.source "TXSVideoFrame.java"


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public data:[B

.field public eglContext:Ljava/lang/Object;

.field public frameType:I

.field public height:I

.field public pts:J

.field public rotation:I

.field public textureId:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeLoadArrayFromBuffer([BI)V
.end method

.method private native nativeLoadArrayFromGL([BII)V
.end method

.method private native nativeLoadBufferFromGL(II)V
.end method

.method private native nativeLoadNV21BufferFromI420Buffer(II)V
.end method


# virtual methods
.method public I420toNV21([B[BII)[B
    .locals 4

    if-nez p2, :cond_0

    .line 65
    array-length p2, p1

    new-array p2, p2, [B

    :cond_0
    mul-int/2addr p3, p4

    .line 68
    div-int/lit8 p4, p3, 0x4

    add-int/2addr p4, p3

    const/4 v0, 0x0

    .line 71
    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p3

    move v1, p4

    :goto_0
    if-ge p3, p4, :cond_1

    .line 74
    aget-byte v2, p1, v1

    aput-byte v2, p2, v0

    add-int/lit8 v2, v0, 0x1

    .line 75
    aget-byte v3, p1, p3

    aput-byte v3, p2, v2

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public clone()Lcom/tencent/liteav/basic/structs/TXSVideoFrame;
    .locals 3

    .line 30
    new-instance v0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;-><init>()V

    .line 31
    iget v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    iput v1, v0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    .line 32
    iget v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    iput v1, v0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    .line 33
    iget v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->frameType:I

    iput v1, v0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->frameType:I

    .line 34
    iget v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->rotation:I

    iput v1, v0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->rotation:I

    .line 35
    iget-wide v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->pts:J

    iput-wide v1, v0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->pts:J

    .line 36
    iget-object v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->data:[B

    iput-object v1, v0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->data:[B

    .line 37
    iget v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->textureId:I

    iput v1, v0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->textureId:I

    .line 38
    iget-object v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->eglContext:Ljava/lang/Object;

    iput-object v1, v0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->eglContext:Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->nativeClone(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->clone()Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->release()V

    .line 26
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public loadNV21BufferFromI420Buffer()V
    .locals 2

    .line 60
    iget v0, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    iget v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->nativeLoadNV21BufferFromI420Buffer(II)V

    return-void
.end method

.method public loadYUVArray([B)V
    .locals 8

    if-eqz p1, :cond_2

    .line 44
    array-length v0, p1

    iget v3, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    iget v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    mul-int v2, v3, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    mul-int/lit8 v1, v1, 0x3

    .line 49
    div-int/lit8 v4, v1, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    goto :goto_0

    :cond_1
    mul-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x3

    .line 52
    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->nativeLoadArrayFromBuffer([BI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadYUVBufferFromGL()V
    .locals 2

    .line 56
    iget v0, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    iget v1, p0, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->nativeLoadBufferFromGL(II)V

    return-void
.end method

.method public native nativeClone(Ljava/nio/ByteBuffer;)V
.end method

.method public native release()V
.end method
