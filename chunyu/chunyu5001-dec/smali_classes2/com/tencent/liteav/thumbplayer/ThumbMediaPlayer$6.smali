.class Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$6;
.super Ljava/lang/Object;
.source "ThumbMediaPlayer.java"

# interfaces
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioFrameOutputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setConfigOpenAudioTunnel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$6;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPAudioFrameBuffer;)V
    .locals 11

    .line 1020
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$6;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, [B

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "nativeWriteDataToTunnel"

    invoke-static {p1, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->access$200(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1023
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$6;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    invoke-static {v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->access$300(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$6;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->access$300(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    iget v10, p2, Lcom/tencent/thumbplayer/api/TPAudioFrameBuffer;->sampleRate:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    iget v10, p2, Lcom/tencent/thumbplayer/api/TPAudioFrameBuffer;->channels:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v2, v9, v6

    .line 1027
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/api/TPAudioFrameBuffer;->getData()[[B

    move-result-object v10

    aget-object v10, v10, v3

    aput-object v10, v9, v7

    .line 1026
    invoke-static {v1, p1, v9}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->access$400(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$6;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    invoke-static {v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->access$500(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)I

    move-result v1

    if-eq v1, v8, :cond_1

    .line 1033
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$6;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->access$500(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v3

    iget v8, p2, Lcom/tencent/thumbplayer/api/TPAudioFrameBuffer;->sampleRate:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v4

    iget v4, p2, Lcom/tencent/thumbplayer/api/TPAudioFrameBuffer;->channels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    aput-object v2, v0, v6

    .line 1034
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/api/TPAudioFrameBuffer;->getData()[[B

    move-result-object p2

    aget-object p2, p2, v3

    aput-object p2, v0, v7

    .line 1033
    invoke-static {v1, p1, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->access$400(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
