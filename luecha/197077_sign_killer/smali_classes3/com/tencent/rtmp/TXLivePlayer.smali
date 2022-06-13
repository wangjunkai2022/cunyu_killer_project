.class public Lcom/tencent/rtmp/TXLivePlayer;
.super Ljava/lang/Object;
.source "TXLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;,
        Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;,
        Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;,
        Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;,
        Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;,
        Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;
    }
.end annotation


# static fields
.field public static final PLAY_TYPE_LIVE_FLV:I = 0x1

.field public static final PLAY_TYPE_LIVE_RTMP:I = 0x0

.field public static final PLAY_TYPE_LIVE_RTMP_ACC:I = 0x5

.field public static final PLAY_TYPE_LOCAL_VIDEO:I = 0x6

.field public static final PLAY_TYPE_VOD_FLV:I = 0x2

.field public static final PLAY_TYPE_VOD_HLS:I = 0x3

.field public static final PLAY_TYPE_VOD_MP4:I = 0x4

.field public static final TAG:Ljava/lang/String; = "TXLivePlayer"


# instance fields
.field private mTXLivePlayerImpl:Lcom/tencent/rtmp/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/tencent/rtmp/a;

    invoke-direct {v0, p1}, Lcom/tencent/rtmp/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    return-void
.end method


# virtual methods
.method public addVideoRawData([B)Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a([B)Z

    move-result p1

    return p1
.end method

.method public callExperimentalAPI(Ljava/lang/String;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public enableAudioVolumeEvaluation(I)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->e(I)V

    return-void
.end method

.method public enableHardwareDecode(Z)Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->b(Z)Z

    move-result p1

    return p1
.end method

.method public getCurrentRenderPts()J
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0}, Lcom/tencent/rtmp/a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0}, Lcom/tencent/rtmp/a;->a()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0}, Lcom/tencent/rtmp/a;->b()V

    return-void
.end method

.method public prepareLiveSeek(Ljava/lang/String;I)I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/rtmp/a;->b(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public resume()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0}, Lcom/tencent/rtmp/a;->c()V

    return-void
.end method

.method public resumeLive()I
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0}, Lcom/tencent/rtmp/a;->e()I

    move-result v0

    return v0
.end method

.method public seek(I)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->g(I)V

    return-void
.end method

.method public setAudioRawDataListener(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;)V

    return-void
.end method

.method public setAudioRoute(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->d(I)V

    return-void
.end method

.method public setAudioVolumeEvaluationListener(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->d(Z)V

    return-void
.end method

.method public setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayConfig;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->c(Z)V

    return-void
.end method

.method public setPlayListener(Lcom/tencent/rtmp/ITXLivePlayListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/ITXLivePlayListener;)V

    return-void
.end method

.method public setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    return-void
.end method

.method public setRate(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(F)V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(I)V

    return-void
.end method

.method public setRenderRotation(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->b(I)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/rtmp/a;->a(II)V

    return-void
.end method

.method public setVideoRawDataListener(Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;)V

    return-void
.end method

.method public setVideoRecordListener(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V

    return-void
.end method

.method public setVideoRenderListener(Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;Ljava/lang/Object;)I
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public setVolume(I)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->c(I)V

    return-void
.end method

.method public snapshot(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;)V

    return-void
.end method

.method public startPlay(Ljava/lang/String;I)I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/rtmp/a;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public startRecord(I)I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->f(I)I

    move-result p1

    return p1
.end method

.method public stopPlay(Z)I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Z)I

    move-result p1

    return p1
.end method

.method public stopRecord()I
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0}, Lcom/tencent/rtmp/a;->d()I

    move-result v0

    return v0
.end method

.method public switchStream(Ljava/lang/String;)I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/tencent/rtmp/TXLivePlayer;->mTXLivePlayerImpl:Lcom/tencent/rtmp/a;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
