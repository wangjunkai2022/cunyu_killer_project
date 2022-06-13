.class public Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;
.super Ljava/lang/Object;
.source "TPListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "TPListenerManager"

.field private static final MSG_CONFIG_URL:I = 0x7db

.field private static final MSG_CURRENT_CDN_URL:I = 0x5

.field private static final MSG_CURRENT_CDN_URL_INFO:I = 0x6

.field private static final MSG_DOWNLOAD_PROTOCOL:I = 0x9

.field private static final MSG_DOWNLOAD_STATUS:I = 0x8

.field private static final MSG_ERROR:I = 0x4

.field private static final MSG_FINISH:I = 0x3

.field private static final MSG_MULTI_NETWORK:I = 0x7dc

.field private static final MSG_NOTIFY_FLV_PRELOAD_STATUS:I = 0x7d9

.field private static final MSG_NOTIFY_HTTP_HEADER:I = 0x7d6

.field private static final MSG_NOTIFY_LOSE_PACKAGE_CEHCK:I = 0x7d4

.field private static final MSG_NOTIFY_M3U8_CONTENT:I = 0x7d7

.field private static final MSG_NOTIFY_PLAYER_SWITCH_DEFINITION:I = 0x7d3

.field private static final MSG_NOTIFY_SOCKET_FD:I = 0x7d8

.field private static final MSG_PLAY_VIDEO_NOT_FOUND:I = 0x65

.field private static final MSG_PREPARE_FINISH:I = 0x32

.field private static final MSG_PROGRESS:I = 0x2

.field private static final MSG_PROXY_CANCEL_READ_DATA:I = 0xca

.field private static final MSG_PROXY_GET_CONTENT_TYPE:I = 0xcd

.field private static final MSG_PROXY_GET_DATA_FILE_PATH:I = 0xcc

.field private static final MSG_PROXY_GET_DATA_TOTAL_SIZE:I = 0xcb

.field private static final MSG_PROXY_READ_DATA:I = 0xc9

.field private static final MSG_PROXY_START_READ_DATA:I = 0xc8

.field private static final MSG_QUIC_DOWNLOAD_STATUS:I = 0xbb9

.field private static final MSG_REPORT_QUIC_QUALITY:I = 0xbba

.field private static final MSG_REPORT_URL:I = 0x7da

.field private static final MSG_URL_EXPIRED:I = 0x7

.field private static final MSG_WUJI_CONFIG_URL:I = 0x7dd

.field private static final OFFLINE_LISTENER_MAP_MUTEX:Ljava/lang/Object;

.field private static final PLAY_LISTENER_MAP_MUTEX:Ljava/lang/Object;

.field private static final PRELOAD_LISTENER_MAP_MUTEX:Ljava/lang/Object;

.field private static final THREAD_NAME:Ljava/lang/String; = "TVKDL-Listener"


# instance fields
.field private mITPDownloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadListener;

.field private mMsgHandler:Landroid/os/Handler;

.field private mMsgHandlerThread:Landroid/os/HandlerThread;

.field private mNetwork:Landroid/net/Network;

.field private mOfflineDownloadListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreLoadListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private updatePlayerInfo:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PLAY_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PRELOAD_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->OFFLINE_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mNetwork:Landroid/net/Network;

    .line 112
    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mITPDownloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadListener;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPlayListenerMap:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPreLoadListenerMap:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mOfflineDownloadListenerMap:Ljava/util/Map;

    .line 142
    new-instance v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager$1;-><init>(Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->updatePlayerInfo:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PLAY_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPlayListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->updatePlayerInfo:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mMsgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->dispatchCallbackMessage(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchCallbackMessage(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    move-object v9, p0

    move v3, p2

    .line 353
    invoke-virtual {p0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getPlaylistener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 355
    invoke-direct/range {v0 .. v8}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->dispatchPlayMessage(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 359
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getPreLoadListener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 361
    invoke-direct/range {v0 .. v8}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->dispatchPreLoadMessage(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 365
    :cond_1
    invoke-virtual {p0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getOfflineDownloadListener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 367
    invoke-direct/range {v0 .. v8}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->dispatchOfflineDownloadMessage(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 371
    :cond_2
    iget-object v0, v9, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mITPDownloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadListener;

    if-eqz v0, :cond_4

    const/16 v0, 0xbba

    move v1, p1

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 376
    :cond_3
    move-object v0, p3

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v1, v9, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mITPDownloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadListener;

    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadListener;->onQuicQualityReportUpdate(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private dispatchOfflineDownloadMessage(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    move-object v0, p1

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 614
    :pswitch_0
    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 615
    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-interface {p1, v1, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;->onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    :pswitch_1
    invoke-static {p4, v7}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v1

    .line 609
    invoke-interface {p1, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;->onDownloadStatusUpdate(I)V

    goto/16 :goto_0

    .line 596
    :pswitch_2
    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {p5, v5, v6}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 598
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 599
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "exttag"

    .line 600
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "randnum"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_1
    invoke-interface {p1, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;->onDownloadCdnUrlExpired(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 587
    :pswitch_3
    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 588
    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    .line 589
    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    .line 590
    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    .line 591
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;->onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :pswitch_4
    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;->onDownloadCdnUrlUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :pswitch_5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;->onDownloadError(IILjava/lang/String;)V

    goto :goto_0

    .line 572
    :pswitch_6
    invoke-interface {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;->onDownloadFinish()V

    goto :goto_0

    .line 562
    :pswitch_7
    invoke-static {p4, v7}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v1

    .line 563
    invoke-static {p5, v7}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v2

    .line 564
    invoke-static {p6, v5, v6}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 565
    invoke-static {v4, v5, v6}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 566
    move-object/from16 v5, p8

    check-cast v5, [B

    check-cast v5, [B

    invoke-static {v5}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    move p2, v1

    move p3, v2

    move-wide p4, v7

    move-wide p6, v3

    move-object/from16 p8, v5

    .line 567
    invoke-interface/range {p1 .. p8}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;->onDownloadProgressUpdate(IIJJLjava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchPlayMessage(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    move-object v0, p1

    move v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v6, 0x65

    const-string v7, "randnum"

    const-string v8, "exttag"

    const-wide/16 v9, 0x0

    if-eq v1, v6, :cond_a

    const/16 v6, 0x7d9

    const/4 v11, 0x0

    if-eq v1, v6, :cond_8

    const/16 v6, 0x7dc

    if-eq v1, v6, :cond_7

    const/16 v6, 0xbb9

    if-eq v1, v6, :cond_6

    const/16 v6, 0x7d3

    if-eq v1, v6, :cond_5

    const/16 v6, 0x7d4

    if-eq v1, v6, :cond_4

    const/16 v6, 0x7d6

    if-eq v1, v6, :cond_3

    const/16 v6, 0x7d7

    if-eq v1, v6, :cond_2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object v6, p0

    goto/16 :goto_2

    .line 444
    :pswitch_1
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 445
    move-object v2, v3

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-interface {p1, v1, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :pswitch_2
    invoke-static {v2, v11}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v1

    .line 439
    invoke-interface {p1, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadStatusUpdate(I)V

    goto :goto_0

    .line 426
    :pswitch_3
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v3, v9, v10}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 428
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 429
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 430
    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_1
    invoke-interface {p1, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlExpired(Ljava/util/Map;)V

    goto :goto_0

    .line 417
    :pswitch_4
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 418
    move-object v2, v3

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    .line 419
    move-object v3, v4

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    .line 420
    move-object v4, v5

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :pswitch_5
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :pswitch_6
    invoke-interface {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadFinish()V

    goto :goto_0

    .line 392
    :pswitch_7
    invoke-static {v2, v11}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v1

    .line 393
    invoke-static {v3, v11}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v2

    .line 394
    invoke-static {v4, v9, v10}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 395
    invoke-static {v5, v9, v10}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 396
    move-object/from16 v7, p8

    check-cast v7, [B

    check-cast v7, [B

    invoke-static {v7}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    move p2, v1

    move p3, v2

    move-wide/from16 p4, v3

    move-wide/from16 p6, v5

    move-object/from16 p8, v7

    .line 397
    invoke-interface/range {p1 .. p8}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onDownloadProgressUpdate(IIJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 490
    :cond_2
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move p2, v2

    move-object p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    .line 491
    invoke-interface/range {p1 .. p6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 484
    :cond_3
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move p2, v2

    move-object p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    .line 485
    invoke-interface/range {p1 .. p6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 472
    :cond_4
    invoke-static {v3, v11}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v0

    .line 473
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TVKThreadUtil;->getScheduledExecutorServiceInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager$3;

    move-object v6, p0

    invoke-direct {v2, p0, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager$3;-><init>(Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_5
    move-object v6, p0

    .line 463
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 464
    move-object v2, v3

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v4, v11}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v3

    const/4 v4, 0x2

    .line 466
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    move p2, v4

    move-object p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v5

    invoke-interface/range {p1 .. p6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    move-object v6, p0

    .line 505
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move p2, v2

    move-object p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    .line 506
    invoke-interface/range {p1 .. p6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    move-object v6, p0

    .line 511
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move p2, v2

    move-object p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    .line 512
    invoke-interface/range {p1 .. p6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_MULTI_NETWORK: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPListenerManager"

    const-string v2, "tpdlnative"

    invoke-static {v1, v11, v2, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v6, p0

    .line 496
    invoke-static {v2, v11}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v1

    if-nez v3, :cond_9

    const/4 v2, 0x0

    goto :goto_1

    .line 497
    :cond_9
    move-object v2, v3

    check-cast v2, [B

    check-cast v2, [B

    .line 498
    :goto_1
    move-object v3, v4

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-static {v5, v11}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v4

    const/4 v5, 0x5

    .line 500
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move p2, v5

    move-object p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-interface/range {p1 .. p6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    move-object v6, p0

    .line 451
    move-object v1, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-static {v3, v9, v10}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 453
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 454
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 455
    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move p2, v1

    move-object p3, v4

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v5

    .line 458
    invoke-interface/range {p1 .. p6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private dispatchPreLoadMessage(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p1

    move v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 540
    :cond_1
    invoke-interface {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;->onPrepareOK()V

    goto :goto_0

    .line 545
    :cond_2
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, v4

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;->onPrepareError(IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 530
    invoke-static {p4, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v2

    .line 531
    invoke-static {p5, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result v1

    const-wide/16 v5, 0x0

    .line 532
    invoke-static {p6, v5, v6}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v3

    move-object v7, p7

    .line 533
    invoke-static {p7, v5, v6}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 534
    move-object/from16 v7, p8

    check-cast v7, [B

    check-cast v7, [B

    invoke-static {v7}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    move p2, v2

    move p3, v1

    move-wide p4, v3

    move-wide p6, v5

    move-object/from16 p8, v7

    .line 535
    invoke-interface/range {p1 .. p8}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;->onPrepareDownloadProgressUpdate(IIJJLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;
    .locals 1

    .line 130
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager$SingletonHolder;->access$100()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOfflineDownloadListener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;
    .locals 2

    .line 255
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->OFFLINE_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mOfflineDownloadListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;

    .line 257
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPlaylistener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;
    .locals 2

    .line 192
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PLAY_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPlayListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    .line 194
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPreLoadListener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;
    .locals 2

    .line 222
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PRELOAD_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPreLoadListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;

    .line 224
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized handleCallbackMessage(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13

    move-object v10, p0

    move v0, p1

    monitor-enter p0

    const/16 v1, 0x7d8

    if-ne v1, v0, :cond_2

    .line 264
    :try_start_0
    iget-object v0, v10, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "TPListenerManager"

    const-string v2, "tpdlnative"

    const-string v3, "cellular_network, network is null"

    .line 265
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    move-object/from16 v0, p3

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    :try_start_2
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 273
    const-class v4, Ljava/io/FileDescriptor;

    const-string v5, "descriptor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 275
    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    const-string v4, "TPListenerManager"

    const-string v5, "tpdlnative"

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cellular_network, bind begin, sock fd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v1, v5, v6}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 278
    iget-object v4, v10, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    const-string v0, "TPListenerManager"

    const-string v4, "tpdlnative"

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cellular_network, bind socket success, sock fd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 283
    :try_start_3
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v4

    const-string v5, "cellular_interface_id"

    const-string v6, "-1"

    invoke-virtual {v4, v5, v6}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TPListenerManager"

    const-string v5, "tpdlnative"

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cellular_network, bind socket failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v5, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "TPListenerManager"

    const-string v4, "tpdlnative"

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cellular_network, sock call back end, sock fd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", str_sock: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    const/16 v1, 0x7da

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 296
    :cond_3
    :try_start_4
    iget-object v11, v10, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mMsgHandler:Landroid/os/Handler;

    new-instance v12, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager$2;

    move-object v1, v12

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager$2;-><init>(Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 302
    monitor-exit p0

    return-void

    .line 291
    :cond_4
    :goto_1
    :try_start_5
    move-object/from16 v1, p3

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPCGIRequester;->addRequestItem(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 293
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public handleIntCallbackMessage(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 308
    invoke-virtual {p0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getPlaylistener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move-result-object v0

    const/4 p6, 0x0

    if-eqz v0, :cond_2

    const/16 p7, 0xc8

    const-wide/16 v1, 0x0

    if-ne p1, p7, :cond_0

    .line 311
    check-cast p3, [B

    check-cast p3, [B

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-static {p4, v1, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v3

    const-wide/16 p3, -0x1

    .line 313
    invoke-static {p5, p3, p4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v5

    move v1, p2

    move-object v2, p1

    .line 315
    invoke-interface/range {v0 .. v6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onStartReadData(ILjava/lang/String;JJ)I

    move-result p6

    goto :goto_0

    :cond_0
    const/16 p7, 0xca

    if-ne p1, p7, :cond_1

    .line 317
    check-cast p3, [B

    check-cast p3, [B

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-static {p4, p6}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result p3

    .line 319
    invoke-interface {v0, p2, p1, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onStopReadData(ILjava/lang/String;I)I

    move-result p6

    goto :goto_0

    :cond_1
    const/16 p7, 0xc9

    if-ne p1, p7, :cond_2

    .line 321
    check-cast p3, [B

    check-cast p3, [B

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {p4, v1, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 323
    invoke-static {p5, p6}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->objectToInt(Ljava/lang/Object;I)I

    move-result p3

    int-to-long v5, p3

    move v1, p2

    move-object v2, p1

    .line 324
    invoke-interface/range {v0 .. v6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->onReadData(ILjava/lang/String;JJ)I

    move-result p6

    :cond_2
    :goto_0
    return p6
.end method

.method public handleStringCallbackMessage(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 334
    invoke-virtual {p0, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getPlaylistener(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;

    move-result-object p4

    if-eqz p4, :cond_2

    const/16 p5, 0xcd

    if-ne p1, p5, :cond_0

    .line 337
    check-cast p3, [B

    check-cast p3, [B

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-interface {p4, p2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getContentType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p5, 0xcb

    if-ne p1, p5, :cond_1

    .line 340
    check-cast p3, [B

    check-cast p3, [B

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-interface {p4, p2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getDataTotalSize(ILjava/lang/String;)J

    move-result-wide p1

    .line 341
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 p5, 0xcc

    if-ne p1, p5, :cond_2

    .line 344
    check-cast p3, [B

    check-cast p3, [B

    invoke-static {p3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-interface {p4, p2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;->getDataFilePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public initHandler()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mMsgHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TVKDL-Listener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mMsgHandlerThread:Landroid/os/HandlerThread;

    .line 136
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mMsgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mMsgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mMsgHandler:Landroid/os/Handler;

    .line 138
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->updatePlayerInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public removeAllPlayListener()V
    .locals 2

    .line 185
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PLAY_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPlayListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 187
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllPreLoadListener()V
    .locals 2

    .line 215
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PRELOAD_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPreLoadListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeOfflineDownloadListener(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 238
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->OFFLINE_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mOfflineDownloadListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public removePlayListener(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 178
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PLAY_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPlayListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public removePreLoadListener(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 208
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PRELOAD_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPreLoadListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setITPDownloadListener(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadListener;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mITPDownloadListener:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadListener;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 4

    const-string v0, "TPListenerManager"

    const/4 v1, 0x0

    const-string v2, "tpdlnative"

    const-string v3, "cellular_network, set network"

    .line 245
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setOfflineDownloadListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPOfflineDownloadListener;)V
    .locals 2

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    .line 230
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->OFFLINE_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mOfflineDownloadListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setPlayListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;)V
    .locals 2

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    .line 170
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PLAY_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPlayListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setPreLoadListener(ILcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;)V
    .locals 2

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    .line 200
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->PRELOAD_LISTENER_MAP_MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->mPreLoadListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
