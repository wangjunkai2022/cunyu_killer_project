package com.github.florent37.assets_audio_player.playerimplem;

import android.content.Context;
import com.github.florent37.assets_audio_player.AssetAudioPlayerThrowable;
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

/* compiled from: PlayerImplem.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B;\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0002\u0010\nJ\u001c\u0010\u001a\u001a\u00020\u00042\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00040\u0006H&Je\u0010\u001d\u001a\u00060\fj\u0002`\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020$2\u0010\u0010&\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010'2\b\u0010(\u001a\u0004\u0018\u00010$2\u0010\u0010)\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010'H¦@ø\u0001\u0000¢\u0006\u0002\u0010*J\b\u0010+\u001a\u00020\u0004H&J\b\u0010,\u001a\u00020\u0004H&J\b\u0010-\u001a\u00020\u0004H&J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\fH&J\u0010\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u000202H&J\u0010\u00103\u001a\u00020\u00042\u0006\u00104\u001a\u000202H&J\u0010\u00105\u001a\u00020\u00042\u0006\u00106\u001a\u000202H&J\b\u00107\u001a\u00020\u0004H&R\u0012\u0010\u000b\u001a\u00020\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u00020\u0007X¦\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u0010\"\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u00068"}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;", "", "onFinished", "Lkotlin/Function0;", "", "onBuffering", "Lkotlin/Function1;", "", "onError", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "currentPositionMs", "", "getCurrentPositionMs", "()J", "isPlaying", "()Z", "loopSingleAudio", "getLoopSingleAudio", "setLoopSingleAudio", "(Z)V", "getOnBuffering", "()Lkotlin/jvm/functions/Function1;", "getOnError", "getOnFinished", "()Lkotlin/jvm/functions/Function0;", "getSessionId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;", c.R, "Landroid/content/Context;", "flutterAssets", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;", "assetAudioPath", "", "audioType", "networkHeaders", "", "assetAudioPackage", "drmConfiguration", "(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pause", "play", "release", "seekTo", "to", "setPitch", "pitch", "", "setPlaySpeed", "playSpeed", "setVolume", "volume", NotificationAction.ACTION_STOP, "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class PlayerImplem {
    private final Function1<Boolean, Unit> onBuffering;
    private final Function1<AssetAudioPlayerThrowable, Unit> onError;
    private final Function0<Unit> onFinished;

    public abstract long getCurrentPositionMs();

    public abstract boolean getLoopSingleAudio();

    public abstract void getSessionId(Function1<? super Integer, Unit> function1);

    public abstract boolean isPlaying();

    public abstract Object open(Context context, FlutterPlugin.FlutterAssets flutterAssets, String str, String str2, Map<?, ?> map, String str3, Map<?, ?> map2, Continuation<? super Long> continuation);

    public abstract void pause();

    public abstract void play();

    public abstract void release();

    public abstract void seekTo(long j);

    public abstract void setLoopSingleAudio(boolean z);

    public abstract void setPitch(float f);

    public abstract void setPlaySpeed(float f);

    public abstract void setVolume(float f);

    public abstract void stop();

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerImplem(Function0<Unit> function0, Function1<? super Boolean, Unit> function1, Function1<? super AssetAudioPlayerThrowable, Unit> function12) {
        Intrinsics.checkNotNullParameter(function0, "onFinished");
        Intrinsics.checkNotNullParameter(function1, "onBuffering");
        Intrinsics.checkNotNullParameter(function12, "onError");
        this.onFinished = function0;
        this.onBuffering = function1;
        this.onError = function12;
    }

    public final Function0<Unit> getOnFinished() {
        return this.onFinished;
    }

    public final Function1<Boolean, Unit> getOnBuffering() {
        return this.onBuffering;
    }

    public final Function1<AssetAudioPlayerThrowable, Unit> getOnError() {
        return this.onError;
    }
}
