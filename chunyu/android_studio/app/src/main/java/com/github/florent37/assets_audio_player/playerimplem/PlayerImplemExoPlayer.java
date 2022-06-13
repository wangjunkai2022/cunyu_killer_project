package com.github.florent37.assets_audio_player.playerimplem;

import android.content.Context;
import com.github.florent37.assets_audio_player.AssetAudioPlayerThrowable;
import com.github.florent37.assets_audio_player.Player;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterExoPlayer;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.AudioListener;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.upstream.AssetDataSource;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.umeng.analytics.pro.ai;
import com.umeng.analytics.pro.c;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* compiled from: PlayerImplemExoPlayer.kt */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BC\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJX\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020#2\u0010\u0010%\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010&2\b\u0010'\u001a\u0004\u0018\u00010#2\u0010\u0010(\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010&H\u0002J\u001c\u0010)\u001a\u00020\u00042\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00040\u0006H\u0016J\u000e\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020.Je\u0010/\u001a\u00060\u000ej\u0002`02\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020#2\u0010\u0010%\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010&2\b\u0010'\u001a\u0004\u0018\u00010#2\u0010\u0010(\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010&H\u0096@ø\u0001\u0000¢\u0006\u0002\u00101J\b\u00102\u001a\u00020\u0004H\u0016J\b\u00103\u001a\u00020\u0004H\u0016J\b\u00104\u001a\u00020\u0004H\u0016J\u0010\u00105\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u000eH\u0016J\u0010\u00107\u001a\u00020\u00042\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u000209H\u0016J\u0010\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u000209H\u0016J\b\u0010>\u001a\u00020\u0004H\u0016J\u0014\u0010?\u001a\u00020@*\u00020@2\u0006\u0010$\u001a\u00020#H\u0002R\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R$\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00078V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006A"}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;", "onFinished", "Lkotlin/Function0;", "", "onBuffering", "Lkotlin/Function1;", "", "onError", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", "type", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V", "currentPositionMs", "", "getCurrentPositionMs", "()J", "isPlaying", "()Z", "value", "loopSingleAudio", "getLoopSingleAudio", "setLoopSingleAudio", "(Z)V", "mediaPlayer", "Lcom/google/android/exoplayer2/ExoPlayer;", "getType", "()Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;", "getDataSource", "Lcom/google/android/exoplayer2/source/MediaSource;", c.R, "Landroid/content/Context;", "flutterAssets", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;", "assetAudioPath", "", "audioType", "networkHeaders", "", "assetAudioPackage", "drmConfiguration", "getSessionId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "mapError", ai.aF, "", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;", "(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pause", "play", "release", "seekTo", "to", "setPitch", "pitch", "", "setPlaySpeed", "playSpeed", "setVolume", "volume", NotificationAction.ACTION_STOP, "incrementBufferSize", "Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PlayerImplemExoPlayer extends PlayerImplem {
    private ExoPlayer mediaPlayer;
    private final PlayerImplemTesterExoPlayer.Type type;

    /* compiled from: PlayerImplemExoPlayer.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PlayerImplemTesterExoPlayer.Type.values().length];
            iArr[PlayerImplemTesterExoPlayer.Type.HLS.ordinal()] = 1;
            iArr[PlayerImplemTesterExoPlayer.Type.DASH.ordinal()] = 2;
            iArr[PlayerImplemTesterExoPlayer.Type.SmoothStreaming.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final PlayerImplemTesterExoPlayer.Type getType() {
        return this.type;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlayerImplemExoPlayer(Function0<Unit> function0, Function1<? super Boolean, Unit> function1, Function1<? super AssetAudioPlayerThrowable, Unit> function12, PlayerImplemTesterExoPlayer.Type type) {
        super(function0, function1, function12);
        Intrinsics.checkNotNullParameter(function0, "onFinished");
        Intrinsics.checkNotNullParameter(function1, "onBuffering");
        Intrinsics.checkNotNullParameter(function12, "onError");
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public boolean getLoopSingleAudio() {
        ExoPlayer exoPlayer = this.mediaPlayer;
        return exoPlayer != null && exoPlayer.getRepeatMode() == 2;
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void setLoopSingleAudio(boolean z) {
        ExoPlayer exoPlayer = this.mediaPlayer;
        if (exoPlayer != null) {
            exoPlayer.setRepeatMode(z ? 2 : 0);
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.mediaPlayer;
        if (exoPlayer == null) {
            return false;
        }
        return exoPlayer.isPlaying();
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public long getCurrentPositionMs() {
        ExoPlayer exoPlayer = this.mediaPlayer;
        if (exoPlayer == null) {
            return 0;
        }
        return exoPlayer.getCurrentPosition();
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void stop() {
        ExoPlayer exoPlayer = this.mediaPlayer;
        if (exoPlayer != null) {
            exoPlayer.stop();
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void play() {
        ExoPlayer exoPlayer = this.mediaPlayer;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(true);
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void pause() {
        ExoPlayer exoPlayer = this.mediaPlayer;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bc, code lost:
        r2 = r18.getAssetFilePathByName(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007e A[Catch: Exception -> 0x0173, TryCatch #0 {Exception -> 0x0173, blocks: (B:3:0x000c, B:6:0x0011, B:7:0x0014, B:14:0x002c, B:17:0x0035, B:20:0x003e, B:26:0x005b, B:27:0x006e, B:28:0x0076, B:29:0x007e, B:30:0x008a, B:32:0x0095, B:34:0x009d, B:36:0x00b2, B:41:0x00bc, B:42:0x00c1, B:43:0x00c5, B:45:0x0103, B:50:0x0120, B:53:0x0129, B:55:0x012f, B:56:0x015c), top: B:60:0x000c }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private final com.google.android.exoplayer2.source.MediaSource getDataSource(android.content.Context r17, io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterAssets r18, java.lang.String r19, java.lang.String r20, java.util.Map<?, ?> r21, java.lang.String r22, java.util.Map<?, ?> r23) {
        /*
        // Method dump skipped, instructions count: 373
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.florent37.assets_audio_player.playerimplem.PlayerImplemExoPlayer.getDataSource(android.content.Context, io.flutter.embedding.engine.plugins.FlutterPlugin$FlutterAssets, java.lang.String, java.lang.String, java.util.Map, java.lang.String, java.util.Map):com.google.android.exoplayer2.source.MediaSource");
    }

    /* renamed from: getDataSource$lambda-3 */
    public static final DataSource m17getDataSource$lambda3(String str, Map map) {
        Object value;
        Intrinsics.checkNotNullParameter(str, "$userAgent");
        DefaultHttpDataSource defaultHttpDataSource = new DefaultHttpDataSource(str, 8000, 8000, true, null);
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                if (!(key == null || (value = entry.getValue()) == null)) {
                    defaultHttpDataSource.setRequestProperty(key.toString(), value.toString());
                }
            }
        }
        return defaultHttpDataSource;
    }

    /* renamed from: getDataSource$lambda-4 */
    public static final DataSource m18getDataSource$lambda4(AssetDataSource assetDataSource) {
        Intrinsics.checkNotNullParameter(assetDataSource, "$assetDataSource");
        return assetDataSource;
    }

    private final SimpleExoPlayer.Builder incrementBufferSize(SimpleExoPlayer.Builder builder, String str) {
        if (!Intrinsics.areEqual(str, Player.AUDIO_TYPE_NETWORK) && !Intrinsics.areEqual(str, Player.AUDIO_TYPE_LIVESTREAM)) {
            return builder;
        }
        DefaultLoadControl.Builder builder2 = new DefaultLoadControl.Builder();
        builder2.setBufferDurationsMs(50000, 50000, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, 5000);
        SimpleExoPlayer.Builder loadControl = builder.setLoadControl(builder2.createDefaultLoadControl());
        Intrinsics.checkNotNullExpressionValue(loadControl, "this.setLoadControl(load…eateDefaultLoadControl())");
        return loadControl;
    }

    public final AssetAudioPlayerThrowable mapError(Throwable th) {
        Intrinsics.checkNotNullParameter(th, ai.aF);
        boolean z = false;
        if (th instanceof ExoPlaybackException) {
            Throwable cause = th.getCause();
            AssetAudioPlayerThrowable.UnreachableException unreachableException = null;
            HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = cause instanceof HttpDataSource.InvalidResponseCodeException ? (HttpDataSource.InvalidResponseCodeException) cause : null;
            if (invalidResponseCodeException != null) {
                if (invalidResponseCodeException.responseCode >= 400) {
                    z = true;
                }
                if (!z) {
                    invalidResponseCodeException = null;
                }
                if (invalidResponseCodeException != null) {
                    unreachableException = new AssetAudioPlayerThrowable.UnreachableException(th);
                }
            }
            if (unreachableException == null) {
                return new AssetAudioPlayerThrowable.NetworkError(th);
            }
            return unreachableException;
        }
        String message = th.getMessage();
        if (message != null && StringsKt.contains((CharSequence) message, (CharSequence) "unable to connect", true)) {
            z = true;
        }
        if (z) {
            return new AssetAudioPlayerThrowable.NetworkError(th);
        }
        return new AssetAudioPlayerThrowable.PlayerError(th);
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public Object open(Context context, FlutterPlugin.FlutterAssets flutterAssets, String str, String str2, Map<?, ?> map, String str3, Map<?, ?> map2, Continuation<? super Long> continuation) {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        SafeContinuation safeContinuation2 = safeContinuation;
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        try {
            this.mediaPlayer = incrementBufferSize(new SimpleExoPlayer.Builder(context), str2).build();
            MediaSource dataSource = getDataSource(context, flutterAssets, str, str2, map, str3, map2);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ExoPlayer exoPlayer = this.mediaPlayer;
            if (exoPlayer != null) {
                exoPlayer.addListener(new Player.EventListener(booleanRef, safeContinuation2, objectRef, str2) { // from class: com.github.florent37.assets_audio_player.playerimplem.PlayerImplemExoPlayer$open$2$1
                    final /* synthetic */ String $audioType;
                    final /* synthetic */ Continuation<Long> $continuation;
                    final /* synthetic */ Ref.ObjectRef<Integer> $lastState;
                    final /* synthetic */ Ref.BooleanRef $onThisMediaReady;

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
                        Player.EventListener.CC.$default$onAvailableCommandsChanged(this, commands);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onEvents(com.google.android.exoplayer2.Player player, Player.Events events) {
                        Player.EventListener.CC.$default$onEvents(this, player, events);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onIsLoadingChanged(boolean z) {
                        Player.EventListener.CC.$default$onIsLoadingChanged(this, z);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onIsPlayingChanged(boolean z) {
                        Player.EventListener.CC.$default$onIsPlayingChanged(this, z);
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

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
                        Player.EventListener.CC.$default$onMediaItemTransition(this, mediaItem, i);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                        Player.EventListener.CC.$default$onMediaMetadataChanged(this, mediaMetadata);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
                        Player.EventListener.CC.$default$onPlayWhenReadyChanged(this, z, i);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                        Player.EventListener.CC.$default$onPlaybackParametersChanged(this, playbackParameters);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onPlaybackStateChanged(int i) {
                        Player.EventListener.CC.$default$onPlaybackStateChanged(this, i);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
                        Player.EventListener.CC.$default$onPlaybackSuppressionReasonChanged(this, i);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
                        Player.EventListener.CC.$default$onPlayerErrorChanged(this, playbackException);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
                        Player.EventListener.CC.$default$onPlaylistMetadataChanged(this, mediaMetadata);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    @Deprecated
                    public /* synthetic */ void onPositionDiscontinuity(int i) {
                        Player.EventListener.CC.$default$onPositionDiscontinuity(this, i);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
                        Player.EventListener.CC.$default$onPositionDiscontinuity(this, positionInfo, positionInfo2, i);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onRepeatModeChanged(int i) {
                        Player.EventListener.CC.$default$onRepeatModeChanged(this, i);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onSeekBackIncrementChanged(long j) {
                        Player.EventListener.CC.$default$onSeekBackIncrementChanged(this, j);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onSeekForwardIncrementChanged(long j) {
                        Player.EventListener.CC.$default$onSeekForwardIncrementChanged(this, j);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    @Deprecated
                    public /* synthetic */ void onSeekProcessed() {
                        Player.EventListener.CC.$default$onSeekProcessed(this);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
                        Player.EventListener.CC.$default$onShuffleModeEnabledChanged(this, z);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    @Deprecated
                    public /* synthetic */ void onStaticMetadataChanged(List<com.google.android.exoplayer2.metadata.Metadata> list) {
                        Player.EventListener.CC.$default$onStaticMetadataChanged(this, list);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
                        Player.EventListener.CC.$default$onTimelineChanged(this, timeline, i);
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
                        Player.EventListener.CC.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        this.$onThisMediaReady = r2;
                        this.$continuation = r3;
                        this.$lastState = r4;
                        this.$audioType = r5;
                    }

                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public void onPlayerError(PlaybackException playbackException) {
                        Intrinsics.checkNotNullParameter(playbackException, "error");
                        AssetAudioPlayerThrowable mapError = PlayerImplemExoPlayer.this.mapError(playbackException);
                        if (!this.$onThisMediaReady.element) {
                            Continuation<Long> continuation2 = this.$continuation;
                            Result.Companion companion = Result.Companion;
                            continuation2.resumeWith(Result.m43constructorimpl(ResultKt.createFailure(mapError)));
                            return;
                        }
                        PlayerImplemExoPlayer.this.getOnError().invoke(mapError);
                    }

                    /* JADX WARN: Type inference failed for: r4v1, types: [T, java.lang.Integer] */
                    @Override // com.google.android.exoplayer2.Player.EventListener
                    public void onPlayerStateChanged(boolean z, int i) {
                        Integer num = this.$lastState.element;
                        if (num == null || num.intValue() != i) {
                            if (i == 2) {
                                PlayerImplemExoPlayer.this.getOnBuffering().invoke(true);
                            } else if (i == 3) {
                                PlayerImplemExoPlayer.this.getOnBuffering().invoke(false);
                                if (!this.$onThisMediaReady.element) {
                                    this.$onThisMediaReady.element = true;
                                    long j = 0;
                                    if (Intrinsics.areEqual(this.$audioType, com.github.florent37.assets_audio_player.Player.AUDIO_TYPE_LIVESTREAM)) {
                                        Continuation<Long> continuation2 = this.$continuation;
                                        Result.Companion companion = Result.Companion;
                                        continuation2.resumeWith(Result.m43constructorimpl(0L));
                                    } else {
                                        ExoPlayer exoPlayer2 = PlayerImplemExoPlayer.this.mediaPlayer;
                                        if (exoPlayer2 != null) {
                                            j = exoPlayer2.getDuration();
                                        }
                                        Continuation<Long> continuation3 = this.$continuation;
                                        Long valueOf = Long.valueOf(j);
                                        Result.Companion companion2 = Result.Companion;
                                        continuation3.resumeWith(Result.m43constructorimpl(valueOf));
                                    }
                                }
                            } else if (i == 4) {
                                PlayerImplemExoPlayer.this.pause();
                                PlayerImplemExoPlayer.this.getOnFinished().invoke();
                                PlayerImplemExoPlayer.this.getOnBuffering().invoke(false);
                            }
                        }
                        this.$lastState.element = Integer.valueOf(i);
                    }
                });
            }
            ExoPlayer exoPlayer2 = this.mediaPlayer;
            if (exoPlayer2 != null) {
                exoPlayer2.prepare(dataSource);
            }
        } catch (Throwable th) {
            if (!booleanRef.element) {
                Result.Companion companion = Result.Companion;
                safeContinuation2.resumeWith(Result.m43constructorimpl(ResultKt.createFailure(th)));
            } else {
                getOnBuffering().invoke(Boxing.boxBoolean(false));
                getOnError().invoke(mapError(th));
            }
        }
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void release() {
        ExoPlayer exoPlayer = this.mediaPlayer;
        if (exoPlayer != null) {
            exoPlayer.release();
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void seekTo(long j) {
        ExoPlayer exoPlayer = this.mediaPlayer;
        if (exoPlayer != null) {
            exoPlayer.seekTo(j);
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void setVolume(float f) {
        ExoPlayer exoPlayer = this.mediaPlayer;
        ExoPlayer.AudioComponent audioComponent = exoPlayer == null ? null : exoPlayer.getAudioComponent();
        if (audioComponent != null) {
            audioComponent.setVolume(f);
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void setPlaySpeed(float f) {
        ExoPlayer exoPlayer;
        ExoPlayer exoPlayer2 = this.mediaPlayer;
        PlaybackParameters playbackParameters = exoPlayer2 == null ? null : exoPlayer2.getPlaybackParameters();
        if (playbackParameters != null && (exoPlayer = this.mediaPlayer) != null) {
            exoPlayer.setPlaybackParameters(new PlaybackParameters(f, playbackParameters.pitch));
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void setPitch(float f) {
        ExoPlayer exoPlayer;
        ExoPlayer exoPlayer2 = this.mediaPlayer;
        PlaybackParameters playbackParameters = exoPlayer2 == null ? null : exoPlayer2.getPlaybackParameters();
        if (playbackParameters != null && (exoPlayer = this.mediaPlayer) != null) {
            exoPlayer.setPlaybackParameters(new PlaybackParameters(playbackParameters.speed, f));
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void getSessionId(Function1<? super Integer, Unit> function1) {
        ExoPlayer.AudioComponent audioComponent;
        ExoPlayer.AudioComponent audioComponent2;
        Intrinsics.checkNotNullParameter(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        ExoPlayer exoPlayer = this.mediaPlayer;
        Integer num = null;
        if (!(exoPlayer == null || (audioComponent2 = exoPlayer.getAudioComponent()) == null)) {
            Integer valueOf = Integer.valueOf(audioComponent2.getAudioSessionId());
            if (valueOf.intValue() != 0) {
                num = valueOf;
            }
        }
        if (num != null) {
            function1.invoke(num);
            return;
        }
        PlayerImplemExoPlayer$getSessionId$listener$1 playerImplemExoPlayer$getSessionId$listener$1 = new AudioListener(function1, this) { // from class: com.github.florent37.assets_audio_player.playerimplem.PlayerImplemExoPlayer$getSessionId$listener$1
            final /* synthetic */ Function1<Integer, Unit> $listener;
            final /* synthetic */ PlayerImplemExoPlayer this$0;

            @Override // com.google.android.exoplayer2.audio.AudioListener
            public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                AudioListener.CC.$default$onAudioAttributesChanged(this, audioAttributes);
            }

            @Override // com.google.android.exoplayer2.audio.AudioListener
            public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
                AudioListener.CC.$default$onSkipSilenceEnabledChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.audio.AudioListener
            public /* synthetic */ void onVolumeChanged(float f) {
                AudioListener.CC.$default$onVolumeChanged(this, f);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Multi-variable type inference failed */
            {
                this.$listener = r1;
                this.this$0 = r2;
            }

            @Override // com.google.android.exoplayer2.audio.AudioListener
            public void onAudioSessionIdChanged(int i) {
                ExoPlayer.AudioComponent audioComponent3;
                this.$listener.invoke(Integer.valueOf(i));
                ExoPlayer exoPlayer2 = this.this$0.mediaPlayer;
                if (exoPlayer2 != null && (audioComponent3 = exoPlayer2.getAudioComponent()) != null) {
                    audioComponent3.removeAudioListener(this);
                }
            }
        };
        ExoPlayer exoPlayer2 = this.mediaPlayer;
        if (exoPlayer2 != null && (audioComponent = exoPlayer2.getAudioComponent()) != null) {
            audioComponent.addAudioListener(playerImplemExoPlayer$getSessionId$listener$1);
        }
    }
}
