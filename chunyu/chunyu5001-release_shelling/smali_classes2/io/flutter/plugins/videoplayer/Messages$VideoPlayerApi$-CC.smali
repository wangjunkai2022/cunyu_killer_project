.class public final synthetic Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi$-CC;
.super Ljava/lang/Object;
.source "Messages.java"


# direct methods
.method public static synthetic lambda$setup$0(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 358
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 360
    :try_start_0
    invoke-interface {p0}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->initialize()V

    const-string p0, "result"

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 363
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "error"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :goto_0
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$1(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    move-result-object p1

    .line 384
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->create(Lio/flutter/plugins/videoplayer/Messages$CreateMessage;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    move-result-object p0

    const-string p1, "result"

    .line 385
    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->toMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 387
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$10(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 596
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 599
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    move-result-object p1

    .line 600
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->setMixWithOthers(Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;)V

    const-string p0, "result"

    const/4 p1, 0x0

    .line 601
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 603
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$2(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 407
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    move-result-object p1

    .line 408
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->dispose(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V

    const-string p0, "result"

    const/4 p1, 0x0

    .line 409
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 411
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$3(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    move-result-object p1

    .line 432
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->setLooping(Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;)V

    const-string p0, "result"

    const/4 p1, 0x0

    .line 433
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 435
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$4(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 455
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    move-result-object p1

    .line 456
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->setVolume(Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;)V

    const-string p0, "result"

    const/4 p1, 0x0

    .line 457
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 459
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$5(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 479
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;

    move-result-object p1

    .line 480
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->setPlaybackSpeed(Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;)V

    const-string p0, "result"

    const/4 p1, 0x0

    .line 481
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 483
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$6(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 503
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    move-result-object p1

    .line 504
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->play(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V

    const-string p0, "result"

    const/4 p1, 0x0

    .line 505
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 507
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$7(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    move-result-object p1

    .line 528
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->position(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    move-result-object p0

    const-string p1, "result"

    .line 529
    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->toMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 531
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$8(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 548
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 551
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    move-result-object p1

    .line 552
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->seekTo(Lio/flutter/plugins/videoplayer/Messages$PositionMessage;)V

    const-string p0, "result"

    const/4 p1, 0x0

    .line 553
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 555
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$9(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 575
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    move-result-object p1

    .line 576
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;->pause(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V

    const-string p0, "result"

    const/4 p1, 0x0

    .line 577
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 579
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->access$000(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V
    .locals 4

    .line 350
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v1, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v1}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v2, "dev.flutter.pigeon.VideoPlayerApi.initialize"

    invoke-direct {v0, p0, v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 356
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$SMZHXDFxrH2MGjdkGEgW1D9JKtQ;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$SMZHXDFxrH2MGjdkGEgW1D9JKtQ;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 372
    :goto_0
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.create"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_1

    .line 378
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$S5QkjE-sAPUEJf0DNlrYNZpRFMY;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$S5QkjE-sAPUEJf0DNlrYNZpRFMY;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1

    .line 392
    :cond_1
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 396
    :goto_1
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.dispose"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_2

    .line 402
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$NxPd8Ej6aH_Ii0jeHPdu0DjsqTk;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$NxPd8Ej6aH_Ii0jeHPdu0DjsqTk;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_2

    .line 416
    :cond_2
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 420
    :goto_2
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.setLooping"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_3

    .line 426
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$yTZGCiWTkR3Imon20L5erE2n9o8;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$yTZGCiWTkR3Imon20L5erE2n9o8;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_3

    .line 440
    :cond_3
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 444
    :goto_3
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.setVolume"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_4

    .line 450
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$wKxw3gth52K9ctjxJbs8GRHLuDI;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$wKxw3gth52K9ctjxJbs8GRHLuDI;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_4

    .line 464
    :cond_4
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 468
    :goto_4
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.setPlaybackSpeed"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_5

    .line 474
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$kKVK649-BdsUS6RfEEnbNfvbzU4;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$kKVK649-BdsUS6RfEEnbNfvbzU4;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_5

    .line 488
    :cond_5
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 492
    :goto_5
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.play"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_6

    .line 498
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$NmItGhtdJ4cDwORMuvLSZqJTFug;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$NmItGhtdJ4cDwORMuvLSZqJTFug;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_6

    .line 512
    :cond_6
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 516
    :goto_6
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.position"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_7

    .line 522
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$PYfvdNt_vvT1yTcz_teigwkeGhs;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$PYfvdNt_vvT1yTcz_teigwkeGhs;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_7

    .line 536
    :cond_7
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 540
    :goto_7
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.seekTo"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_8

    .line 546
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$w7wB_XQPhFUyF8KPeQqrvUaycEI;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$w7wB_XQPhFUyF8KPeQqrvUaycEI;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_8

    .line 560
    :cond_8
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 564
    :goto_8
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.pause"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_9

    .line 570
    new-instance v2, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$RQ6F4SL8J8NDjINVoobuRm9LBhI;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$RQ6F4SL8J8NDjINVoobuRm9LBhI;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_9

    .line 584
    :cond_9
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 588
    :goto_9
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v2}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    const-string v3, "dev.flutter.pigeon.VideoPlayerApi.setMixWithOthers"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_a

    .line 594
    new-instance p0, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$JLVSgEmQtWE3OyTJRNfwnGw6sO8;

    invoke-direct {p0, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$Messages$VideoPlayerApi$JLVSgEmQtWE3OyTJRNfwnGw6sO8;-><init>(Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_a

    .line 608
    :cond_a
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_a
    return-void
.end method
