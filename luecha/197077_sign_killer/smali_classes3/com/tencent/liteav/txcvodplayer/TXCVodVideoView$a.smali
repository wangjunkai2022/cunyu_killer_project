.class Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;
.super Landroid/os/Handler;
.source "TXCVodVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/os/Looper;)V
    .locals 0

    .line 1222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p2, 0x1f4

    .line 1218
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->b:I

    const-string p2, "TXCVodeVideoView_Eventhandler"

    .line 1219
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->c:Ljava/lang/String;

    .line 1223
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1228
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_6

    .line 1229
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1232
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "TXCVodeVideoView_Eventhandler"

    const-wide/16 v3, 0x3e8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 1292
    :pswitch_0
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide v1

    .line 1293
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1294
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getBufferDuration()J

    move-result-wide v5

    .line 1295
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v7

    int-to-long v7, v7

    .line 1297
    div-long v9, v1, v3

    long-to-int v9, v9

    const-string v10, "EVT_PLAY_PROGRESS"

    invoke-virtual {p1, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1298
    div-long v9, v7, v3

    long-to-int v9, v9

    const-string v10, "EVT_PLAY_DURATION"

    invoke-virtual {p1, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1299
    div-long v3, v5, v3

    long-to-int v3, v3

    const-string v4, "EVT_PLAYABLE_DURATION"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    long-to-int v1, v1

    const-string v2, "EVT_PLAY_PROGRESS_MS"

    .line 1300
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    long-to-int v1, v7

    const-string v2, "EVT_PLAY_DURATION_MS"

    .line 1301
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    long-to-int v1, v5

    const-string v2, "EVT_PLAYABLE_DURATION_MS"

    .line 1302
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1303
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1304
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getRate()F

    move-result v1

    const-string v2, "EVT_PLAYABLE_RATE"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1306
    :cond_1
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object v1

    const/16 v2, 0x7d5

    invoke-interface {v1, v2, p1}, Lcom/tencent/liteav/txcplayer/e;->a(ILandroid/os/Bundle;)V

    .line 1309
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1310
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->k()I

    move-result p1

    if-gtz p1, :cond_2

    .line 1311
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p1

    const/16 v1, 0x1f4

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/txcplayer/h;->c(I)V

    :cond_2
    const/16 p1, 0x67

    .line 1313
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->k()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :pswitch_1
    const/4 p1, 0x1

    .line 1286
    invoke-static {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)V

    const/16 p1, 0x837

    const-string v1, "VOD network reconnected"

    const-string v2, "reconnect"

    .line 1287
    invoke-static {v0, p1, v1, v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1272
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x7dd

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "TXCVodVideoView handleMessage:MSG_PLAY_EVENT:EVT_VOD_PLAY_PREPARED"

    .line 1275
    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    :goto_0
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/txcplayer/e;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    :pswitch_3
    const/4 p1, 0x0

    if-nez v0, :cond_4

    return-void

    .line 1242
    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v1

    const/16 v5, 0xce

    invoke-interface {v1, v5}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v5

    long-to-float v1, v5

    .line 1243
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getCurrentPosition()J

    move-result-wide v5

    .line 1244
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v7

    const/16 v8, 0xd0

    invoke-interface {v7, v8}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_5

    mul-long/2addr v7, v3

    .line 1246
    div-long/2addr v7, v5

    long-to-float p1, v7

    .line 1248
    :cond_5
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v3

    const/16 v4, 0x12e

    invoke-interface {v3, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v3

    .line 1249
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v5

    const/16 v6, 0x12d

    invoke-interface {v5, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v5

    .line 1250
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v7

    const/16 v8, 0x12f

    invoke-interface {v7, v8}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    move-result-wide v7

    .line 1251
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TXCVodVideoView handleMessage:MSG_UPDATE_NET_STATUS:fps"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ":dps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ":cachedBytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ":bitRate:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ":tcpSpeed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "fps"

    .line 1256
    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "dps"

    .line 1257
    invoke-virtual {v9, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "cachedBytes"

    .line 1258
    invoke-virtual {v9, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "bitRate"

    .line 1259
    invoke-virtual {v9, p1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "tcpSpeed"

    .line 1260
    invoke-virtual {v9, p1, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1261
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    move-result-object p1

    invoke-interface {p1, v9}, Lcom/tencent/liteav/txcplayer/e;->a(Landroid/os/Bundle;)V

    const/16 p1, 0x64

    const-wide/16 v0, 0x1f4

    .line 1263
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_UPDATE_NET_STATUS exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
