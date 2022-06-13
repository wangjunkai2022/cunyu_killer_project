.class Lcom/tencent/rtmp/TXVodPlayer$1;
.super Ljava/lang/Object;
.source "TXVodPlayer.java"

# interfaces
.implements Lcom/tencent/liteav/network/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/TXVodPlayer;->startPlay(Lcom/tencent/rtmp/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/TXVodPlayer;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/TXVodPlayer;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 6

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail: errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/rtmp/TXLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, -0x902

    const-string v3, "EVT_ID"

    .line 364
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v3

    const-string v5, "EVT_TIME"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 366
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v3

    const-string v5, "EVT_UTC_TIME"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "EVT_MSG"

    .line 367
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EVT_PARAM1"

    .line 368
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v2, v0}, Lcom/tencent/rtmp/TXVodPlayer;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: eventId: -2306 description:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/liteav/network/g;Lcom/tencent/rtmp/b;)V
    .locals 6

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess: protocol params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/rtmp/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-static {v0}, Lcom/tencent/rtmp/TXVodPlayer;->access$000(Lcom/tencent/rtmp/TXVodPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p2, Lcom/tencent/rtmp/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-static {v0}, Lcom/tencent/rtmp/TXVodPlayer;->access$100(Lcom/tencent/rtmp/TXVodPlayer;)Lcom/tencent/rtmp/TXVodPlayConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    new-instance v2, Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-direct {v2}, Lcom/tencent/rtmp/TXVodPlayConfig;-><init>()V

    invoke-static {v0, v2}, Lcom/tencent/rtmp/TXVodPlayer;->access$102(Lcom/tencent/rtmp/TXVodPlayer;Lcom/tencent/rtmp/TXVodPlayConfig;)Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-static {v0}, Lcom/tencent/rtmp/TXVodPlayer;->access$100(Lcom/tencent/rtmp/TXVodPlayer;)Lcom/tencent/rtmp/TXVodPlayConfig;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXVodPlayConfig;->setOverlayKey(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-static {v0}, Lcom/tencent/rtmp/TXVodPlayer;->access$100(Lcom/tencent/rtmp/TXVodPlayer;)Lcom/tencent/rtmp/TXVodPlayConfig;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXVodPlayConfig;->setOverlayIv(Ljava/lang/String;)V

    .line 322
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 324
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 325
    iget-object v2, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/rtmp/TXVodPlayer;->setToken(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_3
    iget-object v2, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/rtmp/TXVodPlayer;->setToken(Ljava/lang/String;)V

    .line 329
    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, ""

    goto :goto_1

    .line 334
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->k()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v4, "plain"

    .line 340
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "spfileid="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/rtmp/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&spdrmtype="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&spappid="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/rtmp/b;->a()I

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 341
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVodURL: newurl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ;url= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/tencent/rtmp/TXVodPlayer;->startPlay(Ljava/lang/String;)I

    .line 346
    :cond_6
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x7da

    const-string v3, "EVT_ID"

    .line 347
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v3

    const-string v5, "EVT_TIME"

    invoke-virtual {p2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 349
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v3

    const-string v5, "EVT_UTC_TIME"

    invoke-virtual {p2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "EVT_MSG"

    const-string v4, "Requested file information successfully"

    .line 350
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EVT_PLAY_URL"

    .line 351
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EVT_PLAY_COVER_URL"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->d()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EVT_PLAY_NAME"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EVT_PLAY_DESCRIPTION"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/tencent/liteav/network/g;->f()I

    move-result p1

    const-string v0, "EVT_PLAY_DURATION"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer$1;->a:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v2, p2}, Lcom/tencent/rtmp/TXVodPlayer;->onNotifyEvent(ILandroid/os/Bundle;)V

    const-string p1, "onSuccess: Requested file information successfully"

    .line 357
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
