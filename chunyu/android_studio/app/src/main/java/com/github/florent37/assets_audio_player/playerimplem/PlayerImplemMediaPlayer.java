package com.github.florent37.assets_audio_player.playerimplem;

import android.content.Context;
import android.media.MediaPlayer;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.umeng.analytics.pro.c;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: PlayerImplemMediaPlayer.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u00002\u00020\u0001B;\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0002\u0010\nJ\u001c\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00040\u0006H\u0016Je\u0010\u001b\u001a\u00060\fj\u0002`\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\"2\u0010\u0010$\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010\"2\u0010\u0010'\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010%H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010(J\b\u0010)\u001a\u00020\u0004H\u0016J\b\u0010*\u001a\u00020\u0004H\u0016J\b\u0010+\u001a\u00020\u0004H\u0016J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\fH\u0016J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020\u00042\u0006\u00102\u001a\u000200H\u0016J\u0010\u00103\u001a\u00020\u00042\u0006\u00104\u001a\u000200H\u0016J\b\u00105\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R$\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00078V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00066"}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;", "onFinished", "Lkotlin/Function0;", "", "onBuffering", "Lkotlin/Function1;", "", "onError", "", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "currentPositionMs", "", "getCurrentPositionMs", "()J", "isPlaying", "()Z", "value", "loopSingleAudio", "getLoopSingleAudio", "setLoopSingleAudio", "(Z)V", "mediaPlayer", "Landroid/media/MediaPlayer;", "getSessionId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;", c.R, "Landroid/content/Context;", "flutterAssets", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;", "assetAudioPath", "", "audioType", "networkHeaders", "", "assetAudioPackage", "drmConfiguration", "(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pause", "play", "release", "seekTo", "to", "setPitch", "pitch", "", "setPlaySpeed", "playSpeed", "setVolume", "volume", NotificationAction.ACTION_STOP, "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PlayerImplemMediaPlayer extends PlayerImplem {
    private MediaPlayer mediaPlayer;

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void setPitch(float f) {
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void setPlaySpeed(float f) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlayerImplemMediaPlayer(Function0<Unit> function0, Function1<? super Boolean, Unit> function1, Function1<? super Throwable, Unit> function12) {
        super(function0, function1, function12);
        Intrinsics.checkNotNullParameter(function0, "onFinished");
        Intrinsics.checkNotNullParameter(function1, "onBuffering");
        Intrinsics.checkNotNullParameter(function12, "onError");
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public boolean isPlaying() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null) {
                return false;
            }
            return mediaPlayer.isPlaying();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public long getCurrentPositionMs() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null) {
                return 0;
            }
            return (long) mediaPlayer.getCurrentPosition();
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public boolean getLoopSingleAudio() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer == null) {
            return false;
        }
        return mediaPlayer.isLooping();
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void setLoopSingleAudio(boolean z) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setLooping(z);
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void stop() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void play() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.start();
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void pause() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public Object open(Context context, FlutterPlugin.FlutterAssets flutterAssets, String str, String str2, Map<?, ?> map, String str3, Map<?, ?> map2, Continuation<? super Long> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new PlayerImplemMediaPlayer$open$2(this, str2, map, context, str, null), continuation);
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void release() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void seekTo(long j) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.seekTo((int) j);
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void setVolume(float f) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f, f);
        }
    }

    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplem
    public void getSessionId(Function1<? super Integer, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            Integer valueOf = Integer.valueOf(mediaPlayer.getAudioSessionId());
            if (!(valueOf.intValue() != 0)) {
                valueOf = null;
            }
            if (valueOf != null) {
                function1.invoke(valueOf);
            }
        }
    }
}
