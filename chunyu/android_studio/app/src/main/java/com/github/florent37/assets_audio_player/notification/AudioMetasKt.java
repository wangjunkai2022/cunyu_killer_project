package com.github.florent37.assets_audio_player.notification;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioMetas.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u001a \u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"fetchAudioMetas", "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;", "from", "", "fetchImageMetas", "Lcom/github/florent37/assets_audio_player/notification/ImageMetas;", "suffix", "", "assets_audio_player_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class AudioMetasKt {
    public static /* synthetic */ ImageMetas fetchImageMetas$default(Map map, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return fetchImageMetas(map, str);
    }

    public static final ImageMetas fetchImageMetas(Map<?, ?> map, String str) {
        Intrinsics.checkNotNullParameter(map, "from");
        Intrinsics.checkNotNullParameter(str, "suffix");
        Object obj = map.get(Intrinsics.stringPlus("song.image", str));
        String str2 = null;
        String str3 = obj instanceof String ? (String) obj : null;
        Object obj2 = map.get(Intrinsics.stringPlus("song.imageType", str));
        String str4 = obj2 instanceof String ? (String) obj2 : null;
        Object obj3 = map.get(Intrinsics.stringPlus("song.imagePackage", str));
        if (obj3 instanceof String) {
            str2 = (String) obj3;
        }
        return new ImageMetas(str4, str2, str3);
    }

    public static final AudioMetas fetchAudioMetas(Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "from");
        Object obj = map.get("song.title");
        String str = obj instanceof String ? (String) obj : null;
        Object obj2 = map.get("song.artist");
        String str2 = obj2 instanceof String ? (String) obj2 : null;
        Object obj3 = map.get("song.album");
        String str3 = obj3 instanceof String ? (String) obj3 : null;
        ImageMetas fetchImageMetas$default = fetchImageMetas$default(map, null, 2, null);
        ImageMetas fetchImageMetas = fetchImageMetas(map, ".onLoadFail");
        Object obj4 = map.get("song.trackID");
        return new AudioMetas(str, str2, str3, fetchImageMetas$default, fetchImageMetas, obj4 instanceof String ? (String) obj4 : null);
    }
}
