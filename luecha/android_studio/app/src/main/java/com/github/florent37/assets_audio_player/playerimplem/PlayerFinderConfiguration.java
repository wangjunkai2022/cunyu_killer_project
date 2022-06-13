package com.github.florent37.assets_audio_player.playerimplem;

import android.content.Context;
import com.github.florent37.assets_audio_player.AssetAudioPlayerThrowable;
import com.umeng.analytics.pro.c;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlayerFinder.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001B§\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0010\u0010\b\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0010\u0012\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0010\u0012\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0010\u0012\u0010\u0010\u0015\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\t¢\u0006\u0002\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u0015\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001b\u0010\b\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001eR\u001f\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u001f\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0019\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001f\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b'\u0010#¨\u0006("}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;", "", "assetAudioPath", "", "flutterAssets", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;", "assetAudioPackage", "audioType", "networkHeaders", "", c.R, "Landroid/content/Context;", "onFinished", "Lkotlin/Function0;", "", "onPlaying", "Lkotlin/Function1;", "", "onBuffering", "onError", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", "drmConfiguration", "(Ljava/lang/String;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V", "getAssetAudioPackage", "()Ljava/lang/String;", "getAssetAudioPath", "getAudioType", "getContext", "()Landroid/content/Context;", "getDrmConfiguration", "()Ljava/util/Map;", "getFlutterAssets", "()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;", "getNetworkHeaders", "getOnBuffering", "()Lkotlin/jvm/functions/Function1;", "getOnError", "getOnFinished", "()Lkotlin/jvm/functions/Function0;", "getOnPlaying", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class PlayerFinderConfiguration {
    private final String assetAudioPackage;
    private final String assetAudioPath;
    private final String audioType;
    private final Context context;
    private final Map<?, ?> drmConfiguration;
    private final FlutterPlugin.FlutterAssets flutterAssets;
    private final Map<?, ?> networkHeaders;
    private final Function1<Boolean, Unit> onBuffering;
    private final Function1<AssetAudioPlayerThrowable, Unit> onError;
    private final Function0<Unit> onFinished;
    private final Function1<Boolean, Unit> onPlaying;

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerFinderConfiguration(String str, FlutterPlugin.FlutterAssets flutterAssets, String str2, String str3, Map<?, ?> map, Context context, Function0<Unit> function0, Function1<? super Boolean, Unit> function1, Function1<? super Boolean, Unit> function12, Function1<? super AssetAudioPlayerThrowable, Unit> function13, Map<?, ?> map2) {
        Intrinsics.checkNotNullParameter(flutterAssets, "flutterAssets");
        Intrinsics.checkNotNullParameter(str3, "audioType");
        Intrinsics.checkNotNullParameter(context, c.R);
        this.assetAudioPath = str;
        this.flutterAssets = flutterAssets;
        this.assetAudioPackage = str2;
        this.audioType = str3;
        this.networkHeaders = map;
        this.context = context;
        this.onFinished = function0;
        this.onPlaying = function1;
        this.onBuffering = function12;
        this.onError = function13;
        this.drmConfiguration = map2;
    }

    public final String getAssetAudioPath() {
        return this.assetAudioPath;
    }

    public final FlutterPlugin.FlutterAssets getFlutterAssets() {
        return this.flutterAssets;
    }

    public final String getAssetAudioPackage() {
        return this.assetAudioPackage;
    }

    public final String getAudioType() {
        return this.audioType;
    }

    public final Map<?, ?> getNetworkHeaders() {
        return this.networkHeaders;
    }

    public final Context getContext() {
        return this.context;
    }

    public final Function0<Unit> getOnFinished() {
        return this.onFinished;
    }

    public final Function1<Boolean, Unit> getOnPlaying() {
        return this.onPlaying;
    }

    public final Function1<Boolean, Unit> getOnBuffering() {
        return this.onBuffering;
    }

    public final Function1<AssetAudioPlayerThrowable, Unit> getOnError() {
        return this.onError;
    }

    public final Map<?, ?> getDrmConfiguration() {
        return this.drmConfiguration;
    }
}
