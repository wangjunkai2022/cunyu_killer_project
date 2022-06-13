package com.github.florent37.assets_audio_player.stopwhencall;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioFocusStrategy.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u00032\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;", "", "()V", "Companion", "None", "Request", "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;", "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class AudioFocusStrategy {
    public static final Companion Companion = new Companion(null);

    public /* synthetic */ AudioFocusStrategy(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AudioFocusStrategy() {
    }

    /* compiled from: AudioFocusStrategy.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;", "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;", "()V", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class None extends AudioFocusStrategy {
        public static final None INSTANCE = new None();

        private None() {
            super(null);
        }
    }

    /* compiled from: AudioFocusStrategy.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;", "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;", "resumeAfterInterruption", "", "resumeOthersPlayersAfterDone", "(ZZ)V", "getResumeAfterInterruption", "()Z", "getResumeOthersPlayersAfterDone", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Request extends AudioFocusStrategy {
        private final boolean resumeAfterInterruption;
        private final boolean resumeOthersPlayersAfterDone;

        public final boolean getResumeAfterInterruption() {
            return this.resumeAfterInterruption;
        }

        public final boolean getResumeOthersPlayersAfterDone() {
            return this.resumeOthersPlayersAfterDone;
        }

        public Request(boolean z, boolean z2) {
            super(null);
            this.resumeAfterInterruption = z;
            this.resumeOthersPlayersAfterDone = z2;
        }
    }

    /* compiled from: AudioFocusStrategy.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Companion;", "", "()V", "from", "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;", "params", "", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AudioFocusStrategy from(Map<?, ?> map) {
            if (map == null) {
                return None.INSTANCE;
            }
            try {
                if (Intrinsics.areEqual(map.get("request"), (Object) false)) {
                    return None.INSTANCE;
                }
                Object obj = map.get("resumeAfterInterruption");
                if (obj != null) {
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    Object obj2 = map.get("resumeOthersPlayersAfterDone");
                    if (obj2 != null) {
                        return new Request(booleanValue, ((Boolean) obj2).booleanValue());
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
            } catch (Throwable unused) {
                return None.INSTANCE;
            }
        }
    }
}
