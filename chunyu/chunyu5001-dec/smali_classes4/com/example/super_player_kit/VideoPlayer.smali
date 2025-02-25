.class public Lcom/example/super_player_kit/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field private static POOLS_PLAYER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/TXLivePlayer;",
            ">;"
        }
    .end annotation
.end field

.field private static POOLS_VIDEOVIEWS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/ui/TXCloudVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static gLivePlayConfig:Lcom/tencent/rtmp/TXLivePlayConfig;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

.field private mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/example/super_player_kit/VideoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/super_player_kit/VideoPlayer;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/example/super_player_kit/VideoPlayer;->POOLS_PLAYER:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/example/super_player_kit/VideoPlayer;->POOLS_VIDEOVIEWS:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/example/super_player_kit/VideoPlayer;->popVideoView(Landroid/content/Context;)Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 69
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 72
    invoke-static {p1}, Lcom/example/super_player_kit/VideoPlayer;->popPlayer(Landroid/content/Context;)Lcom/tencent/rtmp/TXLivePlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    .line 74
    sget-object p2, Lcom/example/super_player_kit/VideoPlayer;->gLivePlayConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 75
    new-instance p2, Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-direct {p2}, Lcom/tencent/rtmp/TXLivePlayConfig;-><init>()V

    sput-object p2, Lcom/example/super_player_kit/VideoPlayer;->gLivePlayConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    .line 77
    sget-object p2, Lcom/example/super_player_kit/VideoPlayer;->gLivePlayConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2}, Lcom/tencent/rtmp/TXLivePlayConfig;->setCacheTime(F)V

    .line 78
    sget-object p2, Lcom/example/super_player_kit/VideoPlayer;->gLivePlayConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p2, v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->setAutoAdjustCacheTime(Z)V

    .line 79
    sget-object p2, Lcom/example/super_player_kit/VideoPlayer;->gLivePlayConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p2, v2}, Lcom/tencent/rtmp/TXLivePlayConfig;->setMinAutoAdjustCacheTime(F)V

    .line 80
    sget-object p2, Lcom/example/super_player_kit/VideoPlayer;->gLivePlayConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p2, v2}, Lcom/tencent/rtmp/TXLivePlayConfig;->setMaxAutoAdjustCacheTime(F)V

    .line 83
    :cond_0
    iget-object p2, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    sget-object v2, Lcom/example/super_player_kit/VideoPlayer;->gLivePlayConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p2, v2}, Lcom/tencent/rtmp/TXLivePlayer;->setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    .line 84
    iget-object p2, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p2, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setRenderMode(I)V

    .line 85
    iget-object p2, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p2, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setRenderRotation(I)V

    .line 86
    iget-object p2, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p2, v0}, Lcom/tencent/rtmp/TXLivePlayer;->enableHardwareDecode(Z)Z

    const-string p2, "audio"

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/example/super_player_kit/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 90
    iget-object p1, p0, Lcom/example/super_player_kit/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 p2, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 92
    new-instance p1, Lcom/example/super_player_kit/VideoPlayer$1;

    invoke-direct {p1, p0}, Lcom/example/super_player_kit/VideoPlayer$1;-><init>(Lcom/example/super_player_kit/VideoPlayer;)V

    return-void
.end method

.method static popPlayer(Landroid/content/Context;)Lcom/tencent/rtmp/TXLivePlayer;
    .locals 2

    .line 29
    sget-object v0, Lcom/example/super_player_kit/VideoPlayer;->POOLS_PLAYER:Ljava/util/List;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/example/super_player_kit/VideoPlayer;->POOLS_PLAYER:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    sget-object p0, Lcom/example/super_player_kit/VideoPlayer;->POOLS_PLAYER:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/rtmp/TXLivePlayer;

    monitor-exit v0

    return-object p0

    .line 33
    :cond_0
    new-instance v1, Lcom/tencent/rtmp/TXLivePlayer;

    invoke-direct {v1, p0}, Lcom/tencent/rtmp/TXLivePlayer;-><init>(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static popVideoView(Landroid/content/Context;)Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .locals 2

    .line 46
    sget-object v0, Lcom/example/super_player_kit/VideoPlayer;->POOLS_VIDEOVIEWS:Ljava/util/List;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/example/super_player_kit/VideoPlayer;->POOLS_VIDEOVIEWS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    sget-object p0, Lcom/example/super_player_kit/VideoPlayer;->POOLS_VIDEOVIEWS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    monitor-exit v0

    return-object p0

    .line 50
    :cond_0
    new-instance v1, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-direct {v1, p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;-><init>(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static pushPlayer(Lcom/tencent/rtmp/TXLivePlayer;)V
    .locals 2

    .line 38
    sget-object v0, Lcom/example/super_player_kit/VideoPlayer;->POOLS_PLAYER:Ljava/util/List;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/example/super_player_kit/VideoPlayer;->POOLS_PLAYER:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static pushVideoView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 2

    .line 55
    sget-object v0, Lcom/example/super_player_kit/VideoPlayer;->POOLS_VIDEOVIEWS:Ljava/util/List;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/example/super_player_kit/VideoPlayer;->POOLS_VIDEOVIEWS:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/example/super_player_kit/VideoPlayer;->stopPlay()V

    .line 160
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {v0}, Lcom/example/super_player_kit/VideoPlayer;->pushPlayer(Lcom/tencent/rtmp/TXLivePlayer;)V

    .line 162
    iput-object v1, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/example/super_player_kit/VideoPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {v0}, Lcom/example/super_player_kit/VideoPlayer;->pushVideoView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 170
    iput-object v1, p0, Lcom/example/super_player_kit/VideoPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayer;->pause()V

    return-void
.end method

.method public playLiveURL(Ljava/lang/String;ILcom/tencent/rtmp/ITXLivePlayListener;)I
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/example/super_player_kit/VideoPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 116
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, p3}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayListener(Lcom/tencent/rtmp/ITXLivePlayListener;)V

    .line 117
    iget-object p3, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p3, p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->startPlay(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public resume()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayer;->resume()V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayer;->setMute(Z)V

    return-void
.end method

.method public stopPlay()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayListener(Lcom/tencent/rtmp/ITXLivePlayListener;)V

    .line 150
    iget-object v0, p0, Lcom/example/super_player_kit/VideoPlayer;->mLivePlayer:Lcom/tencent/rtmp/TXLivePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->stopPlay(Z)I

    :cond_0
    return-void
.end method
