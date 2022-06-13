.class Lio/flutter/plugins/videoplayer/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/videoplayer/VideoPlayer;->setupVideoPlayer(Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isBuffering:Z

.field final synthetic this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lio/flutter/plugins/videoplayer/VideoPlayer;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    return-void
.end method


# virtual methods
.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/device/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/device/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->setBuffering(Z)V

    .line 191
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-virtual {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->sendBufferingUpdate()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 193
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-static {v2}, Lio/flutter/plugins/videoplayer/VideoPlayer;->access$100(Lio/flutter/plugins/videoplayer/VideoPlayer;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 194
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-static {v2, v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->access$102(Lio/flutter/plugins/videoplayer/VideoPlayer;Z)Z

    .line 195
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-static {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->access$200(Lio/flutter/plugins/videoplayer/VideoPlayer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "event"

    const-string v3, "completed"

    .line 199
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-static {v2}, Lio/flutter/plugins/videoplayer/VideoPlayer;->access$000(Lio/flutter/plugins/videoplayer/VideoPlayer;)Lio/flutter/plugins/videoplayer/QueuingEventSink;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    if-eq p1, v1, :cond_3

    const/4 p1, 0x0

    .line 204
    invoke-virtual {p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->setBuffering(Z)V

    :cond_3
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->setBuffering(Z)V

    .line 211
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-static {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->access$000(Lio/flutter/plugins/videoplayer/VideoPlayer;)Lio/flutter/plugins/videoplayer/QueuingEventSink;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-static {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->access$000(Lio/flutter/plugins/videoplayer/VideoPlayer;)Lio/flutter/plugins/videoplayer/QueuingEventSink;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video player had error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "VideoError"

    invoke-virtual {v0, v2, p1, v1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onStaticMetadataChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onStaticMetadataChanged(Lcom/google/android/exoplayer2/Player$EventListener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(IIIF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoListener;IIIF)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method

.method public setBuffering(Z)V
    .locals 2

    .line 179
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    if-eq v0, p1, :cond_1

    .line 180
    iput-boolean p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    .line 181
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 182
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    if-eqz v0, :cond_0

    const-string v0, "bufferingStart"

    goto :goto_0

    :cond_0
    const-string v0, "bufferingEnd"

    :goto_0
    const-string v1, "event"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-static {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->access$000(Lio/flutter/plugins/videoplayer/VideoPlayer;)Lio/flutter/plugins/videoplayer/QueuingEventSink;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
