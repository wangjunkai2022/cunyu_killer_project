package com.github.florent37.assets_audio_player.headset;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HeadsetStrategy.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, d2 = {"Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;", "", "(Ljava/lang/String;I)V", "none", "pauseOnUnplug", "pauseOnUnplugPlayOnPlug", "Companion", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public enum HeadsetStrategy {
    none,
    pauseOnUnplug,
    pauseOnUnplugPlayOnPlug;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: HeadsetStrategy.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy$Companion;", "", "()V", "from", "Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;", ai.az, "", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final HeadsetStrategy from(String str) {
            if (Intrinsics.areEqual(str, "pauseOnUnplug")) {
                return HeadsetStrategy.pauseOnUnplug;
            }
            if (Intrinsics.areEqual(str, "pauseOnUnplugPlayOnPlug")) {
                return HeadsetStrategy.pauseOnUnplugPlayOnPlug;
            }
            return HeadsetStrategy.none;
        }
    }
}
