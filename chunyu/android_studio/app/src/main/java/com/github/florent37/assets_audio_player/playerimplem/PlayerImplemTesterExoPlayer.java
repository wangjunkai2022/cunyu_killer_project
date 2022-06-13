package com.github.florent37.assets_audio_player.playerimplem;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlayerImplemExoPlayer.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;", "type", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;", "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;", "configuration", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;", "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Type", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PlayerImplemTesterExoPlayer implements PlayerImplemTester {
    private final Type type;

    /* compiled from: PlayerImplemExoPlayer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;", "", "(Ljava/lang/String;I)V", "Default", "HLS", "DASH", "SmoothStreaming", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Type {
        Default,
        HLS,
        DASH,
        SmoothStreaming
    }

    public PlayerImplemTesterExoPlayer(Type type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0127  */
    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTester
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.Object open(com.github.florent37.assets_audio_player.playerimplem.PlayerFinderConfiguration r14, kotlin.coroutines.Continuation<? super com.github.florent37.assets_audio_player.playerimplem.PlayerFinder.PlayerWithDuration> r15) {
        /*
        // Method dump skipped, instructions count: 299
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterExoPlayer.open(com.github.florent37.assets_audio_player.playerimplem.PlayerFinderConfiguration, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
