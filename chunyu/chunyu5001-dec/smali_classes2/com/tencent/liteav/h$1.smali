.class Lcom/tencent/liteav/h$1;
.super Ljava/lang/Object;
.source "TXCVodPlayer.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/h;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/h;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 11

    .line 513
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/16 v1, -0x901

    const/16 v2, 0x7de

    const/16 v3, 0x7dd

    const/16 v4, 0x83a

    const/16 v5, 0x837

    const/16 v6, 0x7ea

    const/16 v7, 0x7db

    const/16 v8, 0x7d8

    const/16 v9, -0x8fd

    const-string v10, "description"

    if-eq p1, v9, :cond_12

    const-string v9, "EVT_PARAM1"

    if-eq p1, v7, :cond_11

    if-eq p1, v6, :cond_10

    if-eq p1, v5, :cond_f

    const/4 v5, 0x0

    if-eq p1, v4, :cond_d

    const-string v4, "TXVodPlayer"

    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_b

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 653
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "miss match event "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_0
    return-void

    :pswitch_1
    const-string p1, "vod play dns resolved"

    .line 633
    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->j()V

    return-void

    :pswitch_2
    const-string p1, "vod play first video packet"

    .line 637
    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->k()V

    return-void

    :pswitch_3
    const-string p1, "vod play tcp connect success"

    .line 629
    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->i()V

    return-void

    :pswitch_4
    const/16 v1, 0x7d9

    .line 584
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->e(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/renderer/a;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 585
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->e(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/renderer/a;

    move-result-object p1

    iget-object v2, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v2}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v3}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/renderer/a;->c(II)V

    goto/16 :goto_8

    :pswitch_5
    move v1, v8

    goto/16 :goto_8

    :pswitch_6
    const/16 v1, 0x7d7

    .line 580
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->l()V

    goto/16 :goto_8

    .line 569
    :pswitch_7
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->c()V

    const/16 p1, 0x7d6

    .line 571
    iget-object v2, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    iget-boolean v2, v2, Lcom/tencent/liteav/h;->a:Z

    if-eqz v2, :cond_0

    .line 572
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b()V

    .line 573
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/f;->a(Z)V

    const-string p1, "loop play"

    .line 574
    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    move v1, p1

    goto/16 :goto_8

    :pswitch_8
    const/16 v1, 0x7d5

    .line 598
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    const-string v2, "EVT_PLAY_DURATION"

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "EVT_PLAY_PROGRESS"

    .line 599
    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 598
    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/f;->a(II)V

    goto/16 :goto_8

    :pswitch_9
    const-string p1, "vod onPlayEvent PLAY_EVT_PLAY_BEGIN"

    .line 521
    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7d4

    goto/16 :goto_8

    :pswitch_a
    const-string p1, "vod onPlayEvent EVT_RENDER_FIRST_I_FRAME"

    .line 525
    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->h()V

    .line 527
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->b(Lcom/tencent/liteav/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 530
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1, v1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;Z)Z

    const/16 p1, 0x7d3

    .line 532
    iget-object v2, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v2}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/f;->g()V

    .line 534
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "EVT_ID"

    .line 535
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 536
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v3

    const-string v6, "EVT_TIME"

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 537
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v3

    const-string v6, "EVT_UTC_TIME"

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 540
    iget-object v3, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v3}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getMediaInfo()Lcom/tencent/liteav/txcplayer/f;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 541
    iget-object v4, v3, Lcom/tencent/liteav/txcplayer/f;->c:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 542
    iget-object v3, v3, Lcom/tencent/liteav/txcplayer/f;->c:Ljava/lang/String;

    const-string v4, "hevc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v5

    .line 546
    :goto_1
    iget-object v4, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v4}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getPlayerType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v1, :cond_7

    if-nez v3, :cond_4

    .line 548
    iget-object v4, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v4}, Lcom/tencent/liteav/h;->d(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/liteav/txcplayer/h;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Enables hardware decoding"

    goto :goto_2

    :cond_3
    const-string v4, "Enables software decoding"

    :goto_2
    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 550
    :cond_4
    iget-object v4, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v4}, Lcom/tencent/liteav/h;->d(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/liteav/txcplayer/h;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Enables hardware decoding H265"

    goto :goto_3

    :cond_5
    const-string v4, "Enables software decoding h265"

    :goto_3
    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 552
    :goto_4
    iget-object v4, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v4}, Lcom/tencent/liteav/h;->d(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/liteav/txcplayer/h;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_5

    :cond_6
    move v4, v6

    :goto_5
    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "hevc"

    .line 553
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :cond_7
    const-string v4, "Enables hardware decoding"

    .line 555
    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {v2, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    :goto_6
    iget-object v4, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v4}, Lcom/tencent/liteav/h;->d(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/liteav/txcplayer/h;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    const/4 v1, 0x3

    goto :goto_7

    :cond_9
    if-nez v3, :cond_a

    move v1, v5

    goto :goto_7

    :cond_a
    move v1, v6

    .line 564
    :goto_7
    iget-object v3, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v3}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/f;->b(I)V

    .line 565
    invoke-virtual {p0, v8, v2}, Lcom/tencent/liteav/h$1;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, -0x8ff

    .line 609
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    const/16 v2, -0x8ff

    const-string v3, "file not found"

    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/f;->a(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_c
    const/16 v1, -0x900

    .line 617
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    const/16 v2, -0x900

    const-string v3, "h265 decode failed"

    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/f;->a(ILjava/lang/String;)V

    .line 618
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->b(Lcom/tencent/liteav/h;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 619
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->d(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/tencent/liteav/txcplayer/h;->a(Z)V

    goto :goto_8

    .line 613
    :pswitch_d
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    const-string v2, "HLS decrypt key error"

    invoke-virtual {p1, v1, v2}, Lcom/tencent/liteav/f;->a(ILjava/lang/String;)V

    goto :goto_8

    .line 644
    :cond_b
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->f()V

    .line 647
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->h()V

    move v1, v2

    goto :goto_8

    :cond_c
    const-string p1, "vod onPlayEvent EVT_VOD_PLAY_PREPARED"

    .line 517
    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_8

    .line 624
    :cond_d
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->b(Lcom/tencent/liteav/h;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 625
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->d(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/tencent/liteav/txcplayer/h;->a(Z)V

    :cond_e
    move v1, v4

    goto :goto_8

    :cond_f
    move v1, v5

    goto :goto_8

    :cond_10
    move v1, v6

    goto :goto_8

    .line 590
    :cond_11
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getMetaRotationDegree()I

    move-result p1

    invoke-virtual {v0, v9, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v1, v7

    goto :goto_8

    .line 594
    :cond_12
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    const-string v1, "network disconnect, has retry reconnect, but still failed!"

    invoke-virtual {p1, v9, v1}, Lcom/tencent/liteav/f;->a(ILjava/lang/String;)V

    move v1, v9

    :cond_13
    :goto_8
    const-string p1, ""

    .line 656
    invoke-virtual {p2, v10, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EVT_MSG"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    iget-object p1, p1, Lcom/tencent/liteav/h;->e:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_14

    .line 658
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    iget-object p1, p1, Lcom/tencent/liteav/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/basic/c/b;

    if-eqz p1, :cond_14

    .line 660
    invoke-interface {p1, v1, v0}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x901
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 667
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 670
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->a()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 672
    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    const/4 v3, 0x1

    .line 673
    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CPU_USAGE"

    .line 676
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fps"

    .line 677
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "VIDEO_FPS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dps"

    .line 678
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "VIDEO_DPS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "tcpSpeed"

    .line 679
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    const-string v2, "NET_SPEED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cachedBytes"

    .line 680
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int p1, v1

    div-int/lit16 p1, p1, 0x3e8

    const-string v1, "VIDEO_CACHE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 681
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoWidth()I

    move-result p1

    const-string v1, "VIDEO_WIDTH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 682
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoHeight()I

    move-result p1

    const-string v1, "VIDEO_HEIGHT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 683
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getServerIp()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SERVER_IP"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    invoke-static {v1}, Lcom/tencent/liteav/h;->c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getServerIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/f;->e(Ljava/lang/String;)V

    .line 686
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    iget-object p1, p1, Lcom/tencent/liteav/h;->e:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 687
    iget-object p1, p0, Lcom/tencent/liteav/h$1;->a:Lcom/tencent/liteav/h;

    iget-object p1, p1, Lcom/tencent/liteav/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/basic/c/b;

    if-eqz p1, :cond_0

    const/16 v1, 0x3a99

    .line 689
    invoke-interface {p1, v1, v0}, Lcom/tencent/liteav/basic/c/b;->onNotifyEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
