.class public Lcom/tencent/liteav/videodecoder/e;
.super Ljava/lang/Object;
.source "TXCVideoMediaCodecDecoder.java"

# interfaces
.implements Lcom/tencent/liteav/videodecoder/b;


# instance fields
.field private a:Landroid/media/MediaCodec$BufferInfo;

.field private b:Landroid/media/MediaCodec;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/view/Surface;

.field private l:I

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/basic/structs/TXSNALPacket;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private p:I

.field private q:Lorg/json/JSONArray;

.field private r:Lcom/tencent/liteav/videodecoder/g;

.field private s:Lcom/tencent/liteav/videodecoder/d;

.field private t:Z

.field private u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->a:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    const-string v1, "video/avc"

    .line 43
    iput-object v1, p0, Lcom/tencent/liteav/videodecoder/e;->c:Ljava/lang/String;

    const/16 v1, 0x220

    .line 44
    iput v1, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    const/16 v1, 0x3c0

    .line 45
    iput v1, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, p0, Lcom/tencent/liteav/videodecoder/e;->f:J

    .line 47
    iput-wide v1, p0, Lcom/tencent/liteav/videodecoder/e;->g:J

    const/4 v3, 0x1

    .line 48
    iput-boolean v3, p0, Lcom/tencent/liteav/videodecoder/e;->h:Z

    const/4 v3, 0x0

    .line 49
    iput-boolean v3, p0, Lcom/tencent/liteav/videodecoder/e;->i:Z

    .line 50
    iput-boolean v3, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    .line 52
    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->k:Landroid/view/Surface;

    .line 55
    iput v3, p0, Lcom/tencent/liteav/videodecoder/e;->l:I

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/tencent/liteav/videodecoder/e;->m:Ljava/util/ArrayList;

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/tencent/liteav/videodecoder/e;->n:Ljava/util/ArrayList;

    .line 58
    iput-wide v1, p0, Lcom/tencent/liteav/videodecoder/e;->o:J

    .line 59
    iput v3, p0, Lcom/tencent/liteav/videodecoder/e;->p:I

    .line 60
    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->q:Lorg/json/JSONArray;

    .line 62
    new-instance v0, Lcom/tencent/liteav/videodecoder/d;

    invoke-direct {v0}, Lcom/tencent/liteav/videodecoder/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->s:Lcom/tencent/liteav/videodecoder/d;

    .line 63
    iput-boolean v3, p0, Lcom/tencent/liteav/videodecoder/e;->t:Z

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    .locals 8

    const-string v0, "MediaCodecDecoder"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 169
    :try_start_0
    iget-object v5, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/tencent/liteav/videodecoder/e;->k:Landroid/view/Surface;

    if-nez v5, :cond_0

    goto/16 :goto_4

    .line 173
    :cond_0
    iput-boolean p3, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    .line 174
    iget-boolean p3, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    if-eqz p3, :cond_1

    const-string p3, "video/hevc"

    .line 175
    iput-object p3, p0, Lcom/tencent/liteav/videodecoder/e;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p3, "video/avc"

    .line 177
    iput-object p3, p0, Lcom/tencent/liteav/videodecoder/e;->c:Ljava/lang/String;

    .line 179
    :goto_0
    iget-object p3, p0, Lcom/tencent/liteav/videodecoder/e;->c:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    iget v6, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    invoke-static {p3, v5, v6}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p3

    if-eqz p1, :cond_2

    const-string v5, "csd-0"

    .line 181
    invoke-virtual {p3, v5, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "csd-1"

    .line 184
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 187
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->q:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz p1, :cond_4

    move p2, v3

    .line 190
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge p2, v5, :cond_4

    .line 191
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "key"

    .line 192
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    .line 193
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 194
    invoke-virtual {p3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 197
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config custom format error "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_4
    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/e;->t:Z

    if-eqz p1, :cond_5

    .line 202
    invoke-direct {p0, p3}, Lcom/tencent/liteav/videodecoder/e;->a(Landroid/media/MediaFormat;)V

    .line 205
    :cond_5
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p1

    const/16 p2, 0x15

    if-lt p1, p2, :cond_7

    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    if-eqz p1, :cond_7

    .line 207
    new-instance p1, Landroid/media/MediaCodecList;

    invoke-direct {p1, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 209
    invoke-virtual {p1, p3}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findDecoderForFormat name= "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 212
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    goto :goto_2

    :cond_6
    const-string p1, "decode: findDecoderForFormat error: not find!"

    .line 214
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->e()V

    return v4

    .line 219
    :cond_7
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 223
    :goto_2
    :try_start_3
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/tencent/liteav/videodecoder/e;->k:Landroid/view/Surface;

    invoke-virtual {p1, p3, p2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 p1, 0x2

    .line 225
    :try_start_4
    iget-object p2, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {p2, v1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v1, 0x3

    .line 227
    :try_start_5
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const/4 v1, 0x4

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decode: start decoder success, is h265: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " w = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " h = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", format = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 231
    :try_start_6
    iput v3, p0, Lcom/tencent/liteav/videodecoder/e;->l:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception p1

    move v4, v3

    goto :goto_3

    :catch_2
    move-exception p2

    move v3, p1

    move-object p1, p2

    goto :goto_5

    :catch_3
    move-exception p1

    :goto_3
    move v3, v1

    goto :goto_5

    .line 170
    :cond_8
    :goto_4
    :try_start_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decode: init decoder error, can not init for decoder="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",surface="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/videodecoder/e;->k:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    return v4

    :catch_4
    move-exception p1

    .line 233
    :goto_5
    iget-object p2, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    if-eqz p2, :cond_9

    .line 235
    :try_start_8
    invoke-virtual {p2}, Landroid/media/MediaCodec;->release()V

    const-string p2, "decode: , decoder release success"

    .line 236
    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 240
    :goto_6
    iput-object v2, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    goto :goto_8

    :catchall_0
    move-exception p1

    goto :goto_7

    .line 238
    :catch_5
    :try_start_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decode: , decoder release exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 240
    :goto_7
    iput-object v2, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    .line 241
    throw p1

    .line 243
    :cond_9
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decode: init decoder "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " step exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->e()V

    move v3, v4

    :goto_9
    return v3
.end method

.method private a()V
    .locals 7

    const-string v0, "decode: release decoder exception: "

    const-string v1, "decode: release decoder sucess"

    const-string v2, "MediaCodecDecoder"

    .line 251
    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 253
    :try_start_0
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    const-string v3, "decode: stop decoder sucess"

    .line 254
    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    :try_start_1
    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 260
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :goto_0
    iput-object v4, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 262
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 264
    :goto_1
    iput-object v4, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    .line 265
    throw v0

    :catchall_1
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    .line 256
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode: stop decoder Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    :try_start_4
    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 260
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    .line 262
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 264
    :goto_2
    iput-object v4, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    .line 265
    throw v0

    .line 259
    :goto_3
    :try_start_6
    iget-object v5, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 260
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 264
    :goto_4
    iput-object v4, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v1

    .line 262
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    .line 266
    :goto_5
    throw v3

    .line 264
    :goto_6
    iput-object v4, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    .line 265
    throw v0

    .line 268
    :cond_0
    :goto_7
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    .line 269
    iput-wide v0, p0, Lcom/tencent/liteav/videodecoder/e;->f:J

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/e;->h:Z

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/e;->i:Z

    return-void
.end method

.method private a(IJJI)V
    .locals 12

    move-object v1, p0

    .line 371
    iget-object v0, v1, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    move v3, p1

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 372
    iget-object v0, v1, Lcom/tencent/liteav/videodecoder/e;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const-string v2, "MediaCodecDecoder"

    if-eqz v0, :cond_0

    const-string v0, "output EOS"

    .line 373
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/tencent/liteav/videodecoder/e;->r:Lcom/tencent/liteav/videodecoder/g;

    if-eqz v0, :cond_1

    .line 378
    iget-object v3, v1, Lcom/tencent/liteav/videodecoder/e;->r:Lcom/tencent/liteav/videodecoder/g;

    const/4 v4, 0x0

    iget v5, v1, Lcom/tencent/liteav/videodecoder/e;->d:I

    iget v6, v1, Lcom/tencent/liteav/videodecoder/e;->e:I

    move-wide v7, p2

    move-wide/from16 v9, p4

    move/from16 v11, p6

    invoke-interface/range {v3 .. v11}, Lcom/tencent/liteav/videodecoder/g;->onDecodeFrame(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;IIJJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "onDecodeFrame failed."

    .line 381
    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->d()V

    return-void
.end method

.method private a(Landroid/media/MediaFormat;)V
    .locals 3

    .line 151
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Hardware()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    const-string v0, "vendor.qti-ext-dec-low-latency.enable"

    .line 153
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "vendor.qti-ext-dec-picture-order.enable"

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Hardware()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "kirin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    const-string v0, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req"

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, -0x1

    const-string v2, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy"

    .line 158
    invoke-virtual {p1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 160
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    const-string v0, "low-latency"

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 483
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    if-eq v0, p1, :cond_3

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Video][Decoder] nal data format changed, from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    const-string v2, "h265"

    const-string v3, "h264"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    .line 488
    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    iget v0, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    const/16 v1, 0x14

    invoke-static {p1, v0, v1}, Lcom/tencent/liteav/basic/d/b;->a(III)Z

    move-result p1

    if-nez p1, :cond_2

    .line 489
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->a()V

    .line 490
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->e()V

    goto :goto_2

    .line 492
    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->a()V

    .line 493
    iget-boolean p1, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/tencent/liteav/videodecoder/e;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    .line 494
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->r:Lcom/tencent/liteav/videodecoder/g;

    if-eqz p1, :cond_3

    .line 495
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/videodecoder/g;->onDecoderChange(Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private b()V
    .locals 21

    move-object/from16 v8, p0

    .line 276
    iget-object v0, v8, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    const-string v1, "MediaCodecDecoder"

    if-nez v0, :cond_0

    const-string v0, "null decoder"

    .line 277
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_0
    iget-object v0, v8, Lcom/tencent/liteav/videodecoder/e;->m:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/tencent/liteav/basic/structs/TXSNALPacket;

    if-eqz v2, :cond_f

    .line 282
    iget-object v0, v2, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    array-length v0, v0

    if-nez v0, :cond_1

    goto/16 :goto_9

    .line 289
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v10

    .line 290
    iget-wide v3, v8, Lcom/tencent/liteav/videodecoder/e;->o:J

    const-wide/16 v12, 0x0

    cmp-long v0, v3, v12

    if-nez v0, :cond_2

    .line 291
    iput-wide v10, v8, Lcom/tencent/liteav/videodecoder/e;->o:J

    :cond_2
    const/4 v3, 0x0

    .line 298
    :try_start_0
    iget-object v0, v8, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode: getInputBuffers Exception!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v3, :cond_e

    .line 302
    array-length v0, v3

    if-nez v0, :cond_3

    goto/16 :goto_8

    :cond_3
    const-wide/16 v4, 0x2710

    const/16 v6, -0x2710

    .line 309
    :try_start_1
    iget-object v0, v8, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "decode: dequeueInputBuffer Exception!! "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    :goto_1
    if-ltz v0, :cond_4

    .line 314
    aget-object v3, v3, v0

    .line 315
    iget-object v7, v2, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 317
    :try_start_2
    iget-object v14, v8, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    iget-object v3, v2, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    array-length v3, v3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v2, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v18

    const/16 v20, 0x0

    move v15, v0

    move/from16 v17, v3

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 318
    iget-object v3, v8, Lcom/tencent/liteav/videodecoder/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 320
    :catch_2
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videodecoder/e;->f()V

    .line 323
    :goto_2
    iget-wide v3, v8, Lcom/tencent/liteav/videodecoder/e;->f:J

    cmp-long v3, v3, v12

    if-nez v3, :cond_5

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode: input buffer available, dequeueInputBuffer index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v0, "decode: input buffer not available, dequeueInputBuffer failed"

    .line 327
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_5
    :goto_3
    :try_start_3
    iget-object v0, v8, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    iget-object v3, v8, Lcom/tencent/liteav/videodecoder/e;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v8, Lcom/tencent/liteav/videodecoder/e;->f:J

    cmp-long v4, v4, v12

    if-nez v4, :cond_6

    const-wide/16 v4, 0x3a98

    goto :goto_4

    :cond_6
    const-wide/16 v4, 0x2710

    :goto_4
    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videodecoder/e;->f()V

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode: dequeueOutputBuffer exception!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    :goto_5
    if-ltz v0, :cond_7

    .line 338
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v8, Lcom/tencent/liteav/videodecoder/e;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 340
    iget v7, v2, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->rotation:I

    move-object/from16 v1, p0

    move v2, v0

    move-wide v3, v5

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/videodecoder/e;->a(IJJI)V

    .line 342
    iput v9, v8, Lcom/tencent/liteav/videodecoder/e;->l:I

    goto :goto_6

    :cond_7
    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode: no output from decoder available when timeout fail count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/tencent/liteav/videodecoder/e;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videodecoder/e;->f()V

    goto :goto_6

    :cond_8
    const/4 v2, -0x3

    if-ne v0, v2, :cond_9

    const-string v0, "decode: output buffers changed"

    .line 349
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const/4 v2, -0x2

    if-ne v0, v2, :cond_a

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videodecoder/e;->c()V

    goto :goto_6

    .line 353
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode: unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_6
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    .line 356
    iget-object v2, v8, Lcom/tencent/liteav/videodecoder/e;->n:Ljava/util/ArrayList;

    sub-long v3, v0, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-wide v2, v8, Lcom/tencent/liteav/videodecoder/e;->o:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 359
    iget-object v2, v8, Lcom/tencent/liteav/videodecoder/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 360
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-lez v4, :cond_b

    .line 361
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v12, v3

    goto :goto_7

    .line 363
    :cond_c
    iget-object v2, v8, Lcom/tencent/liteav/videodecoder/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 364
    iput-wide v0, v8, Lcom/tencent/liteav/videodecoder/e;->o:J

    const-wide/16 v0, 0x3

    mul-long/2addr v12, v0

    long-to-int v0, v12

    .line 365
    iput v0, v8, Lcom/tencent/liteav/videodecoder/e;->p:I

    :cond_d
    return-void

    :cond_e
    :goto_8
    const-string v0, "decode: getInputBuffers failed"

    .line 303
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_9
    const-string v0, "decode: empty buffer"

    .line 283
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, v8, Lcom/tencent/liteav/videodecoder/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private b(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 7

    .line 502
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/e;->t:Z

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    if-nez v0, :cond_9

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    .line 511
    :goto_0
    :try_start_0
    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 512
    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    aget-byte v3, v3, v2

    const/4 v5, 0x7

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v3, v3, v6

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v6, v2, 0x2

    aget-byte v3, v3, v6

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v6, v2, 0x3

    aget-byte v3, v3, v6

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v6, v2, 0x4

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v5, :cond_1

    goto :goto_1

    .line 516
    :cond_1
    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v3, v3, v6

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v6, v2, 0x2

    aget-byte v3, v3, v6

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v6, v2, 0x3

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v4

    goto :goto_0

    :cond_3
    move v6, v0

    :goto_1
    if-ltz v6, :cond_9

    .line 524
    iget-object v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    array-length v0, v0

    sub-int/2addr v0, v6

    move v2, v6

    .line 525
    :goto_2
    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 526
    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v5, v2, 0x2

    aget-byte v3, v3, v5

    if-eq v3, v4, :cond_5

    :cond_4
    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v3, v3, v5

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v5, v2, 0x2

    aget-byte v3, v3, v5

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int/lit8 v5, v2, 0x3

    aget-byte v3, v3, v5

    if-ne v3, v4, :cond_6

    :cond_5
    sub-int v0, v2, v6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 533
    :cond_7
    :goto_3
    new-array v2, v0, [B

    .line 534
    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    invoke-static {v3, v6, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/e;->s:Lcom/tencent/liteav/videodecoder/d;

    invoke-virtual {v3, v2}, Lcom/tencent/liteav/videodecoder/d;->a([B)[B

    move-result-object v2

    if-eqz v2, :cond_9

    .line 537
    iget-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    array-length v3, v3

    array-length v4, v2

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    new-array v3, v3, [B

    if-lez v6, :cond_8

    .line 539
    iget-object v4, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    invoke-static {v4, v1, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    :cond_8
    array-length v4, v2

    invoke-static {v2, v1, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    iget-object v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    add-int v4, v6, v0

    array-length v2, v2

    add-int/2addr v2, v6

    iget-object v5, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    array-length v5, v5

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    iput-object v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v0, "MediaCodecDecoder"

    const-string v1, "modify dec buffer error "

    .line 547
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private c()V
    .locals 9

    .line 388
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode output format changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCodecDecoder"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "crop-right"

    .line 391
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v3, "crop-left"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const-string v4, "crop-bottom"

    .line 392
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string v5, "crop-top"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v3

    const-string v5, "width"

    .line 394
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    .line 395
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 397
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 398
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 400
    iget v4, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    iget v6, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    if-eq v0, v6, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/e;->h:Z

    if-eqz v0, :cond_4

    .line 422
    iput-boolean v5, p0, Lcom/tencent/liteav/videodecoder/e;->h:Z

    .line 423
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->r:Lcom/tencent/liteav/videodecoder/g;

    if-eqz v0, :cond_4

    .line 424
    invoke-interface {v0, v4, v6}, Lcom/tencent/liteav/videodecoder/g;->onVideoSizeChange(II)V

    goto/16 :goto_2

    .line 402
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x14

    invoke-static {v1, v0, v4}, Lcom/tencent/liteav/basic/d/b;->a(III)Z

    move-result v4

    if-nez v4, :cond_2

    .line 403
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->e()V

    .line 404
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 406
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    iget v7, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v3, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v3, 0x3

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    const-string v3, "outputFormatChange: dynamic change resolution but change to a not support resolution: %s, oldwidth = %d,oldheight = %d, newwidth = %d, newheight="

    .line 404
    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 408
    invoke-static {v7, v3, v4, v5}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 410
    :cond_2
    iput v1, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    .line 411
    iput v0, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    .line 413
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/e;->r:Lcom/tencent/liteav/videodecoder/g;

    if-eqz v3, :cond_3

    .line 414
    iget-object v3, p0, Lcom/tencent/liteav/videodecoder/e;->r:Lcom/tencent/liteav/videodecoder/g;

    iget v4, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    iget v5, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    invoke-interface {v3, v4, v5}, Lcom/tencent/liteav/videodecoder/g;->onVideoSizeChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "onVideoSizeChange failed."

    .line 417
    invoke-static {v2, v4, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode: video size change to w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",h:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private d()V
    .locals 12

    .line 431
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "MediaCodecDecoder"

    if-nez v0, :cond_0

    const-string v0, "decode first frame sucess"

    .line 432
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 436
    iget-wide v6, p0, Lcom/tencent/liteav/videodecoder/e;->f:J

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 438
    iget-wide v6, p0, Lcom/tencent/liteav/videodecoder/e;->g:J

    const-wide/16 v10, 0x7d0

    add-long/2addr v10, v6

    cmp-long v0, v4, v10

    if-lez v0, :cond_1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frame interval["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/tencent/liteav/videodecoder/e;->f:J

    sub-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "] > "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iput-wide v4, p0, Lcom/tencent/liteav/videodecoder/e;->g:J

    .line 443
    :cond_1
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/e;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 444
    iput-wide v4, p0, Lcom/tencent/liteav/videodecoder/e;->g:J

    .line 446
    :cond_2
    iput-wide v4, p0, Lcom/tencent/liteav/videodecoder/e;->f:J

    return-void
.end method

.method private e()V
    .locals 7

    .line 450
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/e;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 451
    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/e;->i:Z

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Video][Decoder] notify HWDecoder error, isH265:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCodecDecoder"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-boolean v1, p0, Lcom/tencent/liteav/videodecoder/e;->j:Z

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/e;->u:Ljava/lang/ref/WeakReference;

    const/16 v2, -0x900

    const-string v3, "h265 Decoding failed"

    invoke-static {v1, v2, v3}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    .line 455
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 456
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x780

    const/16 v5, 0x438

    const/16 v6, 0x14

    .line 457
    invoke-static {v3, v5, v6}, Lcom/tencent/liteav/basic/d/b;->a(III)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 458
    invoke-static {}, Lcom/tencent/liteav/basic/d/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "VideoDecoder: hevc hardware decoder error. %s, %d, %d"

    .line 455
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 459
    invoke-static {v3, v0, v1, v4}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->u:Ljava/lang/ref/WeakReference;

    const/16 v1, 0x83a

    const-string v2, "Failed to enable hardware decoding\uff0cuse software decoding."

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->r:Lcom/tencent/liteav/videodecoder/g;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 464
    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/g;->onDecodeFailed(I)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 470
    iget v0, p0, Lcom/tencent/liteav/videodecoder/e;->l:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 471
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->e()V

    const/4 v0, 0x0

    .line 472
    iput v0, p0, Lcom/tencent/liteav/videodecoder/e;->l:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 474
    iput v0, p0, Lcom/tencent/liteav/videodecoder/e;->l:I

    :goto_0
    return-void
.end method


# virtual methods
.method public GetDecodeCost()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/tencent/liteav/videodecoder/e;->p:I

    return v0
.end method

.method public a(II)V
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 144
    iput p1, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    .line 145
    iput p2, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decode: init with video size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/tencent/liteav/videodecoder/e;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/tencent/liteav/videodecoder/e;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecDecoder"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->q:Lorg/json/JSONArray;

    return-void
.end method

.method protected a(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 479
    iget p1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public config(Landroid/view/Surface;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->k:Landroid/view/Surface;

    const/4 p1, 0x0

    return p1
.end method

.method public decode(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 3

    .line 86
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->a(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videodecoder/e;->a(Z)V

    .line 87
    iget v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videodecoder/e;->b(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode: doDecode Exception!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_2
    return-void
.end method

.method public enableLimitDecCache(Z)V
    .locals 2

    .line 138
    iput-boolean p1, p0, Lcom/tencent/liteav/videodecoder/e;->t:Z

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode: enable limit dec cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecDecoder"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/tencent/liteav/videodecoder/g;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->r:Lcom/tencent/liteav/videodecoder/g;

    return-void
.end method

.method public setNotifyListener(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/e;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/liteav/videodecoder/e;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    move-result p1

    return p1
.end method

.method public stop()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/e;->a()V

    return-void
.end method
