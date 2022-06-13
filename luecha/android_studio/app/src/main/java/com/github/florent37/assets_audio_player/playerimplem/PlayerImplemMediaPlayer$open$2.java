package com.github.florent37.assets_audio_player.playerimplem;

import android.content.Context;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PlayerImplemMediaPlayer.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "com.github.florent37.assets_audio_player.playerimplem.PlayerImplemMediaPlayer$open$2", f = "PlayerImplemMediaPlayer.kt", i = {0}, l = {120}, m = "invokeSuspend", n = {"$this$withContext"}, s = {"L$0"})
/* loaded from: classes2.dex */
public final class PlayerImplemMediaPlayer$open$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Long>, Object> {
    final /* synthetic */ String $assetAudioPath;
    final /* synthetic */ String $audioType;
    final /* synthetic */ Context $context;
    final /* synthetic */ Map<?, ?> $networkHeaders;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    final /* synthetic */ PlayerImplemMediaPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlayerImplemMediaPlayer$open$2(PlayerImplemMediaPlayer playerImplemMediaPlayer, String str, Map<?, ?> map, Context context, String str2, Continuation<? super PlayerImplemMediaPlayer$open$2> continuation) {
        super(2, continuation);
        this.this$0 = playerImplemMediaPlayer;
        this.$audioType = str;
        this.$networkHeaders = map;
        this.$context = context;
        this.$assetAudioPath = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PlayerImplemMediaPlayer$open$2 playerImplemMediaPlayer$open$2 = new PlayerImplemMediaPlayer$open$2(this.this$0, this.$audioType, this.$networkHeaders, this.$context, this.$assetAudioPath, continuation);
        playerImplemMediaPlayer$open$2.L$0 = obj;
        return playerImplemMediaPlayer$open$2;
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Long> continuation) {
        return ((PlayerImplemMediaPlayer$open$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0148 A[Catch: all -> 0x015d, TryCatch #0 {all -> 0x015d, blocks: (B:53:0x0141, B:56:0x0148, B:57:0x0152, B:60:0x0159), top: B:72:0x0141 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0159 A[Catch: all -> 0x015d, TRY_LEAVE, TryCatch #0 {all -> 0x015d, blocks: (B:53:0x0141, B:56:0x0148, B:57:0x0152, B:60:0x0159), top: B:72:0x0141 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
        // Method dump skipped, instructions count: 397
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.florent37.assets_audio_player.playerimplem.PlayerImplemMediaPlayer$open$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
