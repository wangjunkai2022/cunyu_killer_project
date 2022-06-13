package io.flutter.plugins.videoplayer;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.device.DeviceInfo;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.video.VideoListener;
import com.google.android.exoplayer2.video.VideoSize;
import io.flutter.plugin.common.EventChannel;
import io.flutter.view.TextureRegistry;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class VideoPlayer {
    private static final String FORMAT_DASH = "dash";
    private static final String FORMAT_HLS = "hls";
    private static final String FORMAT_OTHER = "other";
    private static final String FORMAT_SS = "ss";
    private final EventChannel eventChannel;
    private SimpleExoPlayer exoPlayer;
    private final VideoPlayerOptions options;
    private Surface surface;
    private final TextureRegistry.SurfaceTextureEntry textureEntry;
    private QueuingEventSink eventSink = new QueuingEventSink();
    private boolean isInitialized = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoPlayer(Context context, EventChannel eventChannel, TextureRegistry.SurfaceTextureEntry surfaceTextureEntry, String str, String str2, Map<String, String> map, VideoPlayerOptions videoPlayerOptions) {
        DefaultHttpDataSource.Factory factory;
        this.eventChannel = eventChannel;
        this.textureEntry = surfaceTextureEntry;
        this.options = videoPlayerOptions;
        this.exoPlayer = new SimpleExoPlayer.Builder(context).build();
        Uri parse = Uri.parse(str);
        if (isHTTP(parse)) {
            DefaultHttpDataSource.Factory allowCrossProtocolRedirects = new DefaultHttpDataSource.Factory().setUserAgent("ExoPlayer").setAllowCrossProtocolRedirects(true);
            factory = allowCrossProtocolRedirects;
            if (map != null) {
                factory = allowCrossProtocolRedirects;
                if (!map.isEmpty()) {
                    allowCrossProtocolRedirects.setDefaultRequestProperties(map);
                    factory = allowCrossProtocolRedirects;
                }
            }
        } else {
            factory = new DefaultDataSourceFactory(context, "ExoPlayer");
        }
        this.exoPlayer.setMediaSource(buildMediaSource(parse, factory, str2, context));
        this.exoPlayer.prepare();
        setupVideoPlayer(eventChannel, surfaceTextureEntry);
    }

    private static boolean isHTTP(Uri uri) {
        if (uri == null || uri.getScheme() == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if (scheme.equals("http") || scheme.equals("https")) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0061  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private com.google.android.exoplayer2.source.MediaSource buildMediaSource(android.net.Uri r9, com.google.android.exoplayer2.upstream.DataSource.Factory r10, java.lang.String r11, android.content.Context r12) {
        /*
            r8 = this;
            r0 = 0
            r1 = 4
            r2 = -1
            r3 = 2
            r4 = 1
            if (r11 != 0) goto L_0x0011
            java.lang.String r11 = r9.getLastPathSegment()
            int r0 = com.google.android.exoplayer2.util.Util.inferContentType(r11)
            goto L_0x0062
        L_0x0011:
            int r5 = r11.hashCode()
            r6 = 3680(0xe60, float:5.157E-42)
            r7 = 3
            if (r5 == r6) goto L_0x0048
            r6 = 103407(0x193ef, float:1.44904E-40)
            if (r5 == r6) goto L_0x003e
            r6 = 3075986(0x2eef92, float:4.310374E-39)
            if (r5 == r6) goto L_0x0034
            r6 = 106069776(0x6527f10, float:3.958996E-35)
            if (r5 == r6) goto L_0x002a
            goto L_0x0052
        L_0x002a:
            java.lang.String r5 = "other"
            boolean r11 = r11.equals(r5)
            if (r11 == 0) goto L_0x0052
            r11 = r7
            goto L_0x0053
        L_0x0034:
            java.lang.String r5 = "dash"
            boolean r11 = r11.equals(r5)
            if (r11 == 0) goto L_0x0052
            r11 = r4
            goto L_0x0053
        L_0x003e:
            java.lang.String r5 = "hls"
            boolean r11 = r11.equals(r5)
            if (r11 == 0) goto L_0x0052
            r11 = r3
            goto L_0x0053
        L_0x0048:
            java.lang.String r5 = "ss"
            boolean r11 = r11.equals(r5)
            if (r11 == 0) goto L_0x0052
            r11 = r0
            goto L_0x0053
        L_0x0052:
            r11 = r2
        L_0x0053:
            if (r11 == 0) goto L_0x0061
            if (r11 == r4) goto L_0x0062
            if (r11 == r3) goto L_0x005f
            if (r11 == r7) goto L_0x005d
            r0 = r2
            goto L_0x0062
        L_0x005d:
            r0 = r1
            goto L_0x0062
        L_0x005f:
            r0 = r3
            goto L_0x0062
        L_0x0061:
            r0 = r4
        L_0x0062:
            r11 = 0
            if (r0 == 0) goto L_0x00b6
            if (r0 == r4) goto L_0x009e
            if (r0 == r3) goto L_0x0090
            if (r0 != r1) goto L_0x0079
            com.google.android.exoplayer2.source.ProgressiveMediaSource$Factory r11 = new com.google.android.exoplayer2.source.ProgressiveMediaSource$Factory
            r11.<init>(r10)
            com.google.android.exoplayer2.MediaItem r9 = com.google.android.exoplayer2.MediaItem.fromUri(r9)
            com.google.android.exoplayer2.source.ProgressiveMediaSource r9 = r11.createMediaSource(r9)
            return r9
        L_0x0079:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "Unsupported type: "
            r10.append(r11)
            r10.append(r0)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L_0x0090:
            com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory r11 = new com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory
            r11.<init>(r10)
            com.google.android.exoplayer2.MediaItem r9 = com.google.android.exoplayer2.MediaItem.fromUri(r9)
            com.google.android.exoplayer2.source.hls.HlsMediaSource r9 = r11.createMediaSource(r9)
            return r9
        L_0x009e:
            com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory r0 = new com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory
            com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource$Factory r1 = new com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource$Factory
            r1.<init>(r10)
            com.google.android.exoplayer2.upstream.DefaultDataSourceFactory r2 = new com.google.android.exoplayer2.upstream.DefaultDataSourceFactory
            r2.<init>(r12, r11, r10)
            r0.<init>(r1, r2)
            com.google.android.exoplayer2.MediaItem r9 = com.google.android.exoplayer2.MediaItem.fromUri(r9)
            com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource r9 = r0.createMediaSource(r9)
            return r9
        L_0x00b6:
            com.google.android.exoplayer2.source.dash.DashMediaSource$Factory r0 = new com.google.android.exoplayer2.source.dash.DashMediaSource$Factory
            com.google.android.exoplayer2.source.dash.DefaultDashChunkSource$Factory r1 = new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource$Factory
            r1.<init>(r10)
            com.google.android.exoplayer2.upstream.DefaultDataSourceFactory r2 = new com.google.android.exoplayer2.upstream.DefaultDataSourceFactory
            r2.<init>(r12, r11, r10)
            r0.<init>(r1, r2)
            com.google.android.exoplayer2.MediaItem r9 = com.google.android.exoplayer2.MediaItem.fromUri(r9)
            com.google.android.exoplayer2.source.dash.DashMediaSource r9 = r0.createMediaSource(r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.videoplayer.VideoPlayer.buildMediaSource(android.net.Uri, com.google.android.exoplayer2.upstream.DataSource$Factory, java.lang.String, android.content.Context):com.google.android.exoplayer2.source.MediaSource");
    }

    private void setupVideoPlayer(EventChannel eventChannel, TextureRegistry.SurfaceTextureEntry surfaceTextureEntry) {
        eventChannel.setStreamHandler(new EventChannel.StreamHandler() { // from class: io.flutter.plugins.videoplayer.VideoPlayer.1
            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onListen(Object obj, EventChannel.EventSink eventSink) {
                VideoPlayer.this.eventSink.setDelegate(eventSink);
            }

            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onCancel(Object obj) {
                VideoPlayer.this.eventSink.setDelegate(null);
            }
        });
        this.surface = new Surface(surfaceTextureEntry.surfaceTexture());
        this.exoPlayer.setVideoSurface(this.surface);
        setAudioAttributes(this.exoPlayer, this.options.mixWithOthers);
        this.exoPlayer.addListener((Player.Listener) new Player.Listener() { // from class: io.flutter.plugins.videoplayer.VideoPlayer.2
            private boolean isBuffering = false;

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.audio.AudioListener
            public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                Player.Listener.CC.$default$onAudioAttributesChanged(this, audioAttributes);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.audio.AudioListener
            public /* synthetic */ void onAudioSessionIdChanged(int i) {
                Player.Listener.CC.$default$onAudioSessionIdChanged(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
                Player.Listener.CC.$default$onAvailableCommandsChanged(this, commands);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.text.TextOutput
            public /* synthetic */ void onCues(List<Cue> list) {
                Player.Listener.CC.$default$onCues(this, list);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.device.DeviceListener
            public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
                Player.Listener.CC.$default$onDeviceInfoChanged(this, deviceInfo);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.device.DeviceListener
            public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
                Player.Listener.CC.$default$onDeviceVolumeChanged(this, i, z);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onEvents(Player player, Player.Events events) {
                Player.Listener.CC.$default$onEvents(this, player, events);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onIsLoadingChanged(boolean z) {
                Player.Listener.CC.$default$onIsLoadingChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onIsPlayingChanged(boolean z) {
                Player.Listener.CC.$default$onIsPlayingChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            @Deprecated
            public /* synthetic */ void onLoadingChanged(boolean z) {
                Player.EventListener.CC.$default$onLoadingChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onMaxSeekToPreviousPositionChanged(int i) {
                Player.EventListener.CC.$default$onMaxSeekToPreviousPositionChanged(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
                Player.Listener.CC.$default$onMediaItemTransition(this, mediaItem, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                Player.Listener.CC.$default$onMediaMetadataChanged(this, mediaMetadata);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.metadata.MetadataOutput
            public /* synthetic */ void onMetadata(Metadata metadata) {
                Player.Listener.CC.$default$onMetadata(this, metadata);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
                Player.Listener.CC.$default$onPlayWhenReadyChanged(this, z, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                Player.Listener.CC.$default$onPlaybackParametersChanged(this, playbackParameters);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
                Player.Listener.CC.$default$onPlaybackSuppressionReasonChanged(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPlayerError(PlaybackException playbackException) {
                Player.Listener.CC.$default$onPlayerError(this, playbackException);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
                Player.Listener.CC.$default$onPlayerErrorChanged(this, playbackException);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            @Deprecated
            public /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
                Player.EventListener.CC.$default$onPlayerStateChanged(this, z, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
                Player.Listener.CC.$default$onPlaylistMetadataChanged(this, mediaMetadata);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            @Deprecated
            public /* synthetic */ void onPositionDiscontinuity(int i) {
                Player.EventListener.CC.$default$onPositionDiscontinuity(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
                Player.Listener.CC.$default$onPositionDiscontinuity(this, positionInfo, positionInfo2, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.video.VideoListener
            public /* synthetic */ void onRenderedFirstFrame() {
                Player.Listener.CC.$default$onRenderedFirstFrame(this);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onRepeatModeChanged(int i) {
                Player.Listener.CC.$default$onRepeatModeChanged(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onSeekBackIncrementChanged(long j) {
                Player.Listener.CC.$default$onSeekBackIncrementChanged(this, j);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onSeekForwardIncrementChanged(long j) {
                Player.Listener.CC.$default$onSeekForwardIncrementChanged(this, j);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            @Deprecated
            public /* synthetic */ void onSeekProcessed() {
                Player.EventListener.CC.$default$onSeekProcessed(this);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
                Player.Listener.CC.$default$onShuffleModeEnabledChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.audio.AudioListener
            public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
                Player.Listener.CC.$default$onSkipSilenceEnabledChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            @Deprecated
            public /* synthetic */ void onStaticMetadataChanged(List<Metadata> list) {
                Player.EventListener.CC.$default$onStaticMetadataChanged(this, list);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.video.VideoListener
            public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
                Player.Listener.CC.$default$onSurfaceSizeChanged(this, i, i2);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
                Player.Listener.CC.$default$onTimelineChanged(this, timeline, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
                Player.Listener.CC.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
            }

            @Override // com.google.android.exoplayer2.video.VideoListener
            @Deprecated
            public /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f) {
                VideoListener.CC.$default$onVideoSizeChanged(this, i, i2, i3, f);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.video.VideoListener
            public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
                Player.Listener.CC.$default$onVideoSizeChanged(this, videoSize);
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.audio.AudioListener
            public /* synthetic */ void onVolumeChanged(float f) {
                Player.Listener.CC.$default$onVolumeChanged(this, f);
            }

            public void setBuffering(boolean z) {
                if (this.isBuffering != z) {
                    this.isBuffering = z;
                    HashMap hashMap = new HashMap();
                    hashMap.put("event", this.isBuffering ? "bufferingStart" : "bufferingEnd");
                    VideoPlayer.this.eventSink.success(hashMap);
                }
            }

            @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
            public void onPlaybackStateChanged(int i) {
                if (i == 2) {
                    setBuffering(true);
                    VideoPlayer.this.sendBufferingUpdate();
                } else if (i == 3) {
                    if (!VideoPlayer.this.isInitialized) {
                        VideoPlayer.this.isInitialized = true;
                        VideoPlayer.this.sendInitialized();
                    }
                } else if (i == 4) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("event", "completed");
                    VideoPlayer.this.eventSink.success(hashMap);
                }
                if (i != 2) {
                    setBuffering(false);
                }
            }

            public void onPlayerError(ExoPlaybackException exoPlaybackException) {
                setBuffering(false);
                if (VideoPlayer.this.eventSink != null) {
                    QueuingEventSink queuingEventSink = VideoPlayer.this.eventSink;
                    queuingEventSink.error("VideoError", "Video player had error " + exoPlaybackException, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendBufferingUpdate() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "bufferingUpdate");
        hashMap.put("values", Collections.singletonList(Arrays.asList(0, Long.valueOf(this.exoPlayer.getBufferedPosition()))));
        this.eventSink.success(hashMap);
    }

    private static void setAudioAttributes(SimpleExoPlayer simpleExoPlayer, boolean z) {
        simpleExoPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(3).build(), !z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void play() {
        this.exoPlayer.setPlayWhenReady(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pause() {
        this.exoPlayer.setPlayWhenReady(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLooping(boolean z) {
        this.exoPlayer.setRepeatMode(z ? 2 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVolume(double d) {
        this.exoPlayer.setVolume((float) Math.max(0.0d, Math.min(1.0d, d)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlaybackSpeed(double d) {
        this.exoPlayer.setPlaybackParameters(new PlaybackParameters((float) d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void seekTo(int i) {
        this.exoPlayer.seekTo((long) i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getPosition() {
        return this.exoPlayer.getCurrentPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendInitialized() {
        if (this.isInitialized) {
            HashMap hashMap = new HashMap();
            hashMap.put("event", "initialized");
            hashMap.put("duration", Long.valueOf(this.exoPlayer.getDuration()));
            if (this.exoPlayer.getVideoFormat() != null) {
                Format videoFormat = this.exoPlayer.getVideoFormat();
                int i = videoFormat.width;
                int i2 = videoFormat.height;
                int i3 = videoFormat.rotationDegrees;
                if (i3 == 90 || i3 == 270) {
                    i = this.exoPlayer.getVideoFormat().height;
                    i2 = this.exoPlayer.getVideoFormat().width;
                }
                hashMap.put("width", Integer.valueOf(i));
                hashMap.put("height", Integer.valueOf(i2));
            }
            this.eventSink.success(hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispose() {
        if (this.isInitialized) {
            this.exoPlayer.stop();
        }
        this.textureEntry.release();
        this.eventChannel.setStreamHandler(null);
        Surface surface = this.surface;
        if (surface != null) {
            surface.release();
        }
        SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.release();
        }
    }
}
