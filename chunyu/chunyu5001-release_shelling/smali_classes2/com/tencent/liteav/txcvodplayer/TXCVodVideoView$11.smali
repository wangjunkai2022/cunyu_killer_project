.class Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;IIILjava/lang/Object;)Z
    .locals 3

    const/16 p1, 0x3ee

    const/4 v0, 0x1

    if-eq p2, p1, :cond_9

    const/16 p1, 0x7d3

    const-string v1, "TXCVodVideoView"

    if-eq p2, p1, :cond_8

    const/16 p1, 0x7d7

    if-eq p2, p1, :cond_7

    const/16 p1, 0x7db

    if-eq p2, p1, :cond_5

    const/16 p1, 0x7de

    if-eq p2, p1, :cond_3

    const/16 p1, 0x7ea

    if-eq p2, p1, :cond_2

    const-string p1, ",error:"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 p4, 0x0

    if-eqz p5, :cond_0

    .line 591
    instance-of v2, p5, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 592
    move-object p4, p5

    check-cast p4, Ljava/lang/String;

    .line 595
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dns resolved url:"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_a

    .line 598
    iget-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p4, "dns resolved"

    invoke-static {p3, p2, p1, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "Video data received"

    const-string p4, "first video packet"

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    if-eqz p5, :cond_1

    .line 576
    instance-of v2, p5, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    check-cast p5, Ljava/lang/String;

    invoke-static {v2, p5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCP Connect ServerIp:"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",port:"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_a

    .line 585
    iget-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p4, "tcp open"

    invoke-static {p3, p2, p1, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "EVT_AUDIO_JITTER_STATE_FIRST_PLAY"

    .line 535
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "Audio first play"

    const-string p4, "audio start"

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "EVT_VOD_PLAY_LOADING_END: eof "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p4, "Buffer ended"

    const-string p5, "loading end"

    invoke-static {p1, p2, p4, p5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 548
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->o()Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "m3u8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_0

    .line 552
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_a

    .line 553
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 p3, 0x7d4

    const-string p4, "Playback started"

    const-string p5, "playing"

    invoke-static {p1, p3, p4, p5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 555
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 556
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 561
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "EVT_VIDEO_CHANGE_ROTATION: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p2, p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 563
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean p2, p2, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p2

    if-lez p2, :cond_6

    .line 564
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 565
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 566
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoRotation(I)V

    .line 568
    :cond_6
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Video angle "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "rotation "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string p1, "EVT_VIDEO_PLAY_LOADING"

    .line 540
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "Buffer started"

    const-string p4, "loading start"

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string p1, "EVT_RENDER_FIRST_I_FRAME"

    .line 528
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "VOD displayed the first frame"

    const-string p4, "render start"

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRate(F)V

    .line 531
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z

    goto :goto_0

    .line 603
    :cond_9
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz p5, :cond_a

    .line 605
    instance-of p1, p5, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;

    if-eqz p1, :cond_a

    .line 606
    check-cast p5, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;

    .line 608
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p5, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->extraInfo:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 609
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p3, "cdnip"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 611
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7e0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
