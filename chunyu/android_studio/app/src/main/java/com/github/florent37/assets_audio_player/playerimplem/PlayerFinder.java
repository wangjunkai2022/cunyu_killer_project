package com.github.florent37.assets_audio_player.playerimplem;

import androidx.exifinterface.media.ExifInterface;
import com.github.florent37.assets_audio_player.AssetAudioPlayerThrowable;
import com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTesterExoPlayer;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: PlayerFinder.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0014J&\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J)\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001a\"\u0004\b\u0000\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u001a2\u0006\u0010\u001c\u001a\u0002H\u001b¢\u0006\u0002\u0010\u001dR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;", "", "()V", "DASHExoPlayerTester", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;", "DefaultExoPlayerTester", "HLSExoPlayerTester", "MediaPlayerTester", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;", "SmoothStreamingExoPlayerTester", "playerImpls", "", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;", "_findWorkingPlayer", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;", "remainingImpls", "configuration", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;", "(Ljava/util/List;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findWorkingPlayer", "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sortPlayerImpls", "path", "", "originList", "moveToFirst", "", ExifInterface.GPS_DIRECTION_TRUE, "element", "(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;", "NoPlayerFoundException", "PlayerWithDuration", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PlayerFinder {
    public static final PlayerFinder INSTANCE = new PlayerFinder();
    private static final PlayerImplemTesterExoPlayer HLSExoPlayerTester = new PlayerImplemTesterExoPlayer(PlayerImplemTesterExoPlayer.Type.HLS);
    private static final PlayerImplemTesterExoPlayer DefaultExoPlayerTester = new PlayerImplemTesterExoPlayer(PlayerImplemTesterExoPlayer.Type.Default);
    private static final PlayerImplemTesterExoPlayer DASHExoPlayerTester = new PlayerImplemTesterExoPlayer(PlayerImplemTesterExoPlayer.Type.DASH);
    private static final PlayerImplemTesterExoPlayer SmoothStreamingExoPlayerTester = new PlayerImplemTesterExoPlayer(PlayerImplemTesterExoPlayer.Type.SmoothStreaming);
    private static final PlayerImplemTesterMediaPlayer MediaPlayerTester = new PlayerImplemTesterMediaPlayer();
    private static final List<PlayerImplemTester> playerImpls = CollectionsKt.listOf((Object[]) new PlayerImplemTester[]{DefaultExoPlayerTester, HLSExoPlayerTester, DASHExoPlayerTester, SmoothStreamingExoPlayerTester, MediaPlayerTester});

    private PlayerFinder() {
    }

    /* compiled from: PlayerFinder.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0002\u0010\u0007R\u0015\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;", "", "player", "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;", "duration", "", "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;", "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;J)V", "getDuration", "()J", "getPlayer", "()Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class PlayerWithDuration {
        private final long duration;
        private final PlayerImplem player;

        public PlayerWithDuration(PlayerImplem playerImplem, long j) {
            Intrinsics.checkNotNullParameter(playerImplem, "player");
            this.player = playerImplem;
            this.duration = j;
        }

        public final long getDuration() {
            return this.duration;
        }

        public final PlayerImplem getPlayer() {
            return this.player;
        }
    }

    /* compiled from: PlayerFinder.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;", "", "why", "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", "(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;)V", "getWhy", "()Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class NoPlayerFoundException extends Throwable {
        private final AssetAudioPlayerThrowable why;

        public NoPlayerFoundException() {
            this(null, 1, null);
        }

        public NoPlayerFoundException(AssetAudioPlayerThrowable assetAudioPlayerThrowable) {
            this.why = assetAudioPlayerThrowable;
        }

        public /* synthetic */ NoPlayerFoundException(AssetAudioPlayerThrowable assetAudioPlayerThrowable, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : assetAudioPlayerThrowable);
        }

        public final AssetAudioPlayerThrowable getWhy() {
            return this.why;
        }
    }

    private final List<PlayerImplemTester> sortPlayerImpls(String str, List<? extends PlayerImplemTester> list) {
        List<PlayerImplemTester> mutableList = CollectionsKt.toMutableList((Collection) list);
        if (str != null && StringsKt.endsWith$default(str, ".m3u8", false, 2, (Object) null)) {
            INSTANCE.moveToFirst(mutableList, HLSExoPlayerTester);
        }
        return mutableList;
    }

    public final <T> List<T> moveToFirst(List<T> list, T t) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        list.remove(t);
        list.add(0, t);
        return list;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0083 A[PHI: r9 
      PHI: (r9v2 java.lang.Object) = (r9v4 java.lang.Object), (r9v1 java.lang.Object) binds: [B:27:0x0080, B:12:0x002a] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object _findWorkingPlayer(java.util.List<? extends com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTester> r7, com.github.florent37.assets_audio_player.playerimplem.PlayerFinderConfiguration r8, kotlin.coroutines.Continuation<? super com.github.florent37.assets_audio_player.playerimplem.PlayerFinder.PlayerWithDuration> r9) throws com.github.florent37.assets_audio_player.playerimplem.PlayerFinder.NoPlayerFoundException {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$_findWorkingPlayer$1
            if (r0 == 0) goto L_0x0014
            r0 = r9
            com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$_findWorkingPlayer$1 r0 = (com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$_findWorkingPlayer$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L_0x0014
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L_0x0019
        L_0x0014:
            com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$_findWorkingPlayer$1 r0 = new com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$_findWorkingPlayer$1
            r0.<init>(r9)
        L_0x0019:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L_0x0047
            if (r2 == r4) goto L_0x0036
            if (r2 != r3) goto L_0x002e
            kotlin.ResultKt.throwOnFailure(r9)
            goto L_0x0083
        L_0x002e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L_0x0036:
            java.lang.Object r7 = r0.L$2
            r8 = r7
            com.github.florent37.assets_audio_player.playerimplem.PlayerFinderConfiguration r8 = (com.github.florent37.assets_audio_player.playerimplem.PlayerFinderConfiguration) r8
            java.lang.Object r7 = r0.L$1
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r2 = r0.L$0
            com.github.florent37.assets_audio_player.playerimplem.PlayerFinder r2 = (com.github.florent37.assets_audio_player.playerimplem.PlayerFinder) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: UnreachableException -> 0x0084, all -> 0x006a
            goto L_0x0066
        L_0x0047:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r7.isEmpty()
            if (r9 != 0) goto L_0x008d
            java.lang.Object r9 = kotlin.collections.CollectionsKt.first(r7)     // Catch: UnreachableException -> 0x0084, all -> 0x0069
            com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTester r9 = (com.github.florent37.assets_audio_player.playerimplem.PlayerImplemTester) r9     // Catch: UnreachableException -> 0x0084, all -> 0x0069
            r0.L$0 = r6     // Catch: UnreachableException -> 0x0084, all -> 0x0069
            r0.L$1 = r7     // Catch: UnreachableException -> 0x0084, all -> 0x0069
            r0.L$2 = r8     // Catch: UnreachableException -> 0x0084, all -> 0x0069
            r0.label = r4     // Catch: UnreachableException -> 0x0084, all -> 0x0069
            java.lang.Object r9 = r9.open(r8, r0)     // Catch: UnreachableException -> 0x0084, all -> 0x0069
            if (r9 != r1) goto L_0x0065
            return r1
        L_0x0065:
            r2 = r6
        L_0x0066:
            com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$PlayerWithDuration r9 = (com.github.florent37.assets_audio_player.playerimplem.PlayerFinder.PlayerWithDuration) r9     // Catch: UnreachableException -> 0x0084, all -> 0x006a
            return r9
        L_0x0069:
            r2 = r6
        L_0x006a:
            java.util.Collection r7 = (java.util.Collection) r7
            java.util.List r7 = kotlin.collections.CollectionsKt.toMutableList(r7)
            r9 = 0
            r7.remove(r9)
            r0.L$0 = r5
            r0.L$1 = r5
            r0.L$2 = r5
            r0.label = r3
            java.lang.Object r9 = r2._findWorkingPlayer(r7, r8, r0)
            if (r9 != r1) goto L_0x0083
            return r1
        L_0x0083:
            return r9
        L_0x0084:
            r7 = move-exception
            com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$NoPlayerFoundException r8 = new com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$NoPlayerFoundException
            com.github.florent37.assets_audio_player.AssetAudioPlayerThrowable r7 = (com.github.florent37.assets_audio_player.AssetAudioPlayerThrowable) r7
            r8.<init>(r7)
            throw r8
        L_0x008d:
            com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$NoPlayerFoundException r7 = new com.github.florent37.assets_audio_player.playerimplem.PlayerFinder$NoPlayerFoundException
            r7.<init>(r5, r4, r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.florent37.assets_audio_player.playerimplem.PlayerFinder._findWorkingPlayer(java.util.List, com.github.florent37.assets_audio_player.playerimplem.PlayerFinderConfiguration, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object findWorkingPlayer(PlayerFinderConfiguration playerFinderConfiguration, Continuation<? super PlayerWithDuration> continuation) throws NoPlayerFoundException {
        return _findWorkingPlayer(sortPlayerImpls(playerFinderConfiguration.getAssetAudioPath(), playerImpls), playerFinderConfiguration, continuation);
    }
}
