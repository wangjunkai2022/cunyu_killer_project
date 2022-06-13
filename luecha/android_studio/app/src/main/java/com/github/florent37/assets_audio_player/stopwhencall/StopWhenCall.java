package com.github.florent37.assets_audio_player.stopwhencall;

import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StopWhenCall.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0004J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u0007H&J\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;", "", "()V", "listeners", "", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;", "pingListeners", "", "audioState", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;", "register", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "requestAudioFocus", "audioFocusStrategy", "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;", NotificationAction.ACTION_STOP, "unregister", "AudioState", "Listener", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class StopWhenCall {
    private final Set<Listener> listeners = new LinkedHashSet();

    /* compiled from: StopWhenCall.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;", "", "(Ljava/lang/String;I)V", "AUTHORIZED_TO_PLAY", "REDUCE_VOLUME", "FORBIDDEN", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public enum AudioState {
        AUTHORIZED_TO_PLAY,
        REDUCE_VOLUME,
        FORBIDDEN
    }

    /* compiled from: StopWhenCall.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;", "", "onPhoneStateChanged", "", "audioState", "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public interface Listener {
        void onPhoneStateChanged(AudioState audioState);
    }

    public abstract AudioState requestAudioFocus(AudioFocusStrategy audioFocusStrategy);

    public abstract void stop();

    public final void register(Listener listener) {
        Intrinsics.checkNotNullParameter(listener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.listeners.add(listener);
    }

    public final void unregister(Listener listener) {
        Intrinsics.checkNotNullParameter(listener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.listeners.remove(listener);
    }

    protected final void pingListeners(AudioState audioState) {
        Intrinsics.checkNotNullParameter(audioState, "audioState");
        for (Listener listener : this.listeners) {
            listener.onPhoneStateChanged(audioState);
        }
    }
}
