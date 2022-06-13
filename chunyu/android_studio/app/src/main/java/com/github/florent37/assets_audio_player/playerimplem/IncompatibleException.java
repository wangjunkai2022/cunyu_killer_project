package com.github.florent37.assets_audio_player.playerimplem;

import com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterExoPlayer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlayerImplemExoPlayer.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/IncompatibleException;", "", "audioType", "", "type", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;", "(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V", "getAudioType", "()Ljava/lang/String;", "getType", "()Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class IncompatibleException extends Throwable {
    private final String audioType;
    private final PlayerImplemTesterExoPlayer.Type type;

    public IncompatibleException(String str, PlayerImplemTesterExoPlayer.Type type) {
        Intrinsics.checkNotNullParameter(str, "audioType");
        Intrinsics.checkNotNullParameter(type, "type");
        this.audioType = str;
        this.type = type;
    }

    public final String getAudioType() {
        return this.audioType;
    }

    public final PlayerImplemTesterExoPlayer.Type getType() {
        return this.type;
    }
}
