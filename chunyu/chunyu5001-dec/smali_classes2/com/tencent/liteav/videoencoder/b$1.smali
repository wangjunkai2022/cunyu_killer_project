.class Lcom/tencent/liteav/videoencoder/b$1;
.super Ljava/lang/Object;
.source "TXCHWVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoencoder/b;->start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

.field final synthetic b:Lcom/tencent/liteav/videoencoder/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    iput-object p2, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v0, v0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderMode:I

    const-string v1, "unknown"

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "CQ"

    goto :goto_0

    :cond_1
    const-string v0, "VBR"

    goto :goto_0

    :cond_2
    const-string v0, "CBR"

    .line 78
    :goto_0
    iget-object v5, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v5, v5, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    if-eq v5, v3, :cond_5

    if-eq v5, v4, :cond_4

    if-eq v5, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "High"

    goto :goto_1

    :cond_4
    const-string v1, "Main"

    goto :goto_1

    :cond_5
    const-string v1, "Baseline"

    :goto_1
    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    .line 91
    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    .line 93
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v6, v6, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v6, v6, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v6, v6, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fps:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x4

    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v6, v6, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->bitrate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x5

    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v6, v6, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->gop:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x6

    aput-object v0, v5, v2

    const/4 v0, 0x7

    aput-object v1, v5, v0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget-boolean v1, v1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->bMultiRef:Z

    const-string v2, "true"

    const-string v6, "false"

    if-eqz v1, :cond_6

    move-object v1, v2

    goto :goto_2

    :cond_6
    move-object v1, v6

    :goto_2
    aput-object v1, v5, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v1, v1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->streamType:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget-boolean v1, v1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->isH265EncoderEnabled:Z

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v6

    :goto_3
    aput-object v2, v5, v0

    const-string v0, "VideoEncoder[%d]: Start [type:hardware][resolution:%d*%d][fps:%d][bitrate:%dkbps][gop:%d][rateControl:%s][profile:%s][rps:%s][streamType:%d][enable hevc:%s]"

    .line 91
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 95
    invoke-static {v4, v0, v1, v7}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCHWVideoEncoder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoencoder/b;->mInit:Z

    if-eqz v0, :cond_8

    .line 99
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;)V

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-array v0, v4, [Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    iget v1, v1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->streamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "VideoEncoder[%d]: Start successfully, streamType:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "streamType: 2-big, 3-small, 7-sub"

    invoke-static {v4, v0, v1, v7}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    const v1, 0x989684

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->callDelegate(I)V

    :goto_4
    return-void
.end method
