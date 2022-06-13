.class public Lcom/tencent/rtmp/a;
.super Ljava/lang/Object;
.source "TXLivePlayerImpl.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp/a$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:I

.field private D:J

.field private E:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;

.field private F:I

.field private G:J

.field private H:Ljava/lang/String;

.field private I:I

.field private J:I

.field private K:Lcom/tencent/liteav/basic/b/a;

.field private L:Lcom/tencent/rtmp/a$a;

.field private M:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

.field private a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private b:Landroid/view/Surface;

.field private c:I

.field private d:I

.field private e:Lcom/tencent/rtmp/ITXLivePlayListener;

.field private f:Lcom/tencent/rtmp/TXLivePlayConfig;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

.field private p:[B

.field private q:Ljava/lang/Object;

.field private r:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

.field private s:Landroid/content/Context;

.field private t:Landroid/os/Handler;

.field private u:Lcom/tencent/liteav/j;

.field private v:Z

.field private w:F

.field private x:Z

.field private y:Lcom/tencent/liteav/e;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/tencent/rtmp/a;->g:Z

    .line 49
    iput-boolean v0, p0, Lcom/tencent/rtmp/a;->h:Z

    const-string v1, ""

    .line 53
    iput-object v1, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/tencent/rtmp/a;->l:Z

    const/16 v2, 0x64

    .line 55
    iput v2, p0, Lcom/tencent/rtmp/a;->m:I

    .line 56
    iput v1, p0, Lcom/tencent/rtmp/a;->n:I

    const/4 v2, 0x0

    .line 57
    iput-object v2, p0, Lcom/tencent/rtmp/a;->o:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    .line 58
    iput-object v2, p0, Lcom/tencent/rtmp/a;->p:[B

    .line 60
    iput-object v2, p0, Lcom/tencent/rtmp/a;->q:Ljava/lang/Object;

    .line 61
    iput-object v2, p0, Lcom/tencent/rtmp/a;->r:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    .line 69
    iput-boolean v0, p0, Lcom/tencent/rtmp/a;->v:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    iput v0, p0, Lcom/tencent/rtmp/a;->w:F

    .line 71
    iput-boolean v1, p0, Lcom/tencent/rtmp/a;->x:Z

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/tencent/rtmp/a;->C:I

    const-wide/16 v3, 0x0

    .line 78
    iput-wide v3, p0, Lcom/tencent/rtmp/a;->D:J

    .line 81
    iput-object v2, p0, Lcom/tencent/rtmp/a;->E:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;

    .line 82
    iput v1, p0, Lcom/tencent/rtmp/a;->F:I

    .line 90
    iput v1, p0, Lcom/tencent/rtmp/a;->J:I

    .line 549
    iput-object v2, p0, Lcom/tencent/rtmp/a;->L:Lcom/tencent/rtmp/a$a;

    .line 95
    iput-object v2, p0, Lcom/tencent/rtmp/a;->e:Lcom/tencent/rtmp/ITXLivePlayListener;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/rtmp/a;->s:Landroid/content/Context;

    .line 97
    iget-object p1, p0, Lcom/tencent/rtmp/a;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setAppContext(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/tencent/liteav/basic/log/TXCLog;->init()Z

    .line 99
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/rtmp/a;->t:Landroid/os/Handler;

    .line 100
    iget-object p1, p0, Lcom/tencent/rtmp/a;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setAppContext(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lcom/tencent/liteav/basic/log/TXCLog;->init()Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/rtmp/a;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/tencent/rtmp/a;->A:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/rtmp/a;)Lcom/tencent/liteav/j;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " IP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SERVER_IP"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RES:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VIDEO_WIDTH"

    .line 985
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VIDEO_HEIGHT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FPS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VIDEO_FPS"

    .line 986
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " GOP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VIDEO_GOP"

    .line 987
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s Speed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NET_SPEED"

    .line 988
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Kbps AudioSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AUDIO_BITRATE"

    .line 989
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Kbps VideoSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VIDEO_BITRATE"

    .line 990
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Kbps AudioCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AUDIO_CACHE"

    .line 991
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " VideoCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VIDEO_CACHE"

    .line 992
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " VideoCacheFrameCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "V_SUM_CACHE_SIZE"

    .line 993
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " VideoDecoderCacheFrameCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "V_DEC_CACHE_SIZE"

    .line 994
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AVJitterSync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AV_RECV_INTERVAL"

    .line 995
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AVPlaySync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AV_PLAY_INTERVAL"

    .line 996
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AudioParamsInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AUDIO_PLAY_INFO"

    .line 997
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 5

    const/16 v0, 0x3a99

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    .line 945
    iget-object p1, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "room://"

    .line 950
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    .line 952
    invoke-direct {p0, p2}, Lcom/tencent/rtmp/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/a;->H:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "AUDIO_CACHE"

    .line 953
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "NET_SPEED"

    .line 954
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "VIDEO_FPS"

    .line 955
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "AV_RECV_INTERVAL"

    .line 956
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "AV_PLAY_INTERVAL"

    .line 957
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p1, :cond_1

    .line 959
    iget p1, p0, Lcom/tencent/rtmp/a;->I:I

    if-gt p1, v1, :cond_3

    :cond_1
    const/16 p1, 0xa

    if-lt v2, p1, :cond_3

    if-eqz v0, :cond_2

    const/4 p1, 0x5

    if-lt v0, p1, :cond_3

    .line 962
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_3

    .line 963
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v0, :cond_6

    .line 964
    :cond_3
    invoke-direct {p0}, Lcom/tencent/rtmp/a;->i()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x839

    if-ne p1, v0, :cond_6

    .line 968
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Event]code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " param:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXLivePlayer"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-direct {p0}, Lcom/tencent/rtmp/a;->i()V

    :cond_6
    :goto_0
    return-void
.end method

.method private a(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1030
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1031
    new-instance v1, Lcom/tencent/rtmp/a$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/rtmp/a$5;-><init>(Lcom/tencent/rtmp/a;Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/rtmp/a;Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/rtmp/a;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/tencent/rtmp/a;->x:Z

    return p1
.end method

.method static synthetic a(Lcom/tencent/rtmp/a;[B)[B
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tencent/rtmp/a;->p:[B

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/rtmp/a;)Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/rtmp/a;->E:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/rtmp/a;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/rtmp/a;->t:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    .line 1019
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->tryEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1022
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] TXLivePlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXLivePlayer"

    .line 109
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/rtmp/a;)Lcom/tencent/rtmp/a$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/rtmp/a;->L:Lcom/tencent/rtmp/a$a;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/rtmp/a;)Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/rtmp/a;->r:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/rtmp/a;)[B
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/rtmp/a;->p:[B

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/rtmp/a;)Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/rtmp/a;->o:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_2

    .line 554
    iget v1, p0, Lcom/tencent/rtmp/a;->F:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/tencent/rtmp/a;->F:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/j;->a(ZI)V

    .line 556
    iget v0, p0, Lcom/tencent/rtmp/a;->F:I

    if-lez v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/tencent/rtmp/a;->L:Lcom/tencent/rtmp/a$a;

    if-nez v0, :cond_1

    .line 558
    new-instance v0, Lcom/tencent/rtmp/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/rtmp/a$a;-><init>(Lcom/tencent/rtmp/a;Lcom/tencent/rtmp/a$1;)V

    iput-object v0, p0, Lcom/tencent/rtmp/a;->L:Lcom/tencent/rtmp/a$a;

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/a;->L:Lcom/tencent/rtmp/a$a;

    iget v1, p0, Lcom/tencent/rtmp/a;->F:I

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/a$a;->a(I)V

    .line 563
    iget-object v0, p0, Lcom/tencent/rtmp/a;->t:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 564
    iget-object v1, p0, Lcom/tencent/rtmp/a;->L:Lcom/tencent/rtmp/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 565
    iget-object v0, p0, Lcom/tencent/rtmp/a;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->L:Lcom/tencent/rtmp/a$a;

    iget v2, p0, Lcom/tencent/rtmp/a;->F:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private h()V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0, v1, v1}, Lcom/tencent/liteav/j;->a(ZI)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a;->t:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 576
    iget-object v2, p0, Lcom/tencent/rtmp/a;->L:Lcom/tencent/rtmp/a$a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/tencent/rtmp/a;->L:Lcom/tencent/rtmp/a$a;

    .line 579
    iput v1, p0, Lcom/tencent/rtmp/a;->F:I

    return-void
.end method

.method private i()V
    .locals 6

    .line 975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 976
    iget-wide v2, p0, Lcom/tencent/rtmp/a;->G:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 977
    iput-wide v0, p0, Lcom/tencent/rtmp/a;->G:J

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Statistics] logStatisticsStr statistics:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private j()Z
    .locals 2

    .line 1010
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Manufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Che2-TL00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;Ljava/lang/Object;)I
    .locals 5

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoRenderListener listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 655
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, -0x1

    const-string v3, "setVideoRenderListener error when glContext error "

    const-string v4, "TXLivePlayer"

    if-lt v0, v1, :cond_0

    .line 656
    instance-of v0, p2, Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/opengl/EGLContext;

    if-nez v0, :cond_1

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 661
    :cond_0
    instance-of v0, p2, Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_1

    .line 662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 668
    :cond_1
    iput-object p2, p0, Lcom/tencent/rtmp/a;->q:Ljava/lang/Object;

    .line 669
    iput-object p1, p0, Lcom/tencent/rtmp/a;->r:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    .line 671
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 673
    new-instance p1, Lcom/tencent/rtmp/a$2;

    invoke-direct {p1, p0}, Lcom/tencent/rtmp/a$2;-><init>(Lcom/tencent/rtmp/a;)V

    sget-object v1, Lcom/tencent/liteav/basic/enums/b;->c:Lcom/tencent/liteav/basic/enums/b;

    invoke-virtual {v0, p1, v1, p2}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/k;Lcom/tencent/liteav/basic/enums/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 691
    :cond_2
    sget-object p1, Lcom/tencent/liteav/basic/enums/b;->a:Lcom/tencent/liteav/basic/enums/b;

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, p2}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/k;Lcom/tencent/liteav/basic/enums/b;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream]switchStream url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/j;->a(Ljava/lang/String;Lcom/tencent/liteav/basic/b/a;)I

    move-result p1

    return p1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;I)I
    .locals 6

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "TXLivePlayer"

    if-eqz v0, :cond_0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start play error when url is empty "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/rtmp/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start play error when new url is the same with old url  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-boolean p1, p0, Lcom/tencent/rtmp/a;->z:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x7d4

    .line 182
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/rtmp/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 184
    :cond_1
    iget-boolean p1, p0, Lcom/tencent/rtmp/a;->z:Z

    if-eqz p1, :cond_2

    move v1, v3

    :cond_2
    return v1

    .line 186
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " stop old play when new url is not the same with old url  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {v0, v3}, Lcom/tencent/liteav/j;->a(Z)I

    :cond_4
    const-string v0, ""

    .line 190
    iput-object v0, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/tencent/rtmp/a;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->initCrashReport(Landroid/content/Context;)V

    const-string v0, "==========================================================================================================================================================="

    .line 196
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=====  StartPlay url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " playType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " DeviceName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SDKVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    ======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/tencent/rtmp/a;->C:I

    if-eq v0, v1, :cond_6

    if-eq v0, p2, :cond_7

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/tencent/rtmp/a;->s:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tencent/liteav/l;->a(Landroid/content/Context;I)Lcom/tencent/liteav/j;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    .line 205
    :cond_7
    iput p2, p0, Lcom/tencent/rtmp/a;->C:I

    .line 207
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-nez v0, :cond_8

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "liteav_api startPlay create palyer failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    .line 212
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlay url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    .line 218
    iget-object p1, p0, Lcom/tencent/rtmp/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz p1, :cond_9

    .line 219
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->clearLog()V

    .line 220
    iget-object p1, p0, Lcom/tencent/rtmp/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1, v3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setVisibility(I)V

    .line 222
    :cond_9
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget-object v0, p0, Lcom/tencent/rtmp/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/j;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 223
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/basic/c/b;)V

    .line 224
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget-boolean v0, p0, Lcom/tencent/rtmp/a;->v:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/j;->e(Z)V

    .line 225
    iget-object p1, p0, Lcom/tencent/rtmp/a;->b:Landroid/view/Surface;

    if-eqz p1, :cond_a

    .line 226
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(Landroid/view/Surface;)V

    .line 227
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget v0, p0, Lcom/tencent/rtmp/a;->c:I

    iget v1, p0, Lcom/tencent/rtmp/a;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/j;->a(II)V

    .line 229
    :cond_a
    iget-object p1, p0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/b/a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->equalURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 230
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget-object v0, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {p1, v0, p2, v1}, Lcom/tencent/liteav/j;->a(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I

    goto :goto_0

    .line 232
    :cond_b
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget-object v0, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/liteav/j;->a(Ljava/lang/String;I)I

    .line 234
    :goto_0
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget-boolean p2, p0, Lcom/tencent/rtmp/a;->l:Z

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/j;->b(Z)V

    .line 235
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget p2, p0, Lcom/tencent/rtmp/a;->m:I

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/j;->c(I)V

    .line 236
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget p2, p0, Lcom/tencent/rtmp/a;->n:I

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/j;->d(I)V

    .line 237
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget p2, p0, Lcom/tencent/rtmp/a;->w:F

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/j;->b(F)V

    .line 238
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget p2, p0, Lcom/tencent/rtmp/a;->j:I

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/j;->b(I)V

    .line 239
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget p2, p0, Lcom/tencent/rtmp/a;->i:I

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/j;->a(I)V

    .line 240
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget-object p2, p0, Lcom/tencent/rtmp/a;->M:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/j;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;)V

    .line 241
    iget-object p1, p0, Lcom/tencent/rtmp/a;->o:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;)V

    .line 242
    :cond_c
    iget-object p1, p0, Lcom/tencent/rtmp/a;->r:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/tencent/rtmp/a;->q:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;Ljava/lang/Object;)I

    .line 243
    :cond_d
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {p1}, Lcom/tencent/liteav/j;->f()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 244
    iget-object p1, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/rtmp/a;->B:Ljava/lang/String;

    .line 246
    iget-object p1, p0, Lcom/tencent/rtmp/a;->y:Lcom/tencent/liteav/e;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/tencent/liteav/e;->a()J

    move-result-wide p1

    goto :goto_1

    :cond_e
    move-wide p1, v0

    :goto_1
    iput-wide p1, p0, Lcom/tencent/rtmp/a;->A:J

    .line 247
    iget-wide p1, p0, Lcom/tencent/rtmp/a;->A:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_f

    .line 248
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {p1}, Lcom/tencent/liteav/j;->h()V

    .line 252
    :cond_f
    iget p1, p0, Lcom/tencent/rtmp/a;->J:I

    if-nez p1, :cond_10

    .line 253
    iget-object p1, p0, Lcom/tencent/rtmp/a;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/tencent/liteav/basic/datareport/a;->bv:I

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    goto :goto_2

    .line 255
    :cond_10
    iget-object p1, p0, Lcom/tencent/rtmp/a;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/tencent/liteav/basic/datareport/a;->bI:I

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 257
    :goto_2
    invoke-direct {p0}, Lcom/tencent/rtmp/a;->g()V

    return v3
.end method

.method public a(Z)I
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPlay need clear:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/tencent/rtmp/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 266
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setVisibility(I)V

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/tencent/rtmp/a;->h()V

    .line 272
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(Z)I

    :cond_1
    const-string p1, ""

    .line 275
    iput-object p1, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 276
    iput-wide v0, p0, Lcom/tencent/rtmp/a;->A:J

    const/4 p1, 0x0

    .line 277
    iput p1, p0, Lcom/tencent/rtmp/a;->J:I

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/tencent/rtmp/a;->y:Lcom/tencent/liteav/e;

    .line 279
    iput-boolean p1, p0, Lcom/tencent/rtmp/a;->z:Z

    .line 280
    iput-object v0, p0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    return p1
.end method

.method public a(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXLivePlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iput p1, p0, Lcom/tencent/rtmp/a;->w:F

    .line 798
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->b(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRenderMode mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 332
    iput p1, p0, Lcom/tencent/rtmp/a;->i:I

    .line 333
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurfaceSize width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 323
    iput p1, p0, Lcom/tencent/rtmp/a;->c:I

    .line 324
    iput p2, p0, Lcom/tencent/rtmp/a;->d:I

    .line 325
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/j;->a(II)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface old:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->b:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 315
    iput-object p1, p0, Lcom/tencent/rtmp/a;->b:Landroid/view/Surface;

    .line 316
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/tencent/rtmp/a;->b:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/j;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/rtmp/ITXLivePlayListener;)V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayListener listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/tencent/rtmp/a;->e:Lcom/tencent/rtmp/ITXLivePlayListener;

    return-void
.end method

.method public a(Lcom/tencent/rtmp/TXLivePlayConfig;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    .line 116
    iget-object p1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    if-nez p1, :cond_1

    .line 117
    new-instance p1, Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-direct {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;-><init>()V

    iput-object p1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz p1, :cond_3

    .line 121
    invoke-virtual {p1}, Lcom/tencent/liteav/j;->w()Lcom/tencent/liteav/d;

    move-result-object p1

    if-nez p1, :cond_2

    .line 123
    new-instance p1, Lcom/tencent/liteav/d;

    invoke-direct {p1}, Lcom/tencent/liteav/d;-><init>()V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMinAutoAdjustCacheTime:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/rtmp/a;->I:I

    .line 126
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mCacheTime:F

    iput v0, p1, Lcom/tencent/liteav/d;->a:F

    .line 127
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-boolean v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mAutoAdjustCacheTime:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->g:Z

    .line 128
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMinAutoAdjustCacheTime:F

    iput v0, p1, Lcom/tencent/liteav/d;->c:F

    .line 129
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMaxAutoAdjustCacheTime:F

    iput v0, p1, Lcom/tencent/liteav/d;->b:F

    .line 130
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mVideoBlockThreshold:I

    iput v0, p1, Lcom/tencent/liteav/d;->d:I

    .line 131
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryCount:I

    iput v0, p1, Lcom/tencent/liteav/d;->e:I

    .line 132
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryInterval:I

    iput v0, p1, Lcom/tencent/liteav/d;->f:I

    .line 133
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-boolean v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableNearestIP:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->i:Z

    .line 134
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mRtmpChannelType:I

    iput v0, p1, Lcom/tencent/liteav/d;->m:I

    .line 135
    iget-boolean v0, p0, Lcom/tencent/rtmp/a;->g:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->h:Z

    .line 136
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-object v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mCacheFolderPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/liteav/d;->n:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mMaxCacheItems:I

    iput v0, p1, Lcom/tencent/liteav/d;->o:I

    .line 138
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-boolean v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMessage:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->j:Z

    .line 139
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-boolean v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMetaData:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->k:Z

    .line 140
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-object v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mFlvSessionKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/liteav/d;->l:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-object v0, v0, Lcom/tencent/rtmp/TXLivePlayConfig;->mHeaders:Ljava/util/Map;

    iput-object v0, p1, Lcom/tencent/liteav/d;->q:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "liteav_api setConfig [cacheTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mCacheTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "][autoAdjustCacheTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mAutoAdjustCacheTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "][minAutoAdjustCacheTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mMinAutoAdjustCacheTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "][maxAutoAdjustCacheTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mMaxAutoAdjustCacheTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "][videoBlockThreshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mVideoBlockThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][connectRetryCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][connectRetryInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mConnectRetryInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][enableHWDec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/rtmp/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "][enableMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "][enableMetaData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mEnableMetaData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "][flvSessionKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->f:Lcom/tencent/rtmp/TXLivePlayConfig;

    iget-object v1, v1, Lcom/tencent/rtmp/TXLivePlayConfig;->mFlvSessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXLivePlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/d;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;)V
    .locals 2

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioRawDataListener listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 731
    iput-object p1, p0, Lcom/tencent/rtmp/a;->M:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    .line 732
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/tencent/rtmp/a;->E:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;

    return-void
.end method

.method public a(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;)V
    .locals 2

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapshot listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 618
    iget-boolean v0, p0, Lcom/tencent/rtmp/a;->x:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 621
    iput-boolean v0, p0, Lcom/tencent/rtmp/a;->x:Z

    .line 622
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_1

    .line 623
    new-instance v1, Lcom/tencent/rtmp/a$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/rtmp/a$1;-><init>(Lcom/tencent/rtmp/a;Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/basic/e/k;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 631
    iput-boolean p1, p0, Lcom/tencent/rtmp/a;->x:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;)V
    .locals 3

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoRawDataListener listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 700
    iput-object p1, p0, Lcom/tencent/rtmp/a;->o:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    .line 701
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 706
    new-instance p1, Lcom/tencent/rtmp/a$3;

    invoke-direct {p1, p0}, Lcom/tencent/rtmp/a$3;-><init>(Lcom/tencent/rtmp/a;)V

    sget-object v2, Lcom/tencent/liteav/basic/enums/b;->b:Lcom/tencent/liteav/basic/enums/b;

    invoke-virtual {v0, p1, v2, v1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/k;Lcom/tencent/liteav/basic/enums/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 725
    :cond_1
    sget-object p1, Lcom/tencent/liteav/basic/enums/b;->a:Lcom/tencent/liteav/basic/enums/b;

    invoke-virtual {v0, v1, p1, v1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/k;Lcom/tencent/liteav/basic/enums/b;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerView old:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 165
    iput-object p1, p0, Lcom/tencent/rtmp/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 166
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V
    .locals 2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoRecordListener listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/tencent/liteav/j;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a([B)Z
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/rtmp/a;->g:Z

    const-string v2, "TXLivePlayer"

    if-eqz v0, :cond_1

    const-string p1, "can not addVideoRawData because of hw decode has set!"

    .line 641
    invoke-static {v2, p1}, Lcom/tencent/rtmp/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-nez v0, :cond_2

    const-string p1, "player hasn\'t created or not instanceof live player"

    .line 645
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 648
    :cond_2
    iput-object p1, p0, Lcom/tencent/rtmp/a;->p:[B

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public b(Ljava/lang/String;I)I
    .locals 3

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareLiveSeek domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bizid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/tencent/rtmp/a;->y:Lcom/tencent/liteav/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/liteav/e;

    invoke-direct {v0}, Lcom/tencent/liteav/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/rtmp/a;->y:Lcom/tencent/liteav/e;

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a;->y:Lcom/tencent/liteav/e;

    if-eqz v0, :cond_1

    .line 741
    iget-object v1, p0, Lcom/tencent/rtmp/a;->k:Ljava/lang/String;

    new-instance v2, Lcom/tencent/rtmp/a$4;

    invoke-direct {v2, p0}, Lcom/tencent/rtmp/a$4;-><init>(Lcom/tencent/rtmp/a;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/tencent/liteav/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/e$a;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public b()V
    .locals 2

    const-string v0, "pause"

    .line 293
    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    const-string v0, "TXLivePlayer"

    const-string v1, "pause play"

    .line 295
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->a()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRenderRotation rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 340
    iput p1, p0, Lcom/tencent/rtmp/a;->j:I

    .line 341
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "encIV"

    const-string v3, "encKey"

    const-string v4, "encMode"

    const-string v5, "url"

    const-string v6, "payloadType"

    const-string v7, "type"

    const-string v8, "enable"

    const-string v9, "params"

    const-string v10, "api"

    .line 437
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, ""

    const-string v13, "callExperimentalAPI json:"

    const-string v14, "setEncryptionParams"

    const-string v15, "TXLivePlayer"

    if-nez v11, :cond_0

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 438
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 440
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v12

    goto :goto_0

    :cond_1
    move-object v13, v14

    :goto_0
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_1
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callExperimentalAPI[lack api or illegal type]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 448
    :cond_2
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    .line 450
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 451
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    :cond_3
    const-string v9, "muteRemoteAudioInSpeaker"

    .line 454
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_7

    if-nez v13, :cond_4

    const-string v2, "muteRemoteAudioInSpeaker[lack parameter]"

    .line 456
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 459
    :cond_4
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "muteRemoteAudioInSpeaker[lack parameter]: enable"

    .line 460
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 463
    :cond_5
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 464
    iget-object v3, v0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v11

    :goto_2
    invoke-virtual {v3, v4}, Lcom/tencent/liteav/j;->c(Z)V

    goto/16 :goto_4

    :cond_7
    const-string v8, "setInterfaceType"

    .line 465
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v13, :cond_8

    const-string v2, "setInterfaceType[lack parameter]"

    .line 467
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 470
    :cond_8
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "setInterfaceType[lack parameter]: type"

    .line 471
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 475
    :cond_9
    invoke-virtual {v13, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/tencent/rtmp/a;->J:I

    goto/16 :goto_4

    :cond_a
    const-string v7, "setSEIPayloadType"

    .line 476
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v13, :cond_d

    .line 477
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    .line 481
    :cond_b
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_c

    const/16 v3, 0xf2

    if-eq v2, v3, :cond_c

    const/16 v3, 0x64

    if-eq v2, v3, :cond_c

    const/16 v3, 0xf3

    if-eq v2, v3, :cond_c

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callExperimentalAPI[invalid param]: payloadType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 486
    :cond_c
    iput v2, v0, Lcom/tencent/rtmp/a;->n:I

    .line 487
    iget-object v2, v0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v2, :cond_16

    .line 488
    iget-object v2, v0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    iget v3, v0, Lcom/tencent/rtmp/a;->n:I

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/j;->d(I)V

    goto/16 :goto_4

    :cond_d
    :goto_3
    const-string v2, "callExperimentalAPI[lack parameter or illegal type]: payloadType"

    .line 478
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 490
    :cond_e
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-nez v13, :cond_f

    const-string v2, "setEncryptionParams[lack parameter]"

    .line 492
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 495
    :cond_f
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v2, "setEncryptionParams[lack parameter]: url"

    .line 496
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 499
    :cond_10
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v2, "setEncryptionParams[lack parameter]: encMode"

    .line 500
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 503
    :cond_11
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v2, "setEncryptionParams[lack parameter]: encKey"

    .line 504
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 507
    :cond_12
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v2, "setEncryptionParams[lack parameter]: encIV"

    .line 508
    invoke-static {v15, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 511
    :cond_13
    new-instance v6, Lcom/tencent/liteav/basic/b/a;

    invoke-direct {v6}, Lcom/tencent/liteav/basic/b/a;-><init>()V

    iput-object v6, v0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    .line 512
    iget-object v6, v0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/tencent/liteav/basic/b/a;->a(Ljava/lang/String;)V

    .line 513
    iget-object v5, v0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tencent/liteav/basic/b/a;->a(I)V

    .line 514
    iget-object v4, v0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tencent/liteav/basic/b/a;->b(Ljava/lang/String;)V

    .line 515
    iget-object v3, v0, Lcom/tencent/rtmp/a;->K:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/liteav/basic/b/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 519
    :catch_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callExperimentalAPI[failed]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 522
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callExperimentalAPI[failed]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v14, v12

    :cond_15
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_4
    return-void
.end method

.method public b(Z)Z
    .locals 4

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableHardwareDecode enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 353
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    const-string v3, "HardwareDecode"

    if-ge v0, v1, :cond_0

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableHardwareDecode failed, android system build.version = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", the minimum build.version should be 18(android 4.3 or later)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/tencent/rtmp/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableHardwareDecode failed, MANUFACTURER = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Manufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", MODEL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 363
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/rtmp/a;->g:Z

    .line 365
    iget-object p1, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz p1, :cond_3

    .line 366
    invoke-virtual {p1}, Lcom/tencent/liteav/j;->w()Lcom/tencent/liteav/d;

    move-result-object p1

    if-nez p1, :cond_2

    .line 368
    new-instance p1, Lcom/tencent/liteav/d;

    invoke-direct {p1}, Lcom/tencent/liteav/d;-><init>()V

    .line 370
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/rtmp/a;->g:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->h:Z

    .line 371
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/d;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 5

    const-string v0, "resume"

    .line 301
    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/tencent/liteav/j;->b()V

    .line 304
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/tencent/rtmp/a;->y:Lcom/tencent/liteav/e;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/e;->a()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, Lcom/tencent/rtmp/a;->A:J

    .line 306
    iget-wide v3, p0, Lcom/tencent/rtmp/a;->A:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->h()V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    move p1, v0

    .line 393
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 394
    iput p1, p0, Lcom/tencent/rtmp/a;->m:I

    .line 395
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->c(I)V

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 379
    iput-boolean p1, p0, Lcom/tencent/rtmp/a;->l:Z

    .line 380
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->b(Z)V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    const-string v0, "stopRecord"

    .line 609
    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/tencent/liteav/j;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public d(I)V
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioRoute route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 402
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setAudioRoute(I)V

    return-void
.end method

.method public d(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoPlay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXLivePlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iput-boolean p1, p0, Lcom/tencent/rtmp/a;->v:Z

    return-void
.end method

.method public e()I
    .locals 2

    const-string v0, "resumeLive"

    .line 772
    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 774
    iget-boolean v0, p0, Lcom/tencent/rtmp/a;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/tencent/rtmp/a;->z:Z

    .line 776
    iget-object v0, p0, Lcom/tencent/rtmp/a;->B:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/rtmp/a;->a(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public e(I)V
    .locals 2

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAudioVolumeEvaluation intervalMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    if-lez p1, :cond_1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 426
    :cond_0
    iput p1, p0, Lcom/tencent/rtmp/a;->F:I

    .line 427
    invoke-direct {p0}, Lcom/tencent/rtmp/a;->g()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 430
    iput p1, p0, Lcom/tencent/rtmp/a;->F:I

    .line 431
    invoke-direct {p0}, Lcom/tencent/rtmp/a;->h()V

    :goto_0
    return-void
.end method

.method public f(I)I
    .locals 3

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecord type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const-string v1, "TXLivePlayer"

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 593
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "API levl is too low (record need 18, current is"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/rtmp/a;->a()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    const-string p1, "startRecord: there is no playing stream"

    .line 597
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_2

    .line 601
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->e(I)I

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method public f()J
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/tencent/liteav/j;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g(I)V
    .locals 3

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/rtmp/a;->c(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    if-eqz v0, :cond_5

    .line 756
    invoke-virtual {v0}, Lcom/tencent/liteav/j;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/rtmp/a;->z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a;->u:Lcom/tencent/liteav/j;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/j;->f(I)V

    goto :goto_3

    .line 757
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/rtmp/a;->y:Lcom/tencent/liteav/e;

    if-eqz v0, :cond_2

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/e;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 758
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x3

    .line 759
    invoke-virtual {p0, v0, v1}, Lcom/tencent/rtmp/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/rtmp/a;->z:Z

    .line 760
    iget-boolean v0, p0, Lcom/tencent/rtmp/a;->z:Z

    if-eqz v0, :cond_5

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/rtmp/a;->A:J

    goto :goto_3

    .line 762
    :cond_4
    iget-object p1, p0, Lcom/tencent/rtmp/a;->e:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz p1, :cond_5

    const/16 v0, -0x8fd

    .line 763
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/tencent/rtmp/ITXLivePlayListener;->onPlayEvent(ILandroid/os/Bundle;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 8

    .line 805
    invoke-direct {p0, p1, p2}, Lcom/tencent/rtmp/a;->a(ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    const/16 v1, 0x3a99

    if-ne p1, v1, :cond_1

    .line 807
    iget-object p1, p0, Lcom/tencent/rtmp/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 808
    invoke-virtual {p1, p2, v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setLogText(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    .line 810
    :cond_0
    iget-object p1, p0, Lcom/tencent/rtmp/a;->e:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz p1, :cond_d

    .line 811
    invoke-interface {p1, p2}, Lcom/tencent/rtmp/ITXLivePlayListener;->onNetStatus(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x7d5

    if-ne p1, v1, :cond_2

    const-string v0, "EVT_PLAY_PROGRESS_MS"

    .line 814
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 815
    iget-wide v3, p0, Lcom/tencent/rtmp/a;->A:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_d

    const-wide/16 v3, 0x3e8

    .line 817
    div-long v3, v1, v3

    long-to-int v3, v3

    const-string v4, "EVT_PLAY_PROGRESS"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    long-to-int v1, v1

    .line 818
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    iget-object v0, p0, Lcom/tencent/rtmp/a;->e:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz v0, :cond_d

    .line 820
    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp/ITXLivePlayListener;->onPlayEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0xbba

    const/16 v3, 0x83a

    const/16 v4, 0x7dd

    const/16 v5, 0x7dc

    const/16 v6, -0x8fe

    const/16 v7, -0x8fd

    if-eq p1, v6, :cond_a

    if-eq p1, v7, :cond_3

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_8

    const/16 v4, 0x7e5

    if-eq p1, v4, :cond_7

    const/16 v4, 0x7e6

    if-eq p1, v4, :cond_7

    const/16 v4, 0x839

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_6

    const/16 v3, 0xbbe

    if-eq p1, v3, :cond_5

    const/16 v3, 0xbbf

    if-eq p1, v3, :cond_5

    const/16 v3, 0xbc1

    if-eq p1, v3, :cond_4

    const/16 v3, 0xbc2

    if-eq p1, v3, :cond_4

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    const/16 p1, 0x7d9

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x7d7

    goto :goto_0

    :pswitch_2
    move p1, v1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x7d4

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x7d2

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x7d1

    goto :goto_0

    :sswitch_0
    const/16 p1, 0xbbb

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_2
    const/16 p1, 0x837

    goto :goto_0

    :sswitch_3
    const/16 p1, 0x835

    goto :goto_0

    :sswitch_4
    const/16 p1, 0x7ef

    goto :goto_0

    :sswitch_5
    const/16 p1, 0x7ec

    goto :goto_0

    :sswitch_6
    const/16 p1, 0x7ea

    goto :goto_0

    :sswitch_7
    const/16 p1, 0x7df

    goto :goto_0

    :sswitch_8
    const/16 p1, 0x4b5

    goto :goto_0

    :sswitch_9
    const/16 p1, -0x900

    goto :goto_0

    :sswitch_a
    const/16 p1, -0x903

    goto :goto_0

    :cond_3
    :sswitch_b
    move p1, v7

    goto :goto_0

    :cond_4
    move p1, v2

    goto :goto_0

    :cond_5
    const/16 p1, 0xbbd

    goto :goto_0

    :cond_6
    move p1, v3

    goto :goto_0

    :cond_7
    :pswitch_6
    const/16 p1, 0x7d8

    goto :goto_0

    :cond_8
    move p1, v4

    goto :goto_0

    :cond_9
    move p1, v5

    goto :goto_0

    :cond_a
    move p1, v6

    .line 932
    :cond_b
    :goto_0
    :pswitch_7
    iget-object v1, p0, Lcom/tencent/rtmp/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v1, :cond_c

    .line 933
    invoke-virtual {v1, v0, p2, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setLogText(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    .line 935
    :cond_c
    iget-object v0, p0, Lcom/tencent/rtmp/a;->e:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz v0, :cond_d

    .line 936
    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp/ITXLivePlayListener;->onPlayEvent(ILandroid/os/Bundle;)V

    :cond_d
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x905 -> :sswitch_b
        -0x903 -> :sswitch_a
        -0x900 -> :sswitch_9
        0x4b5 -> :sswitch_8
        0x7df -> :sswitch_7
        0x7ea -> :sswitch_6
        0x7ec -> :sswitch_5
        0x7ef -> :sswitch_4
        0x835 -> :sswitch_3
        0x837 -> :sswitch_2
        0x83d -> :sswitch_1
        0xbbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d7
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
