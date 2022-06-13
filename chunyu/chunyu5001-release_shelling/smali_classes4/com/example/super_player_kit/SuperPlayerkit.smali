.class public Lcom/example/super_player_kit/SuperPlayerkit;
.super Ljava/lang/Object;
.source "SuperPlayerkit.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lcom/tencent/rtmp/ITXLivePlayListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _mainHandler:Landroid/os/Handler;

.field private _seedID_svgaPlayer:I

.field private _seedID_webpPlayer:I

.field private _svgaPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/example/super_player_kit/MySvgaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private _view:Landroid/widget/FrameLayout;

.field private _webpPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/example/super_player_kit/WebpPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMethodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/example/super_player_kit/SuperPlayerkit;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/super_player_kit/SuperPlayerkit;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/plugin/common/BinaryMessenger;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_mainHandler:Landroid/os/Handler;

    .line 45
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_svgaPlayers:Ljava/util/HashMap;

    const/4 p4, 0x0

    .line 47
    iput p4, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_seedID_svgaPlayer:I

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_webpPlayers:Ljava/util/HashMap;

    .line 78
    iput p4, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_seedID_webpPlayer:I

    .line 107
    new-instance p4, Lio/flutter/plugin/common/MethodChannel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "super_player_kit_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p2, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mMethodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 108
    iget-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mMethodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p2, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 109
    iput-object p1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mContext:Landroid/content/Context;

    .line 111
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_view:Landroid/widget/FrameLayout;

    .line 112
    iget-object p1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_view:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/example/super_player_kit/SuperPlayerkit;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mMethodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/example/super_player_kit/SuperPlayerkit;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private createSvgaPlayer()Lcom/example/super_player_kit/MySvgaPlayer;
    .locals 4

    .line 53
    new-instance v0, Lcom/example/super_player_kit/MySvgaPlayer;

    iget-object v1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_view:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/example/super_player_kit/MySvgaPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 55
    iget-object v1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_svgaPlayers:Ljava/util/HashMap;

    monitor-enter v1

    .line 56
    :try_start_0
    iget v2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_seedID_svgaPlayer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_seedID_svgaPlayer:I

    iput v2, v0, Lcom/example/super_player_kit/MySvgaPlayer;->tagID:I

    .line 57
    iget-object v2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_svgaPlayers:Ljava/util/HashMap;

    iget v3, v0, Lcom/example/super_player_kit/MySvgaPlayer;->tagID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    new-instance v1, Lcom/example/super_player_kit/SuperPlayerkit$1;

    invoke-direct {v1, p0, v0}, Lcom/example/super_player_kit/SuperPlayerkit$1;-><init>(Lcom/example/super_player_kit/SuperPlayerkit;Lcom/example/super_player_kit/MySvgaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/example/super_player_kit/MySvgaPlayer;->setCallback(Lcom/example/super_player_kit/MySvgaPlayer$Callback;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 58
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createWebpPlayer()Lcom/example/super_player_kit/WebpPlayer;
    .locals 4

    .line 84
    new-instance v0, Lcom/example/super_player_kit/WebpPlayer;

    iget-object v1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_view:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/example/super_player_kit/WebpPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 86
    iget-object v1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_webpPlayers:Ljava/util/HashMap;

    monitor-enter v1

    .line 87
    :try_start_0
    iget v2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_seedID_webpPlayer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_seedID_webpPlayer:I

    iput v2, v0, Lcom/example/super_player_kit/WebpPlayer;->tagID:I

    .line 88
    iget-object v2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_webpPlayers:Ljava/util/HashMap;

    iget v3, v0, Lcom/example/super_player_kit/WebpPlayer;->tagID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    new-instance v1, Lcom/example/super_player_kit/SuperPlayerkit$2;

    invoke-direct {v1, p0, v0}, Lcom/example/super_player_kit/SuperPlayerkit$2;-><init>(Lcom/example/super_player_kit/SuperPlayerkit;Lcom/example/super_player_kit/WebpPlayer;)V

    invoke-virtual {v0, v1}, Lcom/example/super_player_kit/WebpPlayer;->setCallback(Lcom/example/super_player_kit/WebpPlayer$Callback;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 89
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized getVideoPlayer()Lcom/example/super_player_kit/VideoPlayer;
    .locals 3

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/example/super_player_kit/VideoPlayer;

    iget-object v1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_view:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/example/super_player_kit/VideoPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private release()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_svgaPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/super_player_kit/MySvgaPlayer;

    .line 217
    invoke-virtual {v1}, Lcom/example/super_player_kit/MySvgaPlayer;->stop()V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_svgaPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 222
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_webpPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/super_player_kit/WebpPlayer;

    .line 223
    invoke-virtual {v1}, Lcom/example/super_player_kit/WebpPlayer;->stop()V

    goto :goto_1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_webpPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/example/super_player_kit/VideoPlayer;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;

    .line 239
    invoke-direct {p0}, Lcom/example/super_player_kit/SuperPlayerkit;->release()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_view:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public synthetic onFlutterViewAttached(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformView$-CC;->$default$onFlutterViewAttached(Lio/flutter/plugin/platform/PlatformView;Landroid/view/View;)V

    return-void
.end method

.method public synthetic onFlutterViewDetached()V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformView$-CC;->$default$onFlutterViewDetached(Lio/flutter/plugin/platform/PlatformView;)V

    return-void
.end method

.method public synthetic onInputConnectionLocked()V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformView$-CC;->$default$onInputConnectionLocked(Lio/flutter/plugin/platform/PlatformView;)V

    return-void
.end method

.method public synthetic onInputConnectionUnlocked()V
    .locals 0

    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformView$-CC;->$default$onInputConnectionUnlocked(Lio/flutter/plugin/platform/PlatformView;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 117
    sget-object v0, Lcom/example/super_player_kit/SuperPlayerkit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- onMethodCall ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;
    invoke-static {p1}, Lyouyou/Youyou_Tool;->debugLogData(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mContext:Landroid/content/Context;
    invoke-static {p1, v6}, Lyouyou/YouyouTools;->CloneStringToClipboard(Ljava/lang/String;Landroid/content/Context;)V

    .line 123
    sget-object v0, Lcom/example/super_player_kit/SuperPlayerkit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f00\u59cb\u64ad\u653e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    .line 125
    invoke-direct {p0}, Lcom/example/super_player_kit/SuperPlayerkit;->getVideoPlayer()Lcom/example/super_player_kit/VideoPlayer;

    move-result-object v0

    .line 126
    invoke-static {p1}, Lcom/example/super_player_kit/TCUrlUtil;->getPlayType(Ljava/lang/String;)I

    move-result v1

    .line 125
    invoke-virtual {v0, p1, v1, p0}, Lcom/example/super_player_kit/VideoPlayer;->playLiveURL(Ljava/lang/String;ILcom/tencent/rtmp/ITXLivePlayListener;)I

    move-result p1

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 128
    :cond_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "resume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;

    if-eqz p1, :cond_d

    .line 130
    invoke-virtual {p1}, Lcom/example/super_player_kit/VideoPlayer;->resume()V

    goto/16 :goto_1

    .line 131
    :cond_1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object p1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;

    if-eqz p1, :cond_d

    .line 133
    invoke-virtual {p1}, Lcom/example/super_player_kit/VideoPlayer;->pause()V

    goto/16 :goto_1

    .line 134
    :cond_2
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "stopPlay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object p1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;

    if-eqz p1, :cond_d

    .line 136
    invoke-virtual {p1}, Lcom/example/super_player_kit/VideoPlayer;->stopPlay()V

    goto/16 :goto_1

    .line 137
    :cond_3
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "setMute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 139
    iget-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mVideoPlayer:Lcom/example/super_player_kit/VideoPlayer;

    if-eqz p2, :cond_d

    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 140
    :goto_0
    invoke-virtual {p2, v0}, Lcom/example/super_player_kit/VideoPlayer;->setMute(Z)V

    goto/16 :goto_1

    .line 141
    :cond_5
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "playSvga"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "filename"

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "waterMaskName"

    .line 145
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "loops"

    .line 146
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "fullScreen"

    .line 147
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 149
    sget-object v3, Lcom/example/super_player_kit/SuperPlayerkit;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5f00\u59cb\u64ad\u653eSVGA:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",\u53bb\u6c34\u5370:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lcom/example/super_player_kit/SuperPlayerkit;->createSvgaPlayer()Lcom/example/super_player_kit/MySvgaPlayer;

    move-result-object v3

    .line 152
    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/example/super_player_kit/MySvgaPlayer;->play(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 155
    iget p1, v3, Lcom/example/super_player_kit/MySvgaPlayer;->tagID:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 157
    :cond_6
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "stopSvga"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 158
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_svgaPlayers:Ljava/util/HashMap;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_svgaPlayers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 164
    iget-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_svgaPlayers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/example/super_player_kit/MySvgaPlayer;

    .line 167
    iget-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_svgaPlayers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_d

    .line 171
    invoke-virtual {v1}, Lcom/example/super_player_kit/MySvgaPlayer;->stop()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 169
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 173
    :cond_8
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v2, "release"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    invoke-direct {p0}, Lcom/example/super_player_kit/SuperPlayerkit;->release()V

    goto/16 :goto_1

    .line 175
    :cond_9
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v2, "playWebp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "filename"

    .line 177
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "loops"

    .line 178
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "fullScreen"

    .line 179
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 181
    sget-object v2, Lcom/example/super_player_kit/SuperPlayerkit;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5f00\u59cb\u64ad\u653eWebp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/example/super_player_kit/SuperPlayerkit;->createWebpPlayer()Lcom/example/super_player_kit/WebpPlayer;

    move-result-object v2

    .line 184
    invoke-virtual {v2, v0, v1, p1}, Lcom/example/super_player_kit/WebpPlayer;->play(Ljava/lang/String;IZ)V

    .line 187
    iget p1, v2, Lcom/example/super_player_kit/WebpPlayer;->tagID:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 189
    :cond_a
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v2, "stopWebp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 190
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 194
    iget-object v0, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_webpPlayers:Ljava/util/HashMap;

    monitor-enter v0

    .line 195
    :try_start_2
    iget-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_webpPlayers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 196
    iget-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_webpPlayers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/example/super_player_kit/WebpPlayer;

    .line 199
    iget-object p2, p0, Lcom/example/super_player_kit/SuperPlayerkit;->_webpPlayers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_b
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_d

    .line 203
    invoke-virtual {v1}, Lcom/example/super_player_kit/WebpPlayer;->stop()V

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 201
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 207
    :cond_c
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :cond_d
    :goto_1
    return-void
.end method

.method public onNetStatus(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayEvent(ILandroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_0

    .line 245
    sget-object v0, Lcom/example/super_player_kit/SuperPlayerkit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayEvent:i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p2, 0x7d3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 248
    iget-object p1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mMethodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string p2, "firstFrame"

    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 p2, -0x8fd

    if-ne p1, p2, :cond_2

    .line 251
    iget-object p1, p0, Lcom/example/super_player_kit/SuperPlayerkit;->mMethodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string p2, "disconnect"

    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
