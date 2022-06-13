.class public Lcom/tencent/live2/a/a;
.super Lcom/tencent/live2/V2TXLivePlayer;
.source "TXRTMPPlayerImpl.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/tencent/rtmp/ITXLivePlayListener;
.implements Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;
.implements Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;
.implements Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;
.implements Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/live2/V2TXLivePlayer;

.field private c:Lcom/tencent/rtmp/TXLivePlayer;

.field private d:Lcom/tencent/rtmp/TXLivePlayConfig;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

.field private j:Z

.field private k:Lcom/tencent/live2/V2TXLivePlayerObserver;

.field private l:Z

.field private m:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private n:Landroid/view/TextureView;

.field private o:Landroid/view/SurfaceView;

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/tencent/live2/V2TXLivePlayer;Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/tencent/live2/V2TXLivePlayer;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/tencent/live2/a/a;->p:I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/tencent/live2/a/a;->r:Z

    .line 79
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/live2/a/a;->a:Landroid/content/Context;

    .line 80
    iput-object p1, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    .line 81
    new-instance p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    invoke-direct {p1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;-><init>()V

    iput-object p1, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    .line 82
    new-instance p1, Lcom/tencent/rtmp/TXLivePlayer;

    iget-object p2, p0, Lcom/tencent/live2/a/a;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    .line 83
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p1, p0}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayListener(Lcom/tencent/rtmp/ITXLivePlayListener;)V

    .line 84
    new-instance p1, Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-direct {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;-><init>()V

    iput-object p1, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    .line 85
    iget-object p1, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayConfig;->setConnectRetryInterval(I)V

    .line 86
    iget-object p1, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayConfig;->setConnectRetryCount(I)V

    .line 87
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    iget-object p2, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    .line 88
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->enableHardwareDecode(Z)Z

    .line 89
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p1, p0}, Lcom/tencent/rtmp/TXLivePlayer;->setAudioVolumeEvaluationListener(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "rtmp://"

    .line 715
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "room://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/tencent/live2/a/a;)Lcom/tencent/live2/V2TXLivePlayerObserver;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tencent/live2/a/a;->k:Lcom/tencent/live2/V2TXLivePlayerObserver;

    return-object p0
.end method

.method private a()V
    .locals 2

    const-string v0, "stopPlayInner: "

    .line 568
    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 570
    iput-boolean v0, p0, Lcom/tencent/live2/a/a;->e:Z

    .line 571
    iput-boolean v0, p0, Lcom/tencent/live2/a/a;->f:Z

    .line 572
    iput-boolean v0, p0, Lcom/tencent/live2/a/a;->h:Z

    .line 573
    iput-boolean v0, p0, Lcom/tencent/live2/a/a;->g:Z

    .line 574
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    invoke-direct {v0}, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;-><init>()V

    iput-object v0, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    .line 577
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->c()V

    .line 580
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->stopPlay(Z)I

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    .line 584
    iget v0, p0, Lcom/tencent/live2/a/a;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 585
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "force set url type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/live2/a/a;->p:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 586
    iget p1, p0, Lcom/tencent/live2/a/a;->p:I

    return p1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v1, "rtmp"

    .line 591
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method static synthetic b(Lcom/tencent/live2/a/a;)Lcom/tencent/live2/V2TXLivePlayer;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 599
    iget-object v0, p0, Lcom/tencent/live2/a/a;->m:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 600
    iget-object v1, p0, Lcom/tencent/live2/a/a;->n:Landroid/view/TextureView;

    .line 601
    iget-object v2, p0, Lcom/tencent/live2/a/a;->o:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v1, "bindRenderView: cloud view."

    .line 603
    invoke-direct {p0, v1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    .line 605
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/tencent/rtmp/TXLivePlayer;->setSurfaceSize(II)V

    .line 606
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "bindRenderView: texture view."

    .line 608
    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v3}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 610
    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 611
    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    if-eqz v0, :cond_3

    const-string v2, "bindRenderView: surface texture is valid, set into player."

    .line 613
    invoke-direct {p0, v2}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 614
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 615
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    .line 616
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setSurfaceSize(II)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "bindRenderView: surface view."

    .line 619
    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v3}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 621
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 622
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "bindRenderView: surface is valid, set into player."

    .line 624
    invoke-direct {p0, v1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    .line 626
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/rtmp/TXLivePlayer;->setSurfaceSize(II)V

    goto :goto_0

    :cond_2
    const-string v0, "bindRender: all view is null, bind fail."

    .line 629
    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->d(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/tencent/live2/a/a;->n:Landroid/view/TextureView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "unbindRenderView: unbind texture view."

    .line 636
    invoke-direct {p0, v3}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 638
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    .line 639
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v2, v2}, Lcom/tencent/rtmp/TXLivePlayer;->setSurfaceSize(II)V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/tencent/live2/a/a;->o:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    const-string v3, "unbindRenderView: unbind surface view."

    .line 644
    invoke-direct {p0, v3}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 646
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    .line 647
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v2, v2}, Lcom/tencent/rtmp/TXLivePlayer;->setSurfaceSize(II)V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2_api_rtmp_player("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V2-TXRTMPPlayerImpl"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2_api_rtmp_player("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V2-TXRTMPPlayerImpl"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2_api_rtmp_player("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V2-TXRTMPPlayerImpl"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enableObserveVideoFrame(ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)I
    .locals 4

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoFrameObserver: enable-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " format-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;->V2TXLivePixelFormatI420:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeByteArray:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    if-ne p3, v0, :cond_1

    const-string p2, "setVideoFrameObserver: use I420 array render."

    .line 331
    invoke-direct {p0, p2}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 333
    iget-object p2, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p2, v3, v3}, Lcom/tencent/rtmp/TXLivePlayer;->setVideoRenderListener(Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;Ljava/lang/Object;)I

    .line 334
    iget-object p2, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    if-eqz p1, :cond_0

    move-object v3, p0

    :cond_0
    invoke-virtual {p2, v3}, Lcom/tencent/rtmp/TXLivePlayer;->setVideoRawDataListener(Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;)V

    return v2

    .line 336
    :cond_1
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;->V2TXLivePixelFormatTexture2D:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    if-ne p2, v0, :cond_3

    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeTexture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    if-ne p3, v0, :cond_3

    const-string p2, "setVideoFrameObserver: use texture render."

    .line 337
    invoke-direct {p0, p2}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 339
    iget-object p2, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p2, v3}, Lcom/tencent/rtmp/TXLivePlayer;->setVideoRawDataListener(Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;)V

    .line 341
    iget-object p2, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    if-eqz p1, :cond_2

    move-object p1, p0

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    invoke-virtual {p2, p1, v3}, Lcom/tencent/rtmp/TXLivePlayer;->setVideoRenderListener(Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;Ljava/lang/Object;)I

    return v2

    .line 344
    :cond_3
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p1, v3}, Lcom/tencent/rtmp/TXLivePlayer;->setVideoRawDataListener(Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;)V

    .line 345
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p1, v3, v3}, Lcom/tencent/rtmp/TXLivePlayer;->setVideoRenderListener(Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;Ljava/lang/Object;)I

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoFrameObserver: format or type isn\'t support. force clean observer. format-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->d(Ljava/lang/String;)V

    const/4 p1, -0x4

    return p1
.end method

.method public enableReceiveSeiMessage(ZI)I
    .locals 3

    .line 152
    iput p2, p0, Lcom/tencent/live2/a/a;->q:I

    .line 153
    iget-object v0, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setEnableMessage(Z)V

    .line 154
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    iget-object v0, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    .line 155
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "{\"api\":\"setSEIPayloadType\", \"params\": {\"payloadType\":%d}}"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->callExperimentalAPI(Ljava/lang/String;)V

    return v2
.end method

.method public enableVolumeEvaluation(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const-string p1, "enableVolumeEvaluation: invalid params."

    .line 320
    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->e(Ljava/lang/String;)V

    move p1, v0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v1, p1}, Lcom/tencent/rtmp/TXLivePlayer;->enableAudioVolumeEvaluation(I)V

    return v0
.end method

.method public isPlaying()I
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/tencent/live2/a/a;->g:Z

    return v0
.end method

.method public onAudioInfoChanged(III)V
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioInfoChanged: sampleRate-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " channels-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioVolumeEvaluationNotify(I)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/tencent/live2/a/a;->k:Lcom/tencent/live2/V2TXLivePlayerObserver;

    if-eqz v0, :cond_0

    .line 425
    iget-object v1, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onPlayoutVolumeUpdate(Lcom/tencent/live2/V2TXLivePlayer;I)V

    :cond_0
    return-void
.end method

.method public onNetStatus(Landroid/os/Bundle;)V
    .locals 3

    .line 542
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->a()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 544
    iget-object v1, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    const/4 v2, 0x0

    aget v2, v0, v2

    div-int/lit8 v2, v2, 0xa

    iput v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;->appCpu:I

    .line 545
    iget-object v1, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    const/4 v2, 0x1

    aget v0, v0, v2

    div-int/lit8 v0, v0, 0xa

    iput v0, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;->systemCpu:I

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    const-string v1, "VIDEO_WIDTH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;->width:I

    .line 548
    iget-object v0, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    const-string v1, "VIDEO_HEIGHT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;->height:I

    .line 549
    iget-object v0, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    const-string v1, "VIDEO_FPS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;->fps:I

    .line 550
    iget-object v0, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    const-string v1, "VIDEO_BITRATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;->videoBitrate:I

    .line 551
    iget-object v0, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    const-string v1, "AUDIO_BITRATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;->audioBitrate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :catch_0
    iget-object v0, p0, Lcom/tencent/live2/a/a;->k:Lcom/tencent/live2/V2TXLivePlayerObserver;

    if-eqz v0, :cond_1

    .line 557
    iget-object v1, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    iget-object v2, p0, Lcom/tencent/live2/a/a;->i:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onStatisticsUpdate(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 560
    instance-of v1, v0, Lcom/tencent/live2/impl/a/a;

    if-eqz v1, :cond_2

    .line 561
    check-cast v0, Lcom/tencent/live2/impl/a/a;

    invoke-virtual {v0, p1}, Lcom/tencent/live2/impl/a/a;->a(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onPcmDataAvailable([BJ)V
    .locals 0

    return-void
.end method

.method public onPlayEvent(ILandroid/os/Bundle;)V
    .locals 6

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/tencent/live2/a/a;->k:Lcom/tencent/live2/V2TXLivePlayerObserver;

    const/16 v1, -0x8fd

    if-eq p1, v1, :cond_b

    const/16 v1, 0x7d1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9

    const/16 v1, 0x7d7

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7d9

    if-eq p1, v1, :cond_6

    const/16 v1, 0x7dc

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7ea

    if-eq p1, v1, :cond_4

    const/16 v1, 0x839

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7d3

    if-eq p1, v1, :cond_2

    const/16 v1, 0x7d4

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 447
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/live2/a/a;->h:Z

    if-eqz v1, :cond_d

    const-string v1, "onPlayEvent: loading finish."

    .line 449
    invoke-direct {p0, v1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 450
    iput-boolean v1, p0, Lcom/tencent/live2/a/a;->h:Z

    if-eqz v0, :cond_d

    .line 452
    iget-boolean v2, p0, Lcom/tencent/live2/a/a;->f:Z

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onAudioPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V

    .line 455
    :cond_1
    iget-boolean v2, p0, Lcom/tencent/live2/a/a;->e:Z

    if-eqz v2, :cond_d

    .line 456
    iget-object v2, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 485
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/live2/a/a;->e:Z

    if-nez v1, :cond_d

    const-string v1, "onPlayEvent: onRecvFirstVideoFrame."

    .line 486
    invoke-direct {p0, v1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 487
    iput-boolean v2, p0, Lcom/tencent/live2/a/a;->e:Z

    if-eqz v0, :cond_d

    .line 489
    iget-object v1, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_d

    .line 495
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "EVT_UTC_TIME"

    .line 496
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "EVT_BLOCK_DURATION"

    .line 497
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "EVT_MSG"

    .line 498
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 499
    iget-object v3, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    const-string v4, "player video block happen."

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onWarning(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 476
    :cond_4
    iget-boolean v1, p0, Lcom/tencent/live2/a/a;->f:Z

    if-nez v1, :cond_d

    const-string v1, "onPlayEvent: onRecvFirstAudioFrame."

    .line 477
    invoke-direct {p0, v1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 478
    iput-boolean v2, p0, Lcom/tencent/live2/a/a;->f:Z

    if-eqz v0, :cond_d

    .line 480
    iget-object v1, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onAudioPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_d

    const-string v1, "EVT_GET_MSG"

    .line 504
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 505
    iget-object v2, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    iget v3, p0, Lcom/tencent/live2/a/a;->q:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onReceiveSeiMessage(Lcom/tencent/live2/V2TXLivePlayer;I[B)V

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_d

    const-string v1, "EVT_PARAM1"

    .line 510
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "EVT_PARAM2"

    .line 511
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 512
    iget-object v3, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoResolutionChanged(Lcom/tencent/live2/V2TXLivePlayer;II)V

    goto/16 :goto_0

    .line 462
    :cond_7
    iget-boolean v1, p0, Lcom/tencent/live2/a/a;->h:Z

    if-nez v1, :cond_d

    const-string v1, "onPlayEvent: loading start."

    .line 463
    invoke-direct {p0, v1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 464
    iput-boolean v2, p0, Lcom/tencent/live2/a/a;->h:Z

    if-eqz v0, :cond_d

    .line 466
    iget-boolean v1, p0, Lcom/tencent/live2/a/a;->e:Z

    if-eqz v1, :cond_8

    .line 467
    iget-object v1, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V

    .line 469
    :cond_8
    iget-boolean v1, p0, Lcom/tencent/live2/a/a;->f:Z

    if-eqz v1, :cond_d

    .line 470
    iget-object v1, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onAudioLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V

    goto :goto_0

    .line 435
    :cond_9
    iget-boolean v1, p0, Lcom/tencent/live2/a/a;->r:Z

    if-nez v1, :cond_d

    .line 436
    iput-boolean v2, p0, Lcom/tencent/live2/a/a;->r:Z

    if-eqz v0, :cond_d

    .line 438
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_a

    .line 439
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_a

    const-string v2, "serverip"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, ""

    .line 440
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_a
    iget-object v2, p0, Lcom/tencent/live2/a/a;->k:Lcom/tencent/live2/V2TXLivePlayerObserver;

    iget-object v3, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onConnected(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_b
    const-string v1, "onPlayEvent: stop play because of disconnect."

    .line 516
    invoke-direct {p0, v1}, Lcom/tencent/live2/a/a;->d(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->a()V

    if-eqz v0, :cond_d

    .line 520
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_c

    const-string v2, "reason"

    .line 522
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 523
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 524
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    :cond_c
    iget-object v2, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    const/4 v3, -0x8

    const-string v4, "The network is disconnected, and the rescue is invalid after multiple reconnections"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onError(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_d
    :goto_0
    if-eqz v0, :cond_e

    .line 532
    instance-of v1, v0, Lcom/tencent/live2/impl/a/a;

    if-eqz v1, :cond_e

    .line 534
    check-cast v0, Lcom/tencent/live2/impl/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/live2/impl/a/a;->a(ILandroid/os/Bundle;)V

    :cond_e
    return-void
.end method

.method public onRenderVideoFrame(Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;)V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/tencent/live2/a/a;->k:Lcom/tencent/live2/V2TXLivePlayerObserver;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 378
    new-instance v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;

    invoke-direct {v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;-><init>()V

    .line 379
    sget-object v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;->V2TXLivePixelFormatTexture2D:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    iput-object v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->pixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    .line 380
    sget-object v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeTexture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    iput-object v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 381
    iget v2, p1, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->width:I

    iput v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->width:I

    .line 382
    iget v2, p1, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->height:I

    iput v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    const/4 v2, 0x0

    .line 383
    iput v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->rotation:I

    .line 385
    new-instance v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    invoke-direct {v2}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;-><init>()V

    iput-object v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    .line 386
    iget-object v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    iget v3, p1, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->textureId:I

    iput v3, v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->textureId:I

    .line 387
    iget-object v2, p1, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->eglContext:Ljava/lang/Object;

    instance-of v2, v2, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    iget-object p1, p1, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->eglContext:Ljava/lang/Object;

    check-cast p1, Ljavax/microedition/khronos/egl/EGLContext;

    iput-object p1, v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->eglContext10:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    iget-object v2, p1, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->eglContext:Ljava/lang/Object;

    instance-of v2, v2, Landroid/opengl/EGLContext;

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->texture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;

    iget-object p1, p1, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->eglContext:Ljava/lang/Object;

    check-cast p1, Landroid/opengl/EGLContext;

    iput-object p1, v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTexture;->eglContext14:Landroid/opengl/EGLContext;

    .line 393
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onRenderVideoFrame(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextureView: available width-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    .line 675
    :cond_0
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p1, p2, p3}, Lcom/tencent/rtmp/TXLivePlayer;->setSurfaceSize(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "TextureView: destroyed."

    .line 686
    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 687
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TextureView: size changed width-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 681
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p1, p2, p3}, Lcom/tencent/rtmp/TXLivePlayer;->setSurfaceSize(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoRawDataAvailable([BIII)V
    .locals 2

    .line 399
    iget-object p4, p0, Lcom/tencent/live2/a/a;->k:Lcom/tencent/live2/V2TXLivePlayerObserver;

    if-eqz p4, :cond_0

    .line 401
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;

    invoke-direct {v0}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;-><init>()V

    .line 402
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;->V2TXLivePixelFormatI420:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    iput-object v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->pixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    .line 403
    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeByteArray:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    iput-object v1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 404
    iput-object p1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->data:[B

    .line 405
    iput p2, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->width:I

    .line 406
    iput p3, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->height:I

    const/4 p1, 0x0

    .line 407
    iput p1, v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;->rotation:I

    .line 408
    iget-object p1, p0, Lcom/tencent/live2/a/a;->b:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {p4, p1, v0}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onRenderVideoFrame(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V

    :cond_0
    return-void
.end method

.method public pauseAudio()I
    .locals 2

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/tencent/live2/a/a;->j:Z

    .line 257
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->setMute(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public pauseVideo()I
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/tencent/live2/a/a;->m:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/tencent/live2/a/a;->o:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/live2/a/a;->n:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public resumeAudio()I
    .locals 2

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/tencent/live2/a/a;->j:Z

    .line 264
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->setMute(Z)V

    return v0
.end method

.method public resumeVideo()I
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/tencent/live2/a/a;->m:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/tencent/live2/a/a;->n:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/tencent/live2/a/a;->o:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCacheParams(FF)I
    .locals 3

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force fix error params. min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v2, p2

    move p2, p1

    move p1, v2

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setCacheTime(F)V

    .line 311
    iget-object v0, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setMaxAutoAdjustCacheTime(F)V

    .line 312
    iget-object v0, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0, p2}, Lcom/tencent/rtmp/TXLivePlayConfig;->setMinAutoAdjustCacheTime(F)V

    .line 313
    iget-object v0, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    cmpl-float p1, p2, p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setAutoAdjustCacheTime(Z)V

    return p2
.end method

.method public setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/tencent/live2/a/a;->k:Lcom/tencent/live2/V2TXLivePlayerObserver;

    return-void
.end method

.method public setPlayoutVolume(I)I
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayer;->setVolume(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "secondsBetweenReconnection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "maxNumberOfReconnection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "setSurface"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "enableRecvSEIMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "setSurfaceSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "setPlayURLType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "enableHardwareAcceleration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "setLEBEnvironment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p2, :cond_2

    .line 138
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayConfig;->setConnectRetryInterval(I)V

    .line 140
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    iget-object p2, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    goto/16 :goto_2

    :pswitch_1
    if-eqz p2, :cond_2

    .line 132
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayConfig;->setConnectRetryCount(I)V

    .line 134
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    iget-object p2, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    goto :goto_2

    :pswitch_2
    if-eqz p2, :cond_2

    .line 127
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->enableHardwareDecode(Z)Z

    goto :goto_2

    :pswitch_3
    if-eqz p2, :cond_2

    .line 122
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 123
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/tencent/live2/a/a;->p:I

    goto :goto_2

    :pswitch_4
    if-eqz p2, :cond_2

    .line 116
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayConfig;->setEnableMessage(Z)V

    .line 118
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    iget-object p2, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    goto :goto_2

    :pswitch_5
    if-eqz p2, :cond_2

    .line 110
    instance-of p1, p2, Lcom/tencent/live2/impl/a$a;

    if-eqz p1, :cond_2

    .line 111
    check-cast p2, Lcom/tencent/live2/impl/a$a;

    .line 112
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    iget v0, p2, Lcom/tencent/live2/impl/a$a;->a:I

    iget p2, p2, Lcom/tencent/live2/impl/a$a;->b:I

    invoke-virtual {p1, v0, p2}, Lcom/tencent/rtmp/TXLivePlayer;->setSurfaceSize(II)V

    goto :goto_2

    :pswitch_6
    if-nez p2, :cond_1

    .line 102
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_2

    .line 104
    :cond_1
    instance-of p1, p2, Landroid/view/Surface;

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    :cond_2
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c787eb4 -> :sswitch_7
        -0x2e819355 -> :sswitch_6
        0xb57f9b3 -> :sswitch_5
        0x1c9cdc8c -> :sswitch_4
        0x2eec3e99 -> :sswitch_3
        0x42c875eb -> :sswitch_2
        0x619cf3f5 -> :sswitch_1
        0x713a347a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRenderFillMode(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "setRenderFillMode: param is null, fix it."

    .line 199
    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->e(Ljava/lang/String;)V

    .line 200
    sget-object p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-static {p1}, Lcom/tencent/live2/impl/V2TXLiveUtils;->getRTMPFillMode(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayer;->setRenderMode(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setRenderRotation(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "setRenderRotation: param is null, fix it."

    .line 189
    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->e(Ljava/lang/String;)V

    .line 190
    sget-object p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->V2TXLiveRotation0:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-static {p1}, Lcom/tencent/live2/impl/V2TXLiveUtils;->getRTMPRotation(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayer;->setRenderRotation(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setRenderView(Landroid/view/SurfaceView;)I
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->c()V

    .line 181
    iput-object p1, p0, Lcom/tencent/live2/a/a;->o:Landroid/view/SurfaceView;

    .line 182
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->b()V

    const/4 p1, 0x0

    return p1
.end method

.method public setRenderView(Landroid/view/TextureView;)I
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->c()V

    .line 173
    iput-object p1, p0, Lcom/tencent/live2/a/a;->n:Landroid/view/TextureView;

    .line 174
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->b()V

    const/4 p1, 0x0

    return p1
.end method

.method public setRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->c()V

    if-eqz p1, :cond_0

    .line 163
    iget-boolean v0, p0, Lcom/tencent/live2/a/a;->l:Z

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->showLog(Z)V

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/tencent/live2/a/a;->m:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 166
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->b()V

    const/4 p1, 0x0

    return p1
.end method

.method public showDebugView(Z)V
    .locals 1

    .line 367
    iput-boolean p1, p0, Lcom/tencent/live2/a/a;->l:Z

    .line 368
    iget-object v0, p0, Lcom/tencent/live2/a/a;->m:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->showLog(Z)V

    :cond_0
    return-void
.end method

.method public snapshot()I
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    new-instance v1, Lcom/tencent/live2/a/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/live2/a/a$1;-><init>(Lcom/tencent/live2/a/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer;->snapshot(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;)V

    const/4 v0, 0x0

    return v0
.end method

.method public startPlay(Ljava/lang/String;)I
    .locals 6

    .line 209
    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay: url-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->c()V

    .line 214
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->b()V

    const/4 v1, 0x0

    .line 217
    iput-boolean v1, p0, Lcom/tencent/live2/a/a;->e:Z

    .line 218
    iput-boolean v1, p0, Lcom/tencent/live2/a/a;->f:Z

    .line 219
    iput-boolean v1, p0, Lcom/tencent/live2/a/a;->h:Z

    const/4 v2, 0x1

    .line 220
    iput-boolean v2, p0, Lcom/tencent/live2/a/a;->g:Z

    .line 223
    iget-object v3, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    iget-object v4, p0, Lcom/tencent/live2/a/a;->d:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v3, v4}, Lcom/tencent/rtmp/TXLivePlayer;->setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    .line 224
    iget-object v3, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v2, "{\"api\":\"setInterfaceType\", \"params\": {\"type\":%d}}"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/rtmp/TXLivePlayer;->callExperimentalAPI(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {v2, p1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->startPlay(Ljava/lang/String;I)I

    move-result p1

    .line 229
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    iget-boolean v2, p0, Lcom/tencent/live2/a/a;->j:Z

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXLivePlayer;->setMute(Z)V

    if-eqz p1, :cond_0

    const-string p1, "startPlay: play fail, force stop."

    .line 232
    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->d(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->a()V

    :cond_0
    return v1
.end method

.method public stopPlay()I
    .locals 2

    const-string v0, "stopPlay:"

    .line 240
    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 241
    iget-boolean v0, p0, Lcom/tencent/live2/a/a;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "stopPlay: player have been stop."

    .line 242
    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->e(Ljava/lang/String;)V

    return v1

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/tencent/live2/a/a;->a()V

    return v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "SurfaceView: onSizeChanged."

    .line 659
    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 660
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-virtual {p1, p3, p4}, Lcom/tencent/rtmp/TXLivePlayer;->setSurfaceSize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "SurfaceView: onCreate."

    .line 653
    invoke-direct {p0, v0}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "SurfaceView: onDestroyed."

    .line 665
    invoke-direct {p0, p1}, Lcom/tencent/live2/a/a;->c(Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/tencent/live2/a/a;->c:Lcom/tencent/rtmp/TXLivePlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
