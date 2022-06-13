package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.ExoPlayerImplInternal;
import com.google.android.exoplayer2.MediaSourceList;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.PlayerMessage;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.device.DeviceInfo;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.android.exoplayer2.util.ListenerSet;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes2.dex */
public final class ExoPlayerImpl extends BasePlayer implements ExoPlayer {
    private static final String TAG = "ExoPlayerImpl";
    private final AnalyticsCollector analyticsCollector;
    private final Looper applicationLooper;
    private final CopyOnWriteArraySet<ExoPlayer.AudioOffloadListener> audioOffloadListeners;
    private Player.Commands availableCommands;
    private final BandwidthMeter bandwidthMeter;
    private final Clock clock;
    final TrackSelectorResult emptyTrackSelectorResult;
    private boolean foregroundMode;
    private final ExoPlayerImplInternal internalPlayer;
    private final ListenerSet<Player.EventListener> listeners;
    private int maskingPeriodIndex;
    private int maskingWindowIndex;
    private long maskingWindowPositionMs;
    private MediaMetadata mediaMetadata;
    private final MediaSourceFactory mediaSourceFactory;
    private final List<MediaSourceHolderSnapshot> mediaSourceHolderSnapshots;
    private boolean pauseAtEndOfMediaItems;
    private boolean pendingDiscontinuity;
    private int pendingDiscontinuityReason;
    private int pendingOperationAcks;
    private int pendingPlayWhenReadyChangeReason;
    private final Timeline.Period period;
    final Player.Commands permanentAvailableCommands;
    private PlaybackInfo playbackInfo;
    private final HandlerWrapper playbackInfoUpdateHandler;
    private final ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private MediaMetadata playlistMetadata;
    private final Renderer[] renderers;
    private int repeatMode;
    private final long seekBackIncrementMs;
    private final long seekForwardIncrementMs;
    private SeekParameters seekParameters;
    private boolean shuffleModeEnabled;
    private ShuffleOrder shuffleOrder;
    private final TrackSelector trackSelector;
    private final boolean useLazyPreparation;

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurface() {
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurface(Surface surface) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoTextureView(TextureView textureView) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void decreaseDeviceVolume() {
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public ExoPlayer.AudioComponent getAudioComponent() {
        return null;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public ExoPlayer.DeviceComponent getDeviceComponent() {
        return null;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getDeviceVolume() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getMaxSeekToPreviousPosition() {
        return 3000;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public ExoPlayer.MetadataComponent getMetadataComponent() {
        return null;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public ExoPlayer.TextComponent getTextComponent() {
        return null;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public ExoPlayer.VideoComponent getVideoComponent() {
        return null;
    }

    @Override // com.google.android.exoplayer2.Player
    public float getVolume() {
        return 1.0f;
    }

    @Override // com.google.android.exoplayer2.Player
    public void increaseDeviceVolume() {
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isDeviceMuted() {
        return false;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setDeviceMuted(boolean z) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setDeviceVolume(int i) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurface(Surface surface) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurfaceView(SurfaceView surfaceView) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoTextureView(TextureView textureView) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVolume(float f) {
    }

    public ExoPlayerImpl(Renderer[] rendererArr, TrackSelector trackSelector, MediaSourceFactory mediaSourceFactory, LoadControl loadControl, BandwidthMeter bandwidthMeter, AnalyticsCollector analyticsCollector, boolean z, SeekParameters seekParameters, long j, long j2, LivePlaybackSpeedControl livePlaybackSpeedControl, long j3, boolean z2, Clock clock, Looper looper, Player player, Player.Commands commands) {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = Util.DEVICE_DEBUG_INFO;
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 30 + String.valueOf(str).length());
        sb.append("Init ");
        sb.append(hexString);
        sb.append(" [");
        sb.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        sb.append("] [");
        sb.append(str);
        sb.append("]");
        Log.i(TAG, sb.toString());
        Assertions.checkState(rendererArr.length > 0);
        this.renderers = (Renderer[]) Assertions.checkNotNull(rendererArr);
        this.trackSelector = (TrackSelector) Assertions.checkNotNull(trackSelector);
        this.mediaSourceFactory = mediaSourceFactory;
        this.bandwidthMeter = bandwidthMeter;
        this.analyticsCollector = analyticsCollector;
        this.useLazyPreparation = z;
        this.seekParameters = seekParameters;
        this.seekBackIncrementMs = j;
        this.seekForwardIncrementMs = j2;
        this.pauseAtEndOfMediaItems = z2;
        this.applicationLooper = looper;
        this.clock = clock;
        this.repeatMode = 0;
        Player player2 = player != null ? player : this;
        this.listeners = new ListenerSet<>(looper, clock, new ListenerSet.IterationFinishedEvent() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$UMmGNfcim22-ZQE5xPIiuQlvYIw
            @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
            public final void invoke(Object obj, FlagSet flagSet) {
                ((Player.EventListener) obj).onEvents(Player.this, new Player.Events(flagSet));
            }
        });
        this.audioOffloadListeners = new CopyOnWriteArraySet<>();
        this.mediaSourceHolderSnapshots = new ArrayList();
        this.shuffleOrder = new ShuffleOrder.DefaultShuffleOrder(0);
        this.emptyTrackSelectorResult = new TrackSelectorResult(new RendererConfiguration[rendererArr.length], new ExoTrackSelection[rendererArr.length], null);
        this.period = new Timeline.Period();
        this.permanentAvailableCommands = new Player.Commands.Builder().addAll(1, 2, 12, 13, 14, 15, 16, 17, 18, 19).addAll(commands).build();
        this.availableCommands = new Player.Commands.Builder().addAll(this.permanentAvailableCommands).add(3).add(9).build();
        this.mediaMetadata = MediaMetadata.EMPTY;
        this.playlistMetadata = MediaMetadata.EMPTY;
        this.maskingWindowIndex = -1;
        this.playbackInfoUpdateHandler = clock.createHandler(looper, null);
        this.playbackInfoUpdateListener = new ExoPlayerImplInternal.PlaybackInfoUpdateListener() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$JP2tKdyDgPDo0qQLjajOiOBV3jA
            @Override // com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdateListener
            public final void onPlaybackInfoUpdate(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
                ExoPlayerImpl.this.lambda$new$2$ExoPlayerImpl(playbackInfoUpdate);
            }
        };
        this.playbackInfo = PlaybackInfo.createDummy(this.emptyTrackSelectorResult);
        if (analyticsCollector != null) {
            analyticsCollector.setPlayer(player2, looper);
            addListener((Player.Listener) analyticsCollector);
            bandwidthMeter.addEventListener(new Handler(looper), analyticsCollector);
        }
        this.internalPlayer = new ExoPlayerImplInternal(rendererArr, trackSelector, this.emptyTrackSelectorResult, loadControl, bandwidthMeter, this.repeatMode, this.shuffleModeEnabled, analyticsCollector, seekParameters, livePlaybackSpeedControl, j3, z2, looper, clock, this.playbackInfoUpdateListener);
    }

    public /* synthetic */ void lambda$new$2$ExoPlayerImpl(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.playbackInfoUpdateHandler.post(new Runnable(playbackInfoUpdate) { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$xL-pNUtK4Xd-OJz6IZrFDS-CYOg
            private final /* synthetic */ ExoPlayerImplInternal.PlaybackInfoUpdate f$1;

            {
                this.f$1 = r2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ExoPlayerImpl.this.lambda$new$1$ExoPlayerImpl(this.f$1);
            }
        });
    }

    public void experimentalSetForegroundModeTimeoutMs(long j) {
        this.internalPlayer.experimentalSetForegroundModeTimeoutMs(j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void experimentalSetOffloadSchedulingEnabled(boolean z) {
        this.internalPlayer.experimentalSetOffloadSchedulingEnabled(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public boolean experimentalIsSleepingForOffload() {
        return this.playbackInfo.sleepingForOffload;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    @Override // com.google.android.exoplayer2.Player
    public Looper getApplicationLooper() {
        return this.applicationLooper;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Clock getClock() {
        return this.clock;
    }

    @Override // com.google.android.exoplayer2.Player
    public void addListener(Player.Listener listener) {
        addListener((Player.EventListener) listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addListener(Player.EventListener eventListener) {
        this.listeners.add(eventListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeListener(Player.Listener listener) {
        removeListener((Player.EventListener) listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeListener(Player.EventListener eventListener) {
        this.listeners.remove(eventListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.audioOffloadListeners.add(audioOffloadListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void removeAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.audioOffloadListeners.remove(audioOffloadListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public Player.Commands getAvailableCommands() {
        return this.availableCommands;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackState() {
        return this.playbackInfo.playbackState;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackSuppressionReason() {
        return this.playbackInfo.playbackSuppressionReason;
    }

    @Override // com.google.android.exoplayer2.Player
    public ExoPlaybackException getPlayerError() {
        return this.playbackInfo.playbackError;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void retry() {
        prepare();
    }

    @Override // com.google.android.exoplayer2.Player
    public void prepare() {
        if (this.playbackInfo.playbackState == 1) {
            PlaybackInfo copyWithPlaybackError = this.playbackInfo.copyWithPlaybackError(null);
            PlaybackInfo copyWithPlaybackState = copyWithPlaybackError.copyWithPlaybackState(copyWithPlaybackError.timeline.isEmpty() ? 4 : 2);
            this.pendingOperationAcks++;
            this.internalPlayer.prepare();
            updatePlaybackInfo(copyWithPlaybackState, 1, 1, false, false, 5, C.TIME_UNSET, -1);
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource) {
        setMediaSource(mediaSource);
        prepare();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource, boolean z, boolean z2) {
        setMediaSource(mediaSource, z);
        prepare();
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(List<MediaItem> list, boolean z) {
        setMediaSources(createMediaSources(list), z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(List<MediaItem> list, int i, long j) {
        setMediaSources(createMediaSources(list), i, j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource) {
        setMediaSources(Collections.singletonList(mediaSource));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, long j) {
        setMediaSources(Collections.singletonList(mediaSource), 0, j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, boolean z) {
        setMediaSources(Collections.singletonList(mediaSource), z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(List<MediaSource> list) {
        setMediaSources(list, true);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(List<MediaSource> list, boolean z) {
        setMediaSourcesInternal(list, -1, C.TIME_UNSET, z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(List<MediaSource> list, int i, long j) {
        setMediaSourcesInternal(list, i, j, false);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addMediaItems(int i, List<MediaItem> list) {
        addMediaSources(Math.min(i, this.mediaSourceHolderSnapshots.size()), createMediaSources(list));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSource(MediaSource mediaSource) {
        addMediaSources(Collections.singletonList(mediaSource));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSource(int i, MediaSource mediaSource) {
        addMediaSources(i, Collections.singletonList(mediaSource));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSources(List<MediaSource> list) {
        addMediaSources(this.mediaSourceHolderSnapshots.size(), list);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSources(int i, List<MediaSource> list) {
        Assertions.checkArgument(i >= 0);
        Timeline currentTimeline = getCurrentTimeline();
        this.pendingOperationAcks++;
        List<MediaSourceList.MediaSourceHolder> addMediaSourceHolders = addMediaSourceHolders(i, list);
        Timeline createMaskingTimeline = createMaskingTimeline();
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, createMaskingTimeline, getPeriodPositionAfterTimelineChanged(currentTimeline, createMaskingTimeline));
        this.internalPlayer.addMediaSources(i, addMediaSourceHolders, this.shuffleOrder);
        updatePlaybackInfo(maskTimelineAndPosition, 0, 1, false, false, 5, C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeMediaItems(int i, int i2) {
        PlaybackInfo removeMediaItemsInternal = removeMediaItemsInternal(i, Math.min(i2, this.mediaSourceHolderSnapshots.size()));
        updatePlaybackInfo(removeMediaItemsInternal, 0, 1, false, !removeMediaItemsInternal.periodId.periodUid.equals(this.playbackInfo.periodId.periodUid), 4, getCurrentPositionUsInternal(removeMediaItemsInternal), -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void moveMediaItems(int i, int i2, int i3) {
        Assertions.checkArgument(i >= 0 && i <= i2 && i2 <= this.mediaSourceHolderSnapshots.size() && i3 >= 0);
        Timeline currentTimeline = getCurrentTimeline();
        this.pendingOperationAcks++;
        int min = Math.min(i3, this.mediaSourceHolderSnapshots.size() - (i2 - i));
        Util.moveItems(this.mediaSourceHolderSnapshots, i, i2, min);
        Timeline createMaskingTimeline = createMaskingTimeline();
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, createMaskingTimeline, getPeriodPositionAfterTimelineChanged(currentTimeline, createMaskingTimeline));
        this.internalPlayer.moveMediaSources(i, i2, min, this.shuffleOrder);
        updatePlaybackInfo(maskTimelineAndPosition, 0, 1, false, false, 5, C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setShuffleOrder(ShuffleOrder shuffleOrder) {
        Timeline createMaskingTimeline = createMaskingTimeline();
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, createMaskingTimeline, getPeriodPositionOrMaskWindowPosition(createMaskingTimeline, getCurrentWindowIndex(), getCurrentPosition()));
        this.pendingOperationAcks++;
        this.shuffleOrder = shuffleOrder;
        this.internalPlayer.setShuffleOrder(shuffleOrder);
        updatePlaybackInfo(maskTimelineAndPosition, 0, 1, false, false, 5, C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlayWhenReady(boolean z) {
        setPlayWhenReady(z, 0, 1);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setPauseAtEndOfMediaItems(boolean z) {
        if (this.pauseAtEndOfMediaItems != z) {
            this.pauseAtEndOfMediaItems = z;
            this.internalPlayer.setPauseAtEndOfWindow(z);
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public boolean getPauseAtEndOfMediaItems() {
        return this.pauseAtEndOfMediaItems;
    }

    public void setPlayWhenReady(boolean z, int i, int i2) {
        if (this.playbackInfo.playWhenReady != z || this.playbackInfo.playbackSuppressionReason != i) {
            this.pendingOperationAcks++;
            PlaybackInfo copyWithPlayWhenReady = this.playbackInfo.copyWithPlayWhenReady(z, i);
            this.internalPlayer.setPlayWhenReady(z, i);
            updatePlaybackInfo(copyWithPlayWhenReady, 0, i2, false, false, 5, C.TIME_UNSET, -1);
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getPlayWhenReady() {
        return this.playbackInfo.playWhenReady;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setRepeatMode(int i) {
        if (this.repeatMode != i) {
            this.repeatMode = i;
            this.internalPlayer.setRepeatMode(i);
            this.listeners.queueEvent(9, new ListenerSet.Event(i) { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$VV8mgR6tPAf8Q3yzu6EecWP3NG0
                private final /* synthetic */ int f$0;

                {
                    this.f$0 = r1;
                }

                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onRepeatModeChanged(this.f$0);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public int getRepeatMode() {
        return this.repeatMode;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setShuffleModeEnabled(boolean z) {
        if (this.shuffleModeEnabled != z) {
            this.shuffleModeEnabled = z;
            this.internalPlayer.setShuffleModeEnabled(z);
            this.listeners.queueEvent(10, new ListenerSet.Event(z) { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$dAYYl-I0JufiocYEHBCHCLewhC4
                private final /* synthetic */ boolean f$0;

                {
                    this.f$0 = r1;
                }

                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onShuffleModeEnabledChanged(this.f$0);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getShuffleModeEnabled() {
        return this.shuffleModeEnabled;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isLoading() {
        return this.playbackInfo.isLoading;
    }

    @Override // com.google.android.exoplayer2.Player
    public void seekTo(int i, long j) {
        Timeline timeline = this.playbackInfo.timeline;
        if (i < 0 || (!timeline.isEmpty() && i >= timeline.getWindowCount())) {
            throw new IllegalSeekPositionException(timeline, i, j);
        }
        int i2 = 1;
        this.pendingOperationAcks++;
        if (isPlayingAd()) {
            Log.w(TAG, "seekTo ignored because an ad is playing");
            ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = new ExoPlayerImplInternal.PlaybackInfoUpdate(this.playbackInfo);
            playbackInfoUpdate.incrementPendingOperationAcks(1);
            this.playbackInfoUpdateListener.onPlaybackInfoUpdate(playbackInfoUpdate);
            return;
        }
        if (getPlaybackState() != 1) {
            i2 = 2;
        }
        int currentWindowIndex = getCurrentWindowIndex();
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo.copyWithPlaybackState(i2), timeline, getPeriodPositionOrMaskWindowPosition(timeline, i, j));
        this.internalPlayer.seekTo(timeline, i, C.msToUs(j));
        updatePlaybackInfo(maskTimelineAndPosition, 0, 1, true, true, 1, getCurrentPositionUsInternal(maskTimelineAndPosition), currentWindowIndex);
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekBackIncrement() {
        return this.seekBackIncrementMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekForwardIncrement() {
        return this.seekForwardIncrementMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        if (playbackParameters == null) {
            playbackParameters = PlaybackParameters.DEFAULT;
        }
        if (!this.playbackInfo.playbackParameters.equals(playbackParameters)) {
            PlaybackInfo copyWithPlaybackParameters = this.playbackInfo.copyWithPlaybackParameters(playbackParameters);
            this.pendingOperationAcks++;
            this.internalPlayer.setPlaybackParameters(playbackParameters);
            updatePlaybackInfo(copyWithPlaybackParameters, 0, 1, false, false, 5, C.TIME_UNSET, -1);
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackInfo.playbackParameters;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setSeekParameters(SeekParameters seekParameters) {
        if (seekParameters == null) {
            seekParameters = SeekParameters.DEFAULT;
        }
        if (!this.seekParameters.equals(seekParameters)) {
            this.seekParameters = seekParameters;
            this.internalPlayer.setSeekParameters(seekParameters);
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public SeekParameters getSeekParameters() {
        return this.seekParameters;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setForegroundMode(boolean z) {
        if (this.foregroundMode != z) {
            this.foregroundMode = z;
            if (!this.internalPlayer.setForegroundMode(z)) {
                stop(false, ExoPlaybackException.createForUnexpected(new ExoTimeoutException(2), 1003));
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void stop(boolean z) {
        stop(z, null);
    }

    public void stop(boolean z, ExoPlaybackException exoPlaybackException) {
        PlaybackInfo playbackInfo;
        if (z) {
            playbackInfo = removeMediaItemsInternal(0, this.mediaSourceHolderSnapshots.size()).copyWithPlaybackError(null);
        } else {
            PlaybackInfo playbackInfo2 = this.playbackInfo;
            playbackInfo = playbackInfo2.copyWithLoadingMediaPeriodId(playbackInfo2.periodId);
            playbackInfo.bufferedPositionUs = playbackInfo.positionUs;
            playbackInfo.totalBufferedDurationUs = 0;
        }
        PlaybackInfo copyWithPlaybackState = playbackInfo.copyWithPlaybackState(1);
        if (exoPlaybackException != null) {
            copyWithPlaybackState = copyWithPlaybackState.copyWithPlaybackError(exoPlaybackException);
        }
        this.pendingOperationAcks++;
        this.internalPlayer.stop();
        updatePlaybackInfo(copyWithPlaybackState, 0, 1, false, copyWithPlaybackState.timeline.isEmpty() && !this.playbackInfo.timeline.isEmpty(), 4, getCurrentPositionUsInternal(copyWithPlaybackState), -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void release() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = Util.DEVICE_DEBUG_INFO;
        String registeredModules = ExoPlayerLibraryInfo.registeredModules();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 36 + String.valueOf(str).length() + String.valueOf(registeredModules).length());
        sb.append("Release ");
        sb.append(hexString);
        sb.append(" [");
        sb.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        sb.append("] [");
        sb.append(str);
        sb.append("] [");
        sb.append(registeredModules);
        sb.append("]");
        Log.i(TAG, sb.toString());
        if (!this.internalPlayer.release()) {
            this.listeners.sendEvent(11, $$Lambda$ExoPlayerImpl$KOvTAObvT_F_h8dMHR1N2O8QgrE.INSTANCE);
        }
        this.listeners.release();
        this.playbackInfoUpdateHandler.removeCallbacksAndMessages(null);
        AnalyticsCollector analyticsCollector = this.analyticsCollector;
        if (analyticsCollector != null) {
            this.bandwidthMeter.removeEventListener(analyticsCollector);
        }
        this.playbackInfo = this.playbackInfo.copyWithPlaybackState(1);
        PlaybackInfo playbackInfo = this.playbackInfo;
        this.playbackInfo = playbackInfo.copyWithLoadingMediaPeriodId(playbackInfo.periodId);
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        playbackInfo2.bufferedPositionUs = playbackInfo2.positionUs;
        this.playbackInfo.totalBufferedDurationUs = 0;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        return new PlayerMessage(this.internalPlayer, target, this.playbackInfo.timeline, getCurrentWindowIndex(), this.clock, this.internalPlayer.getPlaybackLooper());
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentPeriodIndex() {
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingPeriodIndex;
        }
        return this.playbackInfo.timeline.getIndexOfPeriod(this.playbackInfo.periodId.periodUid);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentWindowIndex() {
        int currentWindowIndexInternal = getCurrentWindowIndexInternal();
        if (currentWindowIndexInternal == -1) {
            return 0;
        }
        return currentWindowIndexInternal;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getDuration() {
        if (!isPlayingAd()) {
            return getContentDuration();
        }
        MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
        this.playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return C.usToMs(this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
    }

    @Override // com.google.android.exoplayer2.Player
    public long getCurrentPosition() {
        return C.usToMs(getCurrentPositionUsInternal(this.playbackInfo));
    }

    @Override // com.google.android.exoplayer2.Player
    public long getBufferedPosition() {
        if (!isPlayingAd()) {
            return getContentBufferedPosition();
        }
        if (this.playbackInfo.loadingMediaPeriodId.equals(this.playbackInfo.periodId)) {
            return C.usToMs(this.playbackInfo.bufferedPositionUs);
        }
        return getDuration();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getTotalBufferedDuration() {
        return C.usToMs(this.playbackInfo.totalBufferedDurationUs);
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isPlayingAd() {
        return this.playbackInfo.periodId.isAd();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdGroupIndex() {
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdIndexInAdGroup() {
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentPosition() {
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        this.playbackInfo.timeline.getPeriodByUid(this.playbackInfo.periodId.periodUid, this.period);
        if (this.playbackInfo.requestedContentPositionUs == C.TIME_UNSET) {
            return this.playbackInfo.timeline.getWindow(getCurrentWindowIndex(), this.window).getDefaultPositionMs();
        }
        return this.period.getPositionInWindowMs() + C.usToMs(this.playbackInfo.requestedContentPositionUs);
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentBufferedPosition() {
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingWindowPositionMs;
        }
        if (this.playbackInfo.loadingMediaPeriodId.windowSequenceNumber != this.playbackInfo.periodId.windowSequenceNumber) {
            return this.playbackInfo.timeline.getWindow(getCurrentWindowIndex(), this.window).getDurationMs();
        }
        long j = this.playbackInfo.bufferedPositionUs;
        if (this.playbackInfo.loadingMediaPeriodId.isAd()) {
            Timeline.Period periodByUid = this.playbackInfo.timeline.getPeriodByUid(this.playbackInfo.loadingMediaPeriodId.periodUid, this.period);
            long adGroupTimeUs = periodByUid.getAdGroupTimeUs(this.playbackInfo.loadingMediaPeriodId.adGroupIndex);
            j = adGroupTimeUs == Long.MIN_VALUE ? periodByUid.durationUs : adGroupTimeUs;
        }
        return C.usToMs(periodPositionUsToWindowPositionUs(this.playbackInfo.timeline, this.playbackInfo.loadingMediaPeriodId, j));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public int getRendererCount() {
        return this.renderers.length;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public int getRendererType(int i) {
        return this.renderers[i].getTrackType();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public TrackSelector getTrackSelector() {
        return this.trackSelector;
    }

    @Override // com.google.android.exoplayer2.Player
    public TrackGroupArray getCurrentTrackGroups() {
        return this.playbackInfo.trackGroups;
    }

    @Override // com.google.android.exoplayer2.Player
    public TrackSelectionArray getCurrentTrackSelections() {
        return new TrackSelectionArray(this.playbackInfo.trackSelectorResult.selections);
    }

    @Override // com.google.android.exoplayer2.Player
    @Deprecated
    public List<Metadata> getCurrentStaticMetadata() {
        return this.playbackInfo.staticMetadata;
    }

    @Override // com.google.android.exoplayer2.Player
    public MediaMetadata getMediaMetadata() {
        return this.mediaMetadata;
    }

    public void onMetadata(Metadata metadata) {
        MediaMetadata build = this.mediaMetadata.buildUpon().populateFromMetadata(metadata).build();
        if (!build.equals(this.mediaMetadata)) {
            this.mediaMetadata = build;
            this.listeners.sendEvent(15, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$yZi2cfBgk395PNRQrHQEFRi5MgE
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.this.lambda$onMetadata$6$ExoPlayerImpl((Player.EventListener) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$onMetadata$6$ExoPlayerImpl(Player.EventListener eventListener) {
        eventListener.onMediaMetadataChanged(this.mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.Player
    public MediaMetadata getPlaylistMetadata() {
        return this.playlistMetadata;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaylistMetadata(MediaMetadata mediaMetadata) {
        Assertions.checkNotNull(mediaMetadata);
        if (!mediaMetadata.equals(this.playlistMetadata)) {
            this.playlistMetadata = mediaMetadata;
            this.listeners.sendEvent(16, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$xYQN8088uCoXktS4EqJwM8YATOo
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.this.lambda$setPlaylistMetadata$7$ExoPlayerImpl((Player.EventListener) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$setPlaylistMetadata$7$ExoPlayerImpl(Player.EventListener eventListener) {
        eventListener.onPlaylistMetadataChanged(this.playlistMetadata);
    }

    @Override // com.google.android.exoplayer2.Player
    public Timeline getCurrentTimeline() {
        return this.playbackInfo.timeline;
    }

    @Override // com.google.android.exoplayer2.Player
    public AudioAttributes getAudioAttributes() {
        return AudioAttributes.DEFAULT;
    }

    @Override // com.google.android.exoplayer2.Player
    public VideoSize getVideoSize() {
        return VideoSize.UNKNOWN;
    }

    @Override // com.google.android.exoplayer2.Player
    public ImmutableList<Cue> getCurrentCues() {
        return ImmutableList.of();
    }

    @Override // com.google.android.exoplayer2.Player
    public DeviceInfo getDeviceInfo() {
        return DeviceInfo.UNKNOWN;
    }

    private int getCurrentWindowIndexInternal() {
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingWindowIndex;
        }
        return this.playbackInfo.timeline.getPeriodByUid(this.playbackInfo.periodId.periodUid, this.period).windowIndex;
    }

    private long getCurrentPositionUsInternal(PlaybackInfo playbackInfo) {
        if (playbackInfo.timeline.isEmpty()) {
            return C.msToUs(this.maskingWindowPositionMs);
        }
        if (playbackInfo.periodId.isAd()) {
            return playbackInfo.positionUs;
        }
        return periodPositionUsToWindowPositionUs(playbackInfo.timeline, playbackInfo.periodId, playbackInfo.positionUs);
    }

    private List<MediaSource> createMediaSources(List<MediaItem> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(this.mediaSourceFactory.createMediaSource(list.get(i)));
        }
        return arrayList;
    }

    /* renamed from: handlePlaybackInfo */
    public void lambda$new$1$ExoPlayerImpl(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        long j;
        boolean z;
        this.pendingOperationAcks -= playbackInfoUpdate.operationAcks;
        boolean z2 = true;
        if (playbackInfoUpdate.positionDiscontinuity) {
            this.pendingDiscontinuityReason = playbackInfoUpdate.discontinuityReason;
            this.pendingDiscontinuity = true;
        }
        if (playbackInfoUpdate.hasPlayWhenReadyChangeReason) {
            this.pendingPlayWhenReadyChangeReason = playbackInfoUpdate.playWhenReadyChangeReason;
        }
        if (this.pendingOperationAcks == 0) {
            Timeline timeline = playbackInfoUpdate.playbackInfo.timeline;
            if (!this.playbackInfo.timeline.isEmpty() && timeline.isEmpty()) {
                this.maskingWindowIndex = -1;
                this.maskingWindowPositionMs = 0;
                this.maskingPeriodIndex = 0;
            }
            if (!timeline.isEmpty()) {
                List<Timeline> childTimelines = ((PlaylistTimeline) timeline).getChildTimelines();
                Assertions.checkState(childTimelines.size() == this.mediaSourceHolderSnapshots.size());
                for (int i = 0; i < childTimelines.size(); i++) {
                    this.mediaSourceHolderSnapshots.get(i).timeline = childTimelines.get(i);
                }
            }
            long j2 = C.TIME_UNSET;
            if (this.pendingDiscontinuity) {
                if (playbackInfoUpdate.playbackInfo.periodId.equals(this.playbackInfo.periodId) && playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs == this.playbackInfo.positionUs) {
                    z2 = false;
                }
                if (z2) {
                    if (timeline.isEmpty() || playbackInfoUpdate.playbackInfo.periodId.isAd()) {
                        j2 = playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs;
                    } else {
                        j2 = periodPositionUsToWindowPositionUs(timeline, playbackInfoUpdate.playbackInfo.periodId, playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs);
                    }
                }
                j = j2;
                z = z2;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.pendingDiscontinuity = false;
            updatePlaybackInfo(playbackInfoUpdate.playbackInfo, 1, this.pendingPlayWhenReadyChangeReason, false, z, this.pendingDiscontinuityReason, j, -1);
        }
    }

    private void updatePlaybackInfo(PlaybackInfo playbackInfo, int i, int i2, boolean z, boolean z2, int i3, long j, int i4) {
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        this.playbackInfo = playbackInfo;
        Pair<Boolean, Integer> evaluateMediaItemTransitionReason = evaluateMediaItemTransitionReason(playbackInfo, playbackInfo2, z2, i3, !playbackInfo2.timeline.equals(playbackInfo.timeline));
        boolean booleanValue = ((Boolean) evaluateMediaItemTransitionReason.first).booleanValue();
        int intValue = ((Integer) evaluateMediaItemTransitionReason.second).intValue();
        MediaMetadata mediaMetadata = this.mediaMetadata;
        MediaItem mediaItem = null;
        if (booleanValue) {
            if (!playbackInfo.timeline.isEmpty()) {
                mediaItem = playbackInfo.timeline.getWindow(playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).mediaItem;
            }
            mediaMetadata = mediaItem != null ? mediaItem.mediaMetadata : MediaMetadata.EMPTY;
        }
        if (!playbackInfo2.staticMetadata.equals(playbackInfo.staticMetadata)) {
            mediaMetadata = mediaMetadata.buildUpon().populateFromMetadata(playbackInfo.staticMetadata).build();
        }
        boolean z3 = !mediaMetadata.equals(this.mediaMetadata);
        this.mediaMetadata = mediaMetadata;
        if (!playbackInfo2.timeline.equals(playbackInfo.timeline)) {
            this.listeners.queueEvent(0, new ListenerSet.Event(i) { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$3HVdO9oQXZ7BfkuVtwOvAE2yMTM
                private final /* synthetic */ int f$1;

                {
                    this.f$1 = r2;
                }

                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    Player.EventListener eventListener = (Player.EventListener) obj;
                    eventListener.onTimelineChanged(PlaybackInfo.this.timeline, this.f$1);
                }
            });
        }
        if (z2) {
            this.listeners.queueEvent(12, new ListenerSet.Event(i3, getPreviousPositionInfo(i3, playbackInfo2, i4), getPositionInfo(j)) { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$qPgIlQBJCGIGWr7B372Dtwpc80c
                private final /* synthetic */ int f$0;
                private final /* synthetic */ Player.PositionInfo f$1;
                private final /* synthetic */ Player.PositionInfo f$2;

                {
                    this.f$0 = r1;
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.lambda$updatePlaybackInfo$9(this.f$0, this.f$1, this.f$2, (Player.EventListener) obj);
                }
            });
        }
        if (booleanValue) {
            this.listeners.queueEvent(1, new ListenerSet.Event(intValue) { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$1gVXxoACkNRrc9146xL_XhvolgM
                private final /* synthetic */ int f$1;

                {
                    this.f$1 = r2;
                }

                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onMediaItemTransition(MediaItem.this, this.f$1);
                }
            });
        }
        if (playbackInfo2.playbackError != playbackInfo.playbackError) {
            this.listeners.queueEvent(11, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$MMT3X5PIWIvnqyDiXcHBD9t0srE
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onPlayerErrorChanged(PlaybackInfo.this.playbackError);
                }
            });
            if (playbackInfo.playbackError != null) {
                this.listeners.queueEvent(11, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$tnkjWsBTPFSO1eDTaYW2jrCtvCs
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((Player.EventListener) obj).onPlayerError(PlaybackInfo.this.playbackError);
                    }
                });
            }
        }
        if (playbackInfo2.trackSelectorResult != playbackInfo.trackSelectorResult) {
            this.trackSelector.onSelectionActivated(playbackInfo.trackSelectorResult.info);
            this.listeners.queueEvent(2, new ListenerSet.Event(new TrackSelectionArray(playbackInfo.trackSelectorResult.selections)) { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$f3AppcQi5uVhJfdT8e4PHU1DyVI
                private final /* synthetic */ TrackSelectionArray f$1;

                {
                    this.f$1 = r2;
                }

                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    Player.EventListener eventListener = (Player.EventListener) obj;
                    eventListener.onTracksChanged(PlaybackInfo.this.trackGroups, this.f$1);
                }
            });
        }
        if (!playbackInfo2.staticMetadata.equals(playbackInfo.staticMetadata)) {
            this.listeners.queueEvent(3, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$3ZSjpnxjcwRMnBSrB8LfP9YjCgg
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onStaticMetadataChanged(PlaybackInfo.this.staticMetadata);
                }
            });
        }
        if (z3) {
            this.listeners.queueEvent(15, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$iifZ8a7CKKTlTKNbB21zMhPsBd0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onMediaMetadataChanged(MediaMetadata.this);
                }
            });
        }
        if (playbackInfo2.isLoading != playbackInfo.isLoading) {
            this.listeners.queueEvent(4, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$WfE0OgNLJ-vQjUEnmMsYu99I7Jw
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.lambda$updatePlaybackInfo$16(PlaybackInfo.this, (Player.EventListener) obj);
                }
            });
        }
        if (!(playbackInfo2.playbackState == playbackInfo.playbackState && playbackInfo2.playWhenReady == playbackInfo.playWhenReady)) {
            this.listeners.queueEvent(-1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$Uw_kOuMm-rx__rRMC5eTKSPSGGA
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onPlayerStateChanged(r0.playWhenReady, PlaybackInfo.this.playbackState);
                }
            });
        }
        if (playbackInfo2.playbackState != playbackInfo.playbackState) {
            this.listeners.queueEvent(5, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$C6zU65w6ZdRSSe1AHen_aZSNfX4
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onPlaybackStateChanged(PlaybackInfo.this.playbackState);
                }
            });
        }
        if (playbackInfo2.playWhenReady != playbackInfo.playWhenReady) {
            this.listeners.queueEvent(6, new ListenerSet.Event(i2) { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$AHVthG-3wl6IL5ixoUD6a7RyES4
                private final /* synthetic */ int f$1;

                {
                    this.f$1 = r2;
                }

                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    Player.EventListener eventListener = (Player.EventListener) obj;
                    eventListener.onPlayWhenReadyChanged(PlaybackInfo.this.playWhenReady, this.f$1);
                }
            });
        }
        if (playbackInfo2.playbackSuppressionReason != playbackInfo.playbackSuppressionReason) {
            this.listeners.queueEvent(7, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$dhC0uq3ETvazi4YYOGHdFy04Qm0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onPlaybackSuppressionReasonChanged(PlaybackInfo.this.playbackSuppressionReason);
                }
            });
        }
        if (isPlaying(playbackInfo2) != isPlaying(playbackInfo)) {
            this.listeners.queueEvent(8, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$MPWT57FoPndgZJo0Wkw-tUnr3to
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onIsPlayingChanged(ExoPlayerImpl.isPlaying(PlaybackInfo.this));
                }
            });
        }
        if (!playbackInfo2.playbackParameters.equals(playbackInfo.playbackParameters)) {
            this.listeners.queueEvent(13, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$ze9uRpABDlyC2-8eRKSvb7ZF-sQ
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.EventListener) obj).onPlaybackParametersChanged(PlaybackInfo.this.playbackParameters);
                }
            });
        }
        if (z) {
            this.listeners.queueEvent(-1, $$Lambda$IvHsGgCxoxdxsyZUtt2N2KRx2jA.INSTANCE);
        }
        updateAvailableCommands();
        this.listeners.flushEvents();
        if (playbackInfo2.offloadSchedulingEnabled != playbackInfo.offloadSchedulingEnabled) {
            Iterator<ExoPlayer.AudioOffloadListener> it = this.audioOffloadListeners.iterator();
            while (it.hasNext()) {
                it.next().onExperimentalOffloadSchedulingEnabledChanged(playbackInfo.offloadSchedulingEnabled);
            }
        }
        if (playbackInfo2.sleepingForOffload != playbackInfo.sleepingForOffload) {
            Iterator<ExoPlayer.AudioOffloadListener> it2 = this.audioOffloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().onExperimentalSleepingForOffloadChanged(playbackInfo.sleepingForOffload);
            }
        }
    }

    public static /* synthetic */ void lambda$updatePlaybackInfo$9(int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, Player.EventListener eventListener) {
        eventListener.onPositionDiscontinuity(i);
        eventListener.onPositionDiscontinuity(positionInfo, positionInfo2, i);
    }

    public static /* synthetic */ void lambda$updatePlaybackInfo$16(PlaybackInfo playbackInfo, Player.EventListener eventListener) {
        eventListener.onLoadingChanged(playbackInfo.isLoading);
        eventListener.onIsLoadingChanged(playbackInfo.isLoading);
    }

    private Player.PositionInfo getPreviousPositionInfo(int i, PlaybackInfo playbackInfo, int i2) {
        int i3;
        Object obj;
        int i4;
        Object obj2;
        long j;
        long j2;
        Timeline.Period period = new Timeline.Period();
        if (!playbackInfo.timeline.isEmpty()) {
            Object obj3 = playbackInfo.periodId.periodUid;
            playbackInfo.timeline.getPeriodByUid(obj3, period);
            int i5 = period.windowIndex;
            int indexOfPeriod = playbackInfo.timeline.getIndexOfPeriod(obj3);
            obj2 = playbackInfo.timeline.getWindow(i5, this.window).uid;
            obj = obj3;
            i3 = indexOfPeriod;
            i4 = i5;
        } else {
            i4 = i2;
            i3 = -1;
            obj2 = null;
            obj = null;
        }
        if (i == 0) {
            j = period.positionInWindowUs + period.durationUs;
            if (playbackInfo.periodId.isAd()) {
                j = period.getAdDurationUs(playbackInfo.periodId.adGroupIndex, playbackInfo.periodId.adIndexInAdGroup);
                j2 = getRequestedContentPositionUs(playbackInfo);
            } else {
                if (playbackInfo.periodId.nextAdGroupIndex != -1 && this.playbackInfo.periodId.isAd()) {
                    j = getRequestedContentPositionUs(this.playbackInfo);
                }
                j2 = j;
            }
        } else if (playbackInfo.periodId.isAd()) {
            j = playbackInfo.positionUs;
            j2 = getRequestedContentPositionUs(playbackInfo);
        } else {
            j = period.positionInWindowUs + playbackInfo.positionUs;
            j2 = j;
        }
        return new Player.PositionInfo(obj2, i4, obj, i3, C.usToMs(j), C.usToMs(j2), playbackInfo.periodId.adGroupIndex, playbackInfo.periodId.adIndexInAdGroup);
    }

    private Player.PositionInfo getPositionInfo(long j) {
        int i;
        Object obj;
        int currentWindowIndex = getCurrentWindowIndex();
        Object obj2 = null;
        if (!this.playbackInfo.timeline.isEmpty()) {
            Object obj3 = this.playbackInfo.periodId.periodUid;
            this.playbackInfo.timeline.getPeriodByUid(obj3, this.period);
            int indexOfPeriod = this.playbackInfo.timeline.getIndexOfPeriod(obj3);
            obj2 = this.playbackInfo.timeline.getWindow(currentWindowIndex, this.window).uid;
            i = indexOfPeriod;
            obj = obj3;
        } else {
            i = -1;
            obj = null;
        }
        long usToMs = C.usToMs(j);
        return new Player.PositionInfo(obj2, currentWindowIndex, obj, i, usToMs, this.playbackInfo.periodId.isAd() ? C.usToMs(getRequestedContentPositionUs(this.playbackInfo)) : usToMs, this.playbackInfo.periodId.adGroupIndex, this.playbackInfo.periodId.adIndexInAdGroup);
    }

    private static long getRequestedContentPositionUs(PlaybackInfo playbackInfo) {
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, period);
        if (playbackInfo.requestedContentPositionUs == C.TIME_UNSET) {
            return playbackInfo.timeline.getWindow(period.windowIndex, window).getDefaultPositionUs();
        }
        return period.getPositionInWindowUs() + playbackInfo.requestedContentPositionUs;
    }

    private Pair<Boolean, Integer> evaluateMediaItemTransitionReason(PlaybackInfo playbackInfo, PlaybackInfo playbackInfo2, boolean z, int i, boolean z2) {
        Timeline timeline = playbackInfo2.timeline;
        Timeline timeline2 = playbackInfo.timeline;
        if (timeline2.isEmpty() && timeline.isEmpty()) {
            return new Pair<>(false, -1);
        }
        int i2 = 3;
        if (timeline2.isEmpty() != timeline.isEmpty()) {
            return new Pair<>(true, 3);
        }
        if (!timeline.getWindow(timeline.getPeriodByUid(playbackInfo2.periodId.periodUid, this.period).windowIndex, this.window).uid.equals(timeline2.getWindow(timeline2.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).uid)) {
            if (z && i == 0) {
                i2 = 1;
            } else if (z && i == 1) {
                i2 = 2;
            } else if (!z2) {
                throw new IllegalStateException();
            }
            return new Pair<>(true, Integer.valueOf(i2));
        } else if (!z || i != 0 || playbackInfo2.periodId.windowSequenceNumber >= playbackInfo.periodId.windowSequenceNumber) {
            return new Pair<>(false, -1);
        } else {
            return new Pair<>(true, 0);
        }
    }

    private void updateAvailableCommands() {
        Player.Commands commands = this.availableCommands;
        this.availableCommands = getAvailableCommands(this.permanentAvailableCommands);
        if (!this.availableCommands.equals(commands)) {
            this.listeners.queueEvent(14, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.-$$Lambda$ExoPlayerImpl$nqi8MKRIvDJinjWIrUGSVEXv3T0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.this.lambda$updateAvailableCommands$23$ExoPlayerImpl((Player.EventListener) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$updateAvailableCommands$23$ExoPlayerImpl(Player.EventListener eventListener) {
        eventListener.onAvailableCommandsChanged(this.availableCommands);
    }

    private void setMediaSourcesInternal(List<MediaSource> list, int i, long j, boolean z) {
        int i2;
        long j2;
        int currentWindowIndexInternal = getCurrentWindowIndexInternal();
        long currentPosition = getCurrentPosition();
        boolean z2 = true;
        this.pendingOperationAcks++;
        if (!this.mediaSourceHolderSnapshots.isEmpty()) {
            removeMediaSourceHolders(0, this.mediaSourceHolderSnapshots.size());
        }
        List<MediaSourceList.MediaSourceHolder> addMediaSourceHolders = addMediaSourceHolders(0, list);
        Timeline createMaskingTimeline = createMaskingTimeline();
        if (createMaskingTimeline.isEmpty() || i < createMaskingTimeline.getWindowCount()) {
            if (z) {
                i2 = createMaskingTimeline.getFirstWindowIndex(this.shuffleModeEnabled);
                j2 = C.TIME_UNSET;
            } else if (i == -1) {
                i2 = currentWindowIndexInternal;
                j2 = currentPosition;
            } else {
                i2 = i;
                j2 = j;
            }
            PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, createMaskingTimeline, getPeriodPositionOrMaskWindowPosition(createMaskingTimeline, i2, j2));
            int i3 = maskTimelineAndPosition.playbackState;
            if (!(i2 == -1 || maskTimelineAndPosition.playbackState == 1)) {
                i3 = (createMaskingTimeline.isEmpty() || i2 >= createMaskingTimeline.getWindowCount()) ? 4 : 2;
            }
            PlaybackInfo copyWithPlaybackState = maskTimelineAndPosition.copyWithPlaybackState(i3);
            this.internalPlayer.setMediaSources(addMediaSourceHolders, i2, C.msToUs(j2), this.shuffleOrder);
            if (this.playbackInfo.periodId.periodUid.equals(copyWithPlaybackState.periodId.periodUid) || this.playbackInfo.timeline.isEmpty()) {
                z2 = false;
            }
            updatePlaybackInfo(copyWithPlaybackState, 0, 1, false, z2, 4, getCurrentPositionUsInternal(copyWithPlaybackState), -1);
            return;
        }
        throw new IllegalSeekPositionException(createMaskingTimeline, i, j);
    }

    private List<MediaSourceList.MediaSourceHolder> addMediaSourceHolders(int i, List<MediaSource> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            MediaSourceList.MediaSourceHolder mediaSourceHolder = new MediaSourceList.MediaSourceHolder(list.get(i2), this.useLazyPreparation);
            arrayList.add(mediaSourceHolder);
            this.mediaSourceHolderSnapshots.add(i2 + i, new MediaSourceHolderSnapshot(mediaSourceHolder.uid, mediaSourceHolder.mediaSource.getTimeline()));
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndInsert(i, arrayList.size());
        return arrayList;
    }

    private PlaybackInfo removeMediaItemsInternal(int i, int i2) {
        boolean z = false;
        Assertions.checkArgument(i >= 0 && i2 >= i && i2 <= this.mediaSourceHolderSnapshots.size());
        int currentWindowIndex = getCurrentWindowIndex();
        Timeline currentTimeline = getCurrentTimeline();
        int size = this.mediaSourceHolderSnapshots.size();
        this.pendingOperationAcks++;
        removeMediaSourceHolders(i, i2);
        Timeline createMaskingTimeline = createMaskingTimeline();
        PlaybackInfo maskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, createMaskingTimeline, getPeriodPositionAfterTimelineChanged(currentTimeline, createMaskingTimeline));
        if (maskTimelineAndPosition.playbackState != 1 && maskTimelineAndPosition.playbackState != 4 && i < i2 && i2 == size && currentWindowIndex >= maskTimelineAndPosition.timeline.getWindowCount()) {
            z = true;
        }
        if (z) {
            maskTimelineAndPosition = maskTimelineAndPosition.copyWithPlaybackState(4);
        }
        this.internalPlayer.removeMediaSources(i, i2, this.shuffleOrder);
        return maskTimelineAndPosition;
    }

    private void removeMediaSourceHolders(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            this.mediaSourceHolderSnapshots.remove(i3);
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndRemove(i, i2);
    }

    private Timeline createMaskingTimeline() {
        return new PlaylistTimeline(this.mediaSourceHolderSnapshots, this.shuffleOrder);
    }

    private PlaybackInfo maskTimelineAndPosition(PlaybackInfo playbackInfo, Timeline timeline, Pair<Object, Long> pair) {
        List<Metadata> list;
        int i;
        long j;
        Assertions.checkArgument(timeline.isEmpty() || pair != null);
        Timeline timeline2 = playbackInfo.timeline;
        PlaybackInfo copyWithTimeline = playbackInfo.copyWithTimeline(timeline);
        if (timeline.isEmpty()) {
            MediaSource.MediaPeriodId dummyPeriodForEmptyTimeline = PlaybackInfo.getDummyPeriodForEmptyTimeline();
            long msToUs = C.msToUs(this.maskingWindowPositionMs);
            PlaybackInfo copyWithLoadingMediaPeriodId = copyWithTimeline.copyWithNewPosition(dummyPeriodForEmptyTimeline, msToUs, msToUs, msToUs, 0, TrackGroupArray.EMPTY, this.emptyTrackSelectorResult, ImmutableList.of()).copyWithLoadingMediaPeriodId(dummyPeriodForEmptyTimeline);
            copyWithLoadingMediaPeriodId.bufferedPositionUs = copyWithLoadingMediaPeriodId.positionUs;
            return copyWithLoadingMediaPeriodId;
        }
        Object obj = copyWithTimeline.periodId.periodUid;
        boolean z = !obj.equals(((Pair) Util.castNonNull(pair)).first);
        MediaSource.MediaPeriodId mediaPeriodId = z ? new MediaSource.MediaPeriodId(pair.first) : copyWithTimeline.periodId;
        long longValue = ((Long) pair.second).longValue();
        long msToUs2 = C.msToUs(getContentPosition());
        if (!timeline2.isEmpty()) {
            msToUs2 -= timeline2.getPeriodByUid(obj, this.period).getPositionInWindowUs();
        }
        if (z || longValue < msToUs2) {
            Assertions.checkState(!mediaPeriodId.isAd());
            TrackGroupArray trackGroupArray = z ? TrackGroupArray.EMPTY : copyWithTimeline.trackGroups;
            TrackSelectorResult trackSelectorResult = z ? this.emptyTrackSelectorResult : copyWithTimeline.trackSelectorResult;
            if (z) {
                list = ImmutableList.of();
            } else {
                list = copyWithTimeline.staticMetadata;
            }
            PlaybackInfo copyWithLoadingMediaPeriodId2 = copyWithTimeline.copyWithNewPosition(mediaPeriodId, longValue, longValue, longValue, 0, trackGroupArray, trackSelectorResult, list).copyWithLoadingMediaPeriodId(mediaPeriodId);
            copyWithLoadingMediaPeriodId2.bufferedPositionUs = longValue;
            return copyWithLoadingMediaPeriodId2;
        }
        if (i == 0) {
            int indexOfPeriod = timeline.getIndexOfPeriod(copyWithTimeline.loadingMediaPeriodId.periodUid);
            if (indexOfPeriod == -1 || timeline.getPeriod(indexOfPeriod, this.period).windowIndex != timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex) {
                timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
                if (mediaPeriodId.isAd()) {
                    j = this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
                } else {
                    j = this.period.durationUs;
                }
                copyWithTimeline = copyWithTimeline.copyWithNewPosition(mediaPeriodId, copyWithTimeline.positionUs, copyWithTimeline.positionUs, copyWithTimeline.discontinuityStartPositionUs, j - copyWithTimeline.positionUs, copyWithTimeline.trackGroups, copyWithTimeline.trackSelectorResult, copyWithTimeline.staticMetadata).copyWithLoadingMediaPeriodId(mediaPeriodId);
                copyWithTimeline.bufferedPositionUs = j;
            }
        } else {
            Assertions.checkState(!mediaPeriodId.isAd());
            long max = Math.max(0L, copyWithTimeline.totalBufferedDurationUs - (longValue - msToUs2));
            long j2 = copyWithTimeline.bufferedPositionUs;
            if (copyWithTimeline.loadingMediaPeriodId.equals(copyWithTimeline.periodId)) {
                j2 = longValue + max;
            }
            copyWithTimeline = copyWithTimeline.copyWithNewPosition(mediaPeriodId, longValue, longValue, longValue, max, copyWithTimeline.trackGroups, copyWithTimeline.trackSelectorResult, copyWithTimeline.staticMetadata);
            copyWithTimeline.bufferedPositionUs = j2;
        }
        return copyWithTimeline;
    }

    private Pair<Object, Long> getPeriodPositionAfterTimelineChanged(Timeline timeline, Timeline timeline2) {
        long contentPosition = getContentPosition();
        int i = -1;
        if (timeline.isEmpty() || timeline2.isEmpty()) {
            boolean z = !timeline.isEmpty() && timeline2.isEmpty();
            if (!z) {
                i = getCurrentWindowIndexInternal();
            }
            if (z) {
                contentPosition = -9223372036854775807L;
            }
            return getPeriodPositionOrMaskWindowPosition(timeline2, i, contentPosition);
        }
        Pair<Object, Long> periodPosition = timeline.getPeriodPosition(this.window, this.period, getCurrentWindowIndex(), C.msToUs(contentPosition));
        Object obj = ((Pair) Util.castNonNull(periodPosition)).first;
        if (timeline2.getIndexOfPeriod(obj) != -1) {
            return periodPosition;
        }
        Object resolveSubsequentPeriod = ExoPlayerImplInternal.resolveSubsequentPeriod(this.window, this.period, this.repeatMode, this.shuffleModeEnabled, obj, timeline, timeline2);
        if (resolveSubsequentPeriod == null) {
            return getPeriodPositionOrMaskWindowPosition(timeline2, -1, C.TIME_UNSET);
        }
        timeline2.getPeriodByUid(resolveSubsequentPeriod, this.period);
        return getPeriodPositionOrMaskWindowPosition(timeline2, this.period.windowIndex, timeline2.getWindow(this.period.windowIndex, this.window).getDefaultPositionMs());
    }

    private Pair<Object, Long> getPeriodPositionOrMaskWindowPosition(Timeline timeline, int i, long j) {
        if (timeline.isEmpty()) {
            this.maskingWindowIndex = i;
            if (j == C.TIME_UNSET) {
                j = 0;
            }
            this.maskingWindowPositionMs = j;
            this.maskingPeriodIndex = 0;
            return null;
        }
        if (i == -1 || i >= timeline.getWindowCount()) {
            i = timeline.getFirstWindowIndex(this.shuffleModeEnabled);
            j = timeline.getWindow(i, this.window).getDefaultPositionMs();
        }
        return timeline.getPeriodPosition(this.window, this.period, i, C.msToUs(j));
    }

    private long periodPositionUsToWindowPositionUs(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j) {
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return j + this.period.getPositionInWindowUs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPlaying(PlaybackInfo playbackInfo) {
        return playbackInfo.playbackState == 3 && playbackInfo.playWhenReady && playbackInfo.playbackSuppressionReason == 0;
    }

    /* loaded from: classes2.dex */
    public static final class MediaSourceHolderSnapshot implements MediaSourceInfoHolder {
        private Timeline timeline;
        private final Object uid;

        public MediaSourceHolderSnapshot(Object obj, Timeline timeline) {
            this.uid = obj;
            this.timeline = timeline;
        }

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public Object getUid() {
            return this.uid;
        }

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public Timeline getTimeline() {
            return this.timeline;
        }
    }
}
