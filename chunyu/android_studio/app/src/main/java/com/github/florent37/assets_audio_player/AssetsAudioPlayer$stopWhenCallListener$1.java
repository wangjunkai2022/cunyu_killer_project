package com.github.florent37.assets_audio_player;

import com.github.florent37.assets_audio_player.stopwhencall.StopWhenCall;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AssetsAudioPlayerPlugin.kt */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;", "onPhoneStateChanged", "", "audioState", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class AssetsAudioPlayer$stopWhenCallListener$1 implements StopWhenCall.Listener {
    final /* synthetic */ AssetsAudioPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AssetsAudioPlayer$stopWhenCallListener$1(AssetsAudioPlayer assetsAudioPlayer) {
        this.this$0 = assetsAudioPlayer;
    }

    @Override // com.github.florent37.assets_audio_player.stopwhencall.StopWhenCall.Listener
    public void onPhoneStateChanged(StopWhenCall.AudioState audioState) {
        Intrinsics.checkNotNullParameter(audioState, "audioState");
        for (Player player : this.this$0.players.values()) {
            player.updateEnableToPlay(audioState);
        }
    }
}
