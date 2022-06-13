package com.github.florent37.assets_audio_player.playerimplem;

import com.github.florent37.assets_audio_player.AssetAudioPlayerThrowable;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;

/* compiled from: PlayerImplemMediaPlayer.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0019\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\rR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;", "()V", "mediaPlayer", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;", "mapError", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", ai.aF, "", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;", "configuration", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;", "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class PlayerImplemTesterMediaPlayer implements PlayerImplemTester {
    private PlayerImplemMediaPlayer mediaPlayer;

    public final AssetAudioPlayerThrowable mapError(Throwable th) {
        return new AssetAudioPlayerThrowable.PlayerError(th);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ba  */
    @Override // com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTester
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.Object open(com.github.florent37.assets_audio_player.playerimplem.PlayerFinderConfiguration r13, kotlin.coroutines.Continuation<? super com.github.florent37.assets_audio_player.playerimplem.PlayerFinder.PlayerWithDuration> r14) {
        /*
            r12 = this;
            boolean r0 = r14 instanceof com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$1
            if (r0 == 0) goto L_0x0014
            r0 = r14
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$1 r0 = (com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L_0x0014
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L_0x0019
        L_0x0014:
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$1 r0 = new com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$1
            r0.<init>(r14)
        L_0x0019:
            r9 = r0
            java.lang.Object r14 = r9.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            java.lang.String r10 = "PlayerImplem"
            r2 = 1
            if (r1 == 0) goto L_0x0041
            if (r1 != r2) goto L_0x0039
            java.lang.Object r13 = r9.L$0
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplemMediaPlayer r13 = (com.github.florent37.assets_audio_player.playerimplem.PlayerImplemMediaPlayer) r13
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: all -> 0x0034
            r11 = r14
            r14 = r13
            r13 = r11
            goto L_0x0097
        L_0x0034:
            r14 = move-exception
            r11 = r14
            r14 = r13
            r13 = r11
            goto L_0x00aa
        L_0x0039:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L_0x0041:
            kotlin.ResultKt.throwOnFailure(r14)
            com.github.florent37.assets_audio_player.AssetsAudioPlayerPlugin$Companion r14 = com.github.florent37.assets_audio_player.AssetsAudioPlayerPlugin.Companion
            boolean r14 = r14.getDisplayLogs()
            if (r14 == 0) goto L_0x0052
            java.lang.String r14 = "trying to open with native mediaplayer"
            android.util.Log.d(r10, r14)
        L_0x0052:
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplemMediaPlayer r14 = new com.github.florent37.assets_audio_player.playerimplem.PlayerImplemMediaPlayer
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$mediaPlayer$1 r1 = new com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$mediaPlayer$1
            r1.<init>()
            kotlin.jvm.functions.Function0 r1 = (kotlin.jvm.functions.Function0) r1
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$mediaPlayer$2 r3 = new com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$mediaPlayer$2
            r3.<init>()
            kotlin.jvm.functions.Function1 r3 = (kotlin.jvm.functions.Function1) r3
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$mediaPlayer$3 r4 = new com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer$open$mediaPlayer$3
            r4.<init>(r12)
            kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
            r14.<init>(r1, r3, r4)
            android.content.Context r3 = r13.getContext()     // Catch: all -> 0x00a9
            java.lang.String r4 = r13.getAssetAudioPath()     // Catch: all -> 0x00a9
            java.lang.String r5 = r13.getAudioType()     // Catch: all -> 0x00a9
            java.lang.String r7 = r13.getAssetAudioPackage()     // Catch: all -> 0x00a9
            java.util.Map r6 = r13.getNetworkHeaders()     // Catch: all -> 0x00a9
            io.flutter.embedding.engine.plugins.FlutterPlugin$FlutterAssets r8 = r13.getFlutterAssets()     // Catch: all -> 0x00a9
            java.util.Map r13 = r13.getDrmConfiguration()     // Catch: all -> 0x00a9
            r9.L$0 = r14     // Catch: all -> 0x00a9
            r9.label = r2     // Catch: all -> 0x00a9
            r1 = r14
            r2 = r3
            r3 = r8
            r8 = r13
            java.lang.Object r13 = r1.open(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: all -> 0x00a9
            if (r13 != r0) goto L_0x0097
            return r0
        L_0x0097:
            java.lang.Long r13 = (java.lang.Long) r13     // Catch: all -> 0x00a9
            long r0 = r13.longValue()     // Catch: all -> 0x00a9
            com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$PlayerWithDuration r13 = new com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$PlayerWithDuration     // Catch: all -> 0x00a9
            kotlin.jvm.internal.Intrinsics.checkNotNull(r14)     // Catch: all -> 0x00a9
            r2 = r14
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplem r2 = (com.github.florent37.assets_audio_player.playerimplem.PlayerImplem) r2     // Catch: all -> 0x00a9
            r13.<init>(r2, r0)     // Catch: all -> 0x00a9
            return r13
        L_0x00a9:
            r13 = move-exception
        L_0x00aa:
            com.github.florent37.assets_audio_player.AssetsAudioPlayerPlugin$Companion r0 = com.github.florent37.assets_audio_player.AssetsAudioPlayerPlugin.Companion
            boolean r0 = r0.getDisplayLogs()
            if (r0 == 0) goto L_0x00b7
            java.lang.String r0 = "failed to open with native mediaplayer"
            android.util.Log.d(r10, r0)
        L_0x00b7:
            if (r14 != 0) goto L_0x00ba
            goto L_0x00bd
        L_0x00ba:
            r14.release()
        L_0x00bd:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterMediaPlayer.open(com.github.florent37.assets_audio_player.playerimplem.PlayerFinderConfiguration, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
