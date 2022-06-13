package com.github.florent37.assets_audio_player.playerimplem;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlayerImplemMediaPlayer.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u001a\u001e\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001¨\u0006\u0003"}, d2 = {"toMapString", "", "", "assets_audio_player_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PlayerImplemMediaPlayerKt {
    public static final Map<String, String> toMapString(Map<?, ?> map) {
        Object value;
        Intrinsics.checkNotNullParameter(map, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (!(key == null || (value = entry.getValue()) == null)) {
                linkedHashMap.put(key.toString(), value.toString());
            }
        }
        return linkedHashMap;
    }
}
