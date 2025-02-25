.class public Lcom/google/android/exoplayer2/ForwardingPlayer;
.super Ljava/lang/Object;
.source "ForwardingPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;,
        Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;
    }
.end annotation


# instance fields
.field private final player:Lcom/google/android/exoplayer2/Player;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    new-instance v1, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;-><init>(Lcom/google/android/exoplayer2/ForwardingPlayer;Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/ForwardingPlayer$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    new-instance v1, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;-><init>(Lcom/google/android/exoplayer2/ForwardingPlayer;Lcom/google/android/exoplayer2/Player$Listener;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public addMediaItem(ILcom/google/android/exoplayer2/MediaItem;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->addMediaItem(ILcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method

.method public addMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->addMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public clearMediaItems()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->clearMediaItems()V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->clearVideoSurface()V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->clearVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public decreaseDeviceVolume()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->decreaseDeviceVolume()V

    return-void
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentCues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentCues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentLiveOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentStaticMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentStaticMetadata()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDeviceInfo()Lcom/google/android/exoplayer2/device/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDeviceVolume()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getMaxSeekToPreviousPosition()I

    move-result v0

    return v0
.end method

.method public getMediaItemAt(I)Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->getMediaItemAt(I)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getNextWindowIndex()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getNextWindowIndex()I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackSuppressionReason()I

    move-result v0

    return v0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousWindowIndex()I
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPreviousWindowIndex()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVolume()F

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNextWindow()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->hasNextWindow()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPreviousWindow()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->hasPreviousWindow()Z

    move-result v0

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->increaseDeviceVolume()V

    return-void
.end method

.method public isCommandAvailable(I)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result p1

    return p1
.end method

.method public isCurrentWindowDynamic()Z
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isCurrentWindowDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowLive()Z
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isCurrentWindowLive()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isCurrentWindowSeekable()Z

    move-result v0

    return v0
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isDeviceMuted()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public moveMediaItem(II)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->moveMediaItem(II)V

    return-void
.end method

.method public moveMediaItems(III)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->moveMediaItems(III)V

    return-void
.end method

.method public next()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->next()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->play()V

    return-void
.end method

.method public prepare()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->prepare()V

    return-void
.end method

.method public previous()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->previous()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    new-instance v1, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingEventListener;-><init>(Lcom/google/android/exoplayer2/ForwardingPlayer;Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/ForwardingPlayer$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    new-instance v1, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;-><init>(Lcom/google/android/exoplayer2/ForwardingPlayer;Lcom/google/android/exoplayer2/Player$Listener;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public removeMediaItem(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->removeMediaItem(I)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->removeMediaItems(II)V

    return-void
.end method

.method public seekBack()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    return-void
.end method

.method public seekForward()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToDefaultPosition()V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->seekToDefaultPosition(I)V

    return-void
.end method

.method public seekToNext()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    return-void
.end method

.method public seekToNextWindow()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToNextWindow()V

    return-void
.end method

.method public seekToPrevious()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    return-void
.end method

.method public seekToPreviousWindow()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToPreviousWindow()V

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setDeviceMuted(Z)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setDeviceVolume(I)V

    return-void
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;J)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;J)V

    return-void
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;Z)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Player;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->stop(Z)V

    return-void
.end method
