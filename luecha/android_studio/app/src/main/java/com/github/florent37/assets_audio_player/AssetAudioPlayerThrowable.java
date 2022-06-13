package com.github.florent37.assets_audio_player;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Errors.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\n\u000b\fB\u0017\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t\u0082\u0001\u0003\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", "", "type", "", ai.aF, "(Ljava/lang/String;Ljava/lang/Throwable;)V", "getT", "()Ljava/lang/Throwable;", "getType", "()Ljava/lang/String;", "NetworkError", "PlayerError", "UnreachableException", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$NetworkError;", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$UnreachableException;", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class AssetAudioPlayerThrowable extends Throwable {
    private final Throwable t;
    private final String type;

    public /* synthetic */ AssetAudioPlayerThrowable(String str, Throwable th, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, th);
    }

    /* compiled from: Errors.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$NetworkError;", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", ai.aF, "", "(Ljava/lang/Throwable;)V", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class NetworkError extends AssetAudioPlayerThrowable {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NetworkError(Throwable th) {
            super(Player.AUDIO_TYPE_NETWORK, th, null);
            Intrinsics.checkNotNullParameter(th, ai.aF);
        }
    }

    private AssetAudioPlayerThrowable(String str, Throwable th) {
        this.type = str;
        this.t = th;
    }

    public final Throwable getT() {
        return this.t;
    }

    public final String getType() {
        return this.type;
    }

    /* compiled from: Errors.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$UnreachableException;", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", ai.aF, "", "(Ljava/lang/Throwable;)V", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class UnreachableException extends AssetAudioPlayerThrowable {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnreachableException(Throwable th) {
            super(Player.AUDIO_TYPE_NETWORK, th, null);
            Intrinsics.checkNotNullParameter(th, ai.aF);
        }
    }

    /* compiled from: Errors.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", ai.aF, "", "(Ljava/lang/Throwable;)V", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class PlayerError extends AssetAudioPlayerThrowable {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PlayerError(Throwable th) {
            super("player", th, null);
            Intrinsics.checkNotNullParameter(th, ai.aF);
        }
    }
}
