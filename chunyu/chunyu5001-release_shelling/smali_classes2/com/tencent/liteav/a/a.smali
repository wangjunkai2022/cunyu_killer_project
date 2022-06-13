.class public Lcom/tencent/liteav/a/a;
.super Ljava/lang/Object;
.source "TXCStreamRecord.java"

# interfaces
.implements Lcom/tencent/liteav/audio/f;
.implements Lcom/tencent/liteav/videoencoder/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/a/a$a;,
        Lcom/tencent/liteav/a/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/audio/impl/Record/b;

.field private b:Lcom/tencent/liteav/videoencoder/b;

.field private c:Lcom/tencent/liteav/muxer/c;

.field private d:Lcom/tencent/liteav/a/a$a;

.field private e:Lcom/tencent/liteav/a/a$b;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/tencent/liteav/a/a;->f:J

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lcom/tencent/liteav/a/a;->g:J

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/tencent/liteav/a/a;->h:Z

    .line 94
    new-instance v0, Lcom/tencent/liteav/a/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/a/a$1;-><init>(Lcom/tencent/liteav/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/a/a;->i:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/tencent/liteav/audio/impl/Record/b;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/impl/Record/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/a/a;->a:Lcom/tencent/liteav/audio/impl/Record/b;

    .line 130
    new-instance v0, Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {v0}, Lcom/tencent/liteav/videoencoder/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/a/a;->b:Lcom/tencent/liteav/videoencoder/b;

    .line 135
    new-instance v0, Lcom/tencent/liteav/muxer/c;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/tencent/liteav/muxer/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/liteav/a/a;->c:Lcom/tencent/liteav/muxer/c;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/a/a;)Lcom/tencent/liteav/a/a$b;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tencent/liteav/a/a;->e:Lcom/tencent/liteav/a/a$b;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 227
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 229
    :cond_2
    :goto_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 231
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 206
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v3, Ljava/util/Date;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {p0}, Lcom/tencent/liteav/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 213
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TXUGC_%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TXCStreamRecord"

    const-string v1, "create file path failed."

    .line 217
    invoke-static {p1, v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/liteav/a/a;)Lcom/tencent/liteav/a/a$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    return-object p0
.end method

.method private c(I)Ljava/lang/String;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "Video encoding failed"

    goto :goto_0

    :pswitch_1
    const-string p1, "Video encoding failed to initialize"

    goto :goto_0

    :pswitch_2
    const-string p1, "Illegal video input parameters"

    goto :goto_0

    :pswitch_3
    const-string p1, "Video encoder is not activated"

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object p1

    :pswitch_data_0
    .packed-switch 0x989682
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/tencent/liteav/a/a;->h:Z

    .line 171
    iget-object v1, p0, Lcom/tencent/liteav/a/a;->a:Lcom/tencent/liteav/audio/impl/Record/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/Record/b;->a()V

    .line 172
    iget-object v1, p0, Lcom/tencent/liteav/a/a;->b:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoencoder/b;->stop()V

    .line 173
    iget-object v1, p0, Lcom/tencent/liteav/a/a;->c:Lcom/tencent/liteav/muxer/c;

    invoke-virtual {v1}, Lcom/tencent/liteav/muxer/c;->b()I

    move-result v1

    const/4 v2, 0x2

    if-gez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/tencent/liteav/a/a;->i:Landroid/os/Handler;

    const/4 v3, 0x1

    const-string v4, "mp4\u5408\u6210\u5931\u8d25"

    invoke-static {v1, v2, v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/a/a;->i:Landroid/os/Handler;

    const-string v3, ""

    invoke-static {v1, v2, v0, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IJ)V
    .locals 6

    .line 188
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->b:Lcom/tencent/liteav/videoencoder/b;

    iget-object v1, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget v2, v1, Lcom/tencent/liteav/a/a$a;->a:I

    iget-object v1, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget v3, v1, Lcom/tencent/liteav/a/a$a;->b:I

    move v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videoencoder/b;->pushVideoFrame(IIIJ)J

    return-void
.end method

.method public a(IJJ)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/media/MediaFormat;)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->c:Lcom/tencent/liteav/muxer/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/muxer/c;->a(Landroid/media/MediaFormat;)V

    .line 303
    iget-object p1, p0, Lcom/tencent/liteav/a/a;->c:Lcom/tencent/liteav/muxer/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/muxer/c;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/tencent/liteav/a/a;->c:Lcom/tencent/liteav/muxer/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/muxer/c;->a()I

    move-result p1

    if-gez p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/tencent/liteav/a/a;->i:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "mp4 wrapper failed to start"

    invoke-static {p1, v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/a/a$a;)V
    .locals 8

    .line 144
    iput-object p1, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Lcom/tencent/liteav/a/a;->f:J

    const-wide/16 v0, -0x1

    .line 146
    iput-wide v0, p0, Lcom/tencent/liteav/a/a;->g:J

    .line 148
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->c:Lcom/tencent/liteav/muxer/c;

    iget-object v1, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget-object v1, v1, Lcom/tencent/liteav/a/a$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/muxer/c;->a(Ljava/lang/String;)V

    .line 150
    iget v0, p1, Lcom/tencent/liteav/a/a$a;->h:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v0, p1, Lcom/tencent/liteav/a/a$a;->i:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/tencent/liteav/a/a$a;->j:I

    if-lez v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/tencent/liteav/a/a;->a:Lcom/tencent/liteav/audio/impl/Record/b;

    const/16 v3, 0xa

    iget v4, p1, Lcom/tencent/liteav/a/a$a;->i:I

    iget v5, p1, Lcom/tencent/liteav/a/a$a;->h:I

    iget v6, p1, Lcom/tencent/liteav/a/a$a;->j:I

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/liteav/audio/impl/Record/b;->a(IIIILjava/lang/ref/WeakReference;)V

    .line 152
    iget-object p1, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget p1, p1, Lcom/tencent/liteav/a/a$a;->i:I

    iget-object v0, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget v0, v0, Lcom/tencent/liteav/a/a$a;->h:I

    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/tencent/liteav/basic/util/h;->a(III)Landroid/media/MediaFormat;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->c:Lcom/tencent/liteav/muxer/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/muxer/c;->b(Landroid/media/MediaFormat;)V

    .line 154
    iput-boolean v1, p0, Lcom/tencent/liteav/a/a;->h:Z

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/a/a;->b:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videoencoder/b;->setListener(Lcom/tencent/liteav/videoencoder/d;)V

    .line 158
    new-instance p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    invoke-direct {p1}, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget v0, v0, Lcom/tencent/liteav/a/a$a;->a:I

    iput v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    .line 160
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget v0, v0, Lcom/tencent/liteav/a/a$a;->b:I

    iput v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget v0, v0, Lcom/tencent/liteav/a/a$a;->c:I

    iput v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fps:I

    .line 162
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget-object v0, v0, Lcom/tencent/liteav/a/a$a;->e:Ljava/lang/Object;

    iput-object v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->glContext:Ljava/lang/Object;

    .line 163
    iput-boolean v1, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->annexb:Z

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->appendSpsPps:Z

    .line 165
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->b:Lcom/tencent/liteav/videoencoder/b;

    iget-object v1, p0, Lcom/tencent/liteav/a/a;->d:Lcom/tencent/liteav/a/a$a;

    iget v1, v1, Lcom/tencent/liteav/a/a$a;->d:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->setBitrate(I)V

    .line 166
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->b:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoencoder/b;->start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I

    return-void
.end method

.method public a(Lcom/tencent/liteav/a/a$b;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tencent/liteav/a/a;->e:Lcom/tencent/liteav/a/a$b;

    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/structs/TXSNALPacket;I)V
    .locals 8

    if-nez p2, :cond_1

    .line 285
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->c:Lcom/tencent/liteav/muxer/c;

    iget-object v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    const/4 v2, 0x0

    iget-object p2, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    array-length v3, p2

    iget-wide v4, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iget-object p2, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/muxer/c;->b([BIIJI)V

    .line 286
    iget-wide v0, p0, Lcom/tencent/liteav/a/a;->g:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    .line 287
    iget-wide v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iput-wide v0, p0, Lcom/tencent/liteav/a/a;->g:J

    .line 289
    :cond_0
    iget-wide v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iget-wide v2, p0, Lcom/tencent/liteav/a/a;->f:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    .line 291
    iget-object p2, p0, Lcom/tencent/liteav/a/a;->i:Landroid/os/Handler;

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iget-wide v4, p0, Lcom/tencent/liteav/a/a;->g:J

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p2, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    iget-wide p1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iput-wide p1, p0, Lcom/tencent/liteav/a/a;->f:J

    goto :goto_0

    .line 295
    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/liteav/a/a;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "video encode error! errmsg: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCStreamRecord"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a([BJ)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/tencent/liteav/a/a;->h:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->a:Lcom/tencent/liteav/audio/impl/Record/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/audio/impl/Record/b;->a([BJ)V

    goto :goto_0

    :cond_0
    const-string p1, "TXCStreamRecord"

    const-string p2, "drainAudio fail because of not init yet!"

    .line 196
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a([BJIII)V
    .locals 0

    return-void
.end method

.method public a([BJIIIZ)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b([BJIII)V
    .locals 7

    .line 274
    iget-object v0, p0, Lcom/tencent/liteav/a/a;->c:Lcom/tencent/liteav/muxer/c;

    array-length v3, p1

    const-wide/16 p4, 0x3e8

    mul-long v4, p2, p4

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/muxer/c;->a([BIIJI)V

    return-void
.end method
