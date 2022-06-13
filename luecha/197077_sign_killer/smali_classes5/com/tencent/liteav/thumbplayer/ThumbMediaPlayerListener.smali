.class Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;
.super Ljava/lang/Object;
.source "ThumbMediaPlayerListener.java"

# interfaces
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioFrameOutputListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioProcessFrameOutputListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnCompletionListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnErrorListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnInfoListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnPreparedListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSeekCompleteListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStateChangeListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStopAsyncCompleteListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleDataListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleFrameOutListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoFrameOutListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoProcessFrameOutputListener;
.implements Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoSizeChangedListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mThumbMediaPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private transferError(II)I
    .locals 8

    const/16 v0, 0x3e7

    const/16 v1, -0x6e

    const/16 v2, -0x3f2

    const/16 v3, -0x3ef

    const/4 v4, 0x1

    if-eq p1, v0, :cond_14

    const/16 v0, 0x3e9

    const-string v5, "h265"

    const-string v6, "hevc"

    const/4 v7, 0x0

    if-eq p1, v0, :cond_12

    const/16 v0, 0x4b0

    if-eq p1, v0, :cond_11

    const/16 v0, 0x514

    if-eq p1, v0, :cond_10

    const/16 v0, 0x5dc

    if-eq p1, v0, :cond_f

    const/16 v0, 0x640

    if-eq p1, v0, :cond_e

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_d

    const/16 v0, 0xfa0

    if-eq p1, v0, :cond_c

    const/16 v0, 0x4ba

    if-eq p1, v0, :cond_a

    const/16 v0, 0x4bb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4c4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4c5

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4ce

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4cf

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 394
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DEMUXER_BUFFERING_TIMEOUT"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 390
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DEMUXER_STREAM"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :sswitch_0
    move v4, v3

    goto/16 :goto_3

    .line 386
    :pswitch_2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DEMUXER_NETWORK"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 382
    :pswitch_3
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DEMUXER_OTHERS"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 320
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "onError:TP_ERROR_TYPE_SYSTEM_PLAYER_OTHERS"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "onError:TP_ERROR_TYPE_SYSTEM_PLAYER_NETWORK"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_1
    const/16 v1, -0x3ec

    goto :goto_1

    :sswitch_2
    const/16 v1, 0xc8

    goto :goto_1

    :sswitch_3
    const/16 v1, 0x64

    :goto_1
    :sswitch_4
    move v4, v1

    goto/16 :goto_3

    .line 432
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DECODER_SUBTITLE_STREAM"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DECODER_SUBTITLE_NOT_SUPPORT"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 424
    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DECODER_VIDEO_STREAM"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_6
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DECODER_VIDEO_NOT_SUPPORT"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_b

    .line 413
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTPPPlayer()Lcom/tencent/thumbplayer/api/ITPPlayer;

    move-result-object p2

    invoke-interface {p2, v7}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPropertyString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 414
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 415
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 416
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyHevcVideoDecoderError()V

    goto :goto_2

    .line 418
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyVideoDecoderError()V

    goto :goto_2

    .line 406
    :cond_9
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DECODER_AUDIO_STREAM"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_a
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DECODER_AUDIO_NOT_SUPPORT"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_2
    :sswitch_5
    move v4, v2

    goto/16 :goto_3

    .line 452
    :cond_c
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DOWNLOAD_PROXY"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 448
    :cond_d
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_TPPLAYER_GENERAL"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 444
    :cond_e
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_PROCESS_VIDEO_OTHERS"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 440
    :cond_f
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_PROCESS_AUDIO_OTHERS"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 436
    :cond_10
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_RENDERER_OTHERS"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 398
    :cond_11
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_DECODER_OTHERS"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 348
    :cond_12
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "onError:TP_ERROR_TYPE_THUMBPLAYER_GENERAL"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p2, :sswitch_data_1

    goto :goto_3

    .line 355
    :sswitch_6
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_15

    .line 357
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTPPPlayer()Lcom/tencent/thumbplayer/api/ITPPlayer;

    move-result-object p2

    invoke-interface {p2, v7}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPropertyString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 358
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 359
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 360
    :cond_13
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyHLSKeyError()V

    goto/16 :goto_0

    .line 316
    :cond_14
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "onError:TP_ERROR_TYPE_UNKONW"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_3
    return v4

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9896e4 -> :sswitch_3
        0x9896ee -> :sswitch_4
        0x989748 -> :sswitch_2
        0x989a6c -> :sswitch_1
        0x989a6f -> :sswitch_0
        0x989a72 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa7ffd1 -> :sswitch_4
        0xa7ffd2 -> :sswitch_4
        0xa80035 -> :sswitch_0
        0xa80036 -> :sswitch_4
        0xa80037 -> :sswitch_0
        0xa80038 -> :sswitch_6
        0xa80099 -> :sswitch_5
        0xa8009a -> :sswitch_5
        0xa80161 -> :sswitch_5
        0xa80162 -> :sswitch_5
    .end sparse-switch
.end method

.method private transferInfo(I)I
    .locals 2

    const/4 v0, 0x3

    const-string v1, "TP_PLAYER_INFO_LONG1_ASYNC_CALL_SWITCH_DEFINITION"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xfb

    if-eq p1, v0, :cond_3

    const/16 v0, 0xfc

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f6

    if-eq p1, v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    .line 235
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_VIDEO_SEI"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_MEDIA_CODEC_INFO"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :pswitch_2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_PRIVATE_HLS_TAG"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :pswitch_3
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_VIDEO_CROP"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :pswitch_4
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_AUDIO_PASS_THROUGH_STOP"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :pswitch_5
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_AUDIO_PASS_THROUGH_START"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :pswitch_6
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG2_DROP_FRAME"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :pswitch_7
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_AUDIO_SW_DECODING_SLOW"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :pswitch_8
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG1_VIDEO_DECODER_TYPE"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :pswitch_9
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG1_AUDIO_DECODER_TYPE"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :pswitch_a
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG1_CLIP_EOS"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :pswitch_b
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_CURRENT_LOOP_END"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :pswitch_c
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_CURRENT_LOOP_START"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :pswitch_d
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_8

    .line 172
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->onReceiveFirstVideoRenderEvent()V

    goto/16 :goto_0

    :pswitch_e
    const/16 p1, 0x7d8

    goto/16 :goto_1

    .line 160
    :pswitch_f
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_FIRST_AUDIO_DECODER_START"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :pswitch_10
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_VIDEO_KEY_PACKET_READ"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :pswitch_11
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_FIRST_CLIP_OPENED"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :sswitch_0
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_BUFFER_TIMEOUT"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :sswitch_1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_PREPARE_TIMEOUT"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :sswitch_2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_NETWORK_SUPPORT_BITRATE"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :sswitch_3
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG1_IS_USE_PROXY"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :sswitch_4
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_NO_MORE_DATA"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :sswitch_5
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_URL_EXPIRED"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :sswitch_6
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_DOWNLOAD_PROGRESS_UPDATE"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :sswitch_7
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_PROTOCOL_UPDATE"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :sswitch_8
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG1_DOWNLOAD_STATUS_UPDATE"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :sswitch_9
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_PLAY_CDN_INFO_UPDATE"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :sswitch_a
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_PLAY_CDN_URL_UPDATE"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :sswitch_b
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_ALL_DOWNLOAD_FINISH"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_8

    const-wide/16 v0, 0x0

    .line 247
    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->updateTcpSpeed(J)V

    goto :goto_0

    .line 241
    :sswitch_c
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG1_PLAYER_TYPE"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :sswitch_d
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_OBJECT_MEDIA_DRM_INFO"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :sswitch_e
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :sswitch_f
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_EOS"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :sswitch_10
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG0_UNKNOWN"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_RETRY_PLAYER_STOP"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_RETRY_PLAYER_START"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG1_ADAPTIVE_SWITCH_DEF_END"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG1_ADAPTIVE_SWITCH_DEF_START"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x7de

    goto :goto_1

    :cond_5
    const/16 p1, 0x7d7

    goto :goto_1

    .line 151
    :cond_6
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "TP_PLAYER_INFO_LONG1_ASYNC_CALL_SELECT_TRACK"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_7
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    :pswitch_12
    const/4 p1, -0x1

    :goto_1
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_10
        0x9a -> :sswitch_f
        0xcf -> :sswitch_e
        0x1f9 -> :sswitch_d
        0x3e8 -> :sswitch_c
        0x3e9 -> :sswitch_b
        0x3ea -> :sswitch_a
        0x3eb -> :sswitch_9
        0x3ec -> :sswitch_8
        0x3ed -> :sswitch_7
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_5
        0x3f0 -> :sswitch_4
        0x3f1 -> :sswitch_3
        0x3f2 -> :sswitch_2
        0x1389 -> :sswitch_1
        0x138a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_12
        :pswitch_d
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x96
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcb
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method attachToPlayer()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTPPPlayer()Lcom/tencent/thumbplayer/api/ITPPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnPreparedListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnPreparedListener;)V

    .line 45
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnCompletionListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnCompletionListener;)V

    .line 46
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnInfoListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnInfoListener;)V

    .line 47
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnErrorListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnErrorListener;)V

    .line 48
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnSeekCompleteListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSeekCompleteListener;)V

    .line 49
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnVideoSizeChangedListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoSizeChangedListener;)V

    .line 50
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnSubtitleDataListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleDataListener;)V

    .line 51
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnSubtitleFrameOutListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleFrameOutListener;)V

    .line 52
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnVideoFrameOutListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoFrameOutListener;)V

    .line 53
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnAudioFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioFrameOutputListener;)V

    .line 54
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnVideoProcessFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoProcessFrameOutputListener;)V

    .line 55
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnAudioProcessFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioProcessFrameOutputListener;)V

    .line 56
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnPlayerStateChangeListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStateChangeListener;)V

    .line 57
    invoke-interface {v0, p0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnStopAsyncCompleteListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStopAsyncCompleteListener;)V

    :cond_0
    return-void
.end method

.method public onAudioFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPAudioFrameBuffer;)V
    .locals 0

    .line 470
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "ThumbMediaPlayerListener onAudioFrameOut"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioProcessFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/api/TPPostProcessFrameBuffer;
    .locals 0

    return-object p2
.end method

.method public onCompletion(Lcom/tencent/thumbplayer/api/ITPPlayer;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnCompletion()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/tencent/thumbplayer/api/ITPPlayer;IIJJ)V
    .locals 4

    const/16 p1, 0x3e8

    if-eq p2, p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    .line 304
    invoke-direct {p0, p2, p3}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->transferError(II)I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThumbMediaPlayerListener onError:errorType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": errorCode:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": arg1:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ": arg2"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int p2, p4

    .line 307
    invoke-virtual {p1, v0, p2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnError(II)Z

    :cond_0
    return-void
.end method

.method public onInfo(Lcom/tencent/thumbplayer/api/ITPPlayer;IJJLjava/lang/Object;)V
    .locals 6

    .line 98
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_7

    .line 100
    invoke-direct {p0, p2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->transferInfo(I)I

    move-result v0

    long-to-int v1, p3

    .line 102
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":arg1:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ": arg2: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ":extraObject: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    .line 103
    instance-of p2, p7, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;

    if-eqz p2, :cond_0

    .line 104
    move-object p2, p7

    check-cast p2, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;

    .line 105
    iget-object p3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onInfo TPCDNURLInfo:cdnIp:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p2, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;->cdnIp:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ":uIp:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p2, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;->uIp:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ": url: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p2, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;->url:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ":errorStr: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPCDNURLInfo;->errorStr:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    if-eqz p7, :cond_3

    .line 107
    instance-of p3, p7, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;

    if-eqz p3, :cond_3

    .line 108
    move-object p3, p7

    check-cast p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;

    .line 109
    iget-wide p4, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->totalFileSize:J

    .line 110
    invoke-virtual {p1, p4, p5}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->updateBitrate(J)V

    .line 111
    iget p4, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->downloadSpeedKBps:I

    int-to-long p4, p4

    const-wide/16 v2, 0x0

    cmp-long p6, p4, v2

    if-gez p6, :cond_2

    .line 112
    iget-object p6, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->extraInfo:Ljava/lang/String;

    if-eqz p6, :cond_2

    .line 113
    iget-object p6, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->extraInfo:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {p6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_2

    .line 115
    array-length v2, p6

    move v3, p2

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p6, v3

    if-eqz v4, :cond_1

    const-string v5, "httpAvgSpeedKB"

    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p4, ":"

    .line 117
    invoke-virtual {v4, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {v4, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 v2, 0x400

    mul-long/2addr p4, v2

    .line 123
    invoke-virtual {p1, p4, p5}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->updateTcpSpeed(J)V

    .line 124
    iget-object p4, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onInfo TPDownLoadProgressInfo:currentDownloadSize:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->currentDownloadSize:J

    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, ":downloadSpeedKBps:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->downloadSpeedKBps:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ": playableDurationMS: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->playableDurationMS:J

    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, ":totalFileSize: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->totalFileSize:J

    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, ":extraInfo:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPDownLoadProgressInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_3
    instance-of p3, p7, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPProtocolInfo;

    if-eqz p3, :cond_4

    .line 128
    move-object p3, p7

    check-cast p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPProtocolInfo;

    .line 129
    iget-object p4, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onInfo TPProtocolInfo:protocolName:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPProtocolInfo;->protocolName:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ":protocolVersion:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPProtocolInfo;->protocolVersion:Ljava/lang/String;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_4
    instance-of p3, p7, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;

    if-eqz p3, :cond_5

    .line 132
    move-object p3, p7

    check-cast p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;

    .line 133
    iget-object p4, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onInfo TPVideoCropInfo:cropBottom:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->cropBottom:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ":cropLeft:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->cropLeft:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ": cropRight: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->cropRight:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ":cropTop: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->cropTop:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ":height:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->height:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ":width:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPVideoCropInfo;->width:I

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_5
    instance-of p3, p7, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;

    if-eqz p3, :cond_6

    .line 137
    check-cast p7, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;

    :cond_6
    const/4 p3, 0x0

    .line 140
    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnInfo(IIILjava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public onPrepared(Lcom/tencent/thumbplayer/api/ITPPlayer;)V
    .locals 3

    .line 64
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "ThumbMediaPlayerListener onPrepared"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnPrepared()V

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getConfig()Lcom/tencent/liteav/txcplayer/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayer error, ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSeekComplete(Lcom/tencent/thumbplayer/api/ITPPlayer;)V
    .locals 1

    .line 461
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "ThumbMediaPlayerListener onSeekComplete"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnSeekComplete()V

    :cond_0
    return-void
.end method

.method public onStateChange(II)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbMediaPlayerListener onStateChange:preState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": curState:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopAsyncComplete(Lcom/tencent/thumbplayer/api/ITPPlayer;)V
    .locals 1

    .line 485
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "ThumbMediaPlayerListener onStopAsyncComplete"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSubtitleData(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPSubtitleData;)V
    .locals 4

    .line 490
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 493
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbMediaPlayerListener onSubtitleData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/tencent/thumbplayer/api/TPSubtitleData;->subtitleData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v0, Lcom/tencent/liteav/txcplayer/j;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p2, p2, Lcom/tencent/thumbplayer/api/TPSubtitleData;->subtitleData:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/tencent/liteav/txcplayer/j;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnTimedText(Lcom/tencent/liteav/txcplayer/j;)V

    :cond_0
    return-void
.end method

.method public onSubtitleFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPSubtitleFrameBuffer;)V
    .locals 0

    .line 502
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "ThumbMediaPlayerListener onSubtitleFrameOut"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPVideoFrameBuffer;)V
    .locals 0

    .line 507
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string p2, "ThumbMediaPlayerListener onVideoFrameOut"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoProcessFrameOut(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/api/TPPostProcessFrameBuffer;
    .locals 1

    .line 512
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    const-string v0, "ThumbMediaPlayerListener onVideoProcessFrameOut"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public onVideoSizeChanged(Lcom/tencent/thumbplayer/api/ITPPlayer;JJ)V
    .locals 6

    .line 88
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->mThumbMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    if-eqz v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbMediaPlayerListener on:videoSizeChanged:width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v1, p2

    long-to-int v2, p4

    .line 92
    invoke-virtual {v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getVideoSarNum()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getVideoSarDen()I

    move-result v4

    const/4 v5, 0x0

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnVideoSizeChanged(IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method
