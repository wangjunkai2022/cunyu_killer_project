.class public Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;
.super Ljava/lang/Object;
.source "TXSWMuxerJNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;
    }
.end annotation


# instance fields
.field private a:J

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    .line 27
    invoke-direct {p0}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;I)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_0
    new-array p2, p2, [B

    .line 132
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p2
.end method

.method private native init()J
.end method

.method private native release(J)V
.end method

.method private native setAVParams(JLcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;)V
.end method

.method private native setAudioCSD(J[B)V
.end method

.method private native setDstPath(JLjava/lang/String;)V
.end method

.method private native setVideoCSD(J[B[B)V
.end method

.method private native start(J)I
.end method

.method private native stop(J)I
.end method

.method private native writeFrame(J[BIIIIJ)I
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 83
    iget-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    const-string v1, "TXSWMuxerJNI"

    if-eqz v0, :cond_1

    .line 84
    iget-wide v2, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    invoke-direct {p0, v2, v3}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->start(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->c:Z

    goto :goto_0

    :cond_0
    const-string v2, "Start Muxer Error!!!"

    .line 88
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    const-string v0, "Muxer isn\'t init yet!"

    .line 92
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;IIIIJ)I
    .locals 12

    move-object v10, p0

    .line 65
    iget-boolean v0, v10, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    const/4 v1, -0x1

    const-string v11, "TXSWMuxerJNI"

    if-eqz v0, :cond_2

    .line 66
    iget-boolean v0, v10, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->c:Z

    if-eqz v0, :cond_1

    .line 67
    iget-wide v1, v10, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    move-object v0, p1

    move/from16 v6, p4

    invoke-direct {p0, p1, v6}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b(Ljava/nio/ByteBuffer;I)[B

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->writeFrame(J[BIIIIJ)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Muxer write frame error!"

    .line 69
    invoke-static {v11, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const-string v0, "Muxer isn\'t start yet!"

    .line 73
    invoke-static {v11, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v0, "Muxer isn\'t init yet!"

    .line 77
    invoke-static {v11, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public a(Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;)V
    .locals 2

    .line 33
    iget-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    if-eqz v0, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->setAVParams(JLcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;)V

    goto :goto_0

    :cond_0
    const-string p1, "TXSWMuxerJNI"

    const-string v0, "Muxer isn\'t init yet!"

    .line 36
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    if-eqz v0, :cond_0

    .line 42
    iget-wide v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->setDstPath(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "TXSWMuxerJNI"

    const-string v0, "Muxer isn\'t init yet!"

    .line 44
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    if-eqz v0, :cond_0

    .line 58
    iget-wide v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b(Ljava/nio/ByteBuffer;I)[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->setAudioCSD(J[B)V

    goto :goto_0

    :cond_0
    const-string p1, "TXSWMuxerJNI"

    const-string p2, "Muxer isn\'t init yet!"

    .line 60
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
    .locals 2

    .line 49
    iget-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    if-eqz v0, :cond_0

    .line 50
    iget-wide v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b(Ljava/nio/ByteBuffer;I)[B

    move-result-object p1

    invoke-direct {p0, p3, p4}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b(Ljava/nio/ByteBuffer;I)[B

    move-result-object p2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->setVideoCSD(J[B[B)V

    goto :goto_0

    :cond_0
    const-string p1, "TXSWMuxerJNI"

    const-string p2, "Muxer isn\'t init yet!"

    .line 52
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 3

    .line 98
    iget-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    const/4 v1, -0x1

    const-string v2, "TXSWMuxerJNI"

    if-eqz v0, :cond_2

    .line 99
    iget-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->c:Z

    .line 101
    iget-wide v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->stop(J)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Stop Muxer Error!!!"

    .line 103
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const-string v0, "Muxer isn\'t start yet!"

    .line 107
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v0, "Muxer isn\'t init yet!"

    .line 111
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public c()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    if-eqz v0, :cond_0

    .line 118
    iget-wide v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->release(J)V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b:Z

    .line 120
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->c:Z

    goto :goto_0

    :cond_0
    const-string v0, "TXSWMuxerJNI"

    const-string v1, "Muxer isn\'t init yet!"

    .line 122
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
