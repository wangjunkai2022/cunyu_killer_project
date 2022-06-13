package com.github.florent37.assets_audio_player;

import android.content.Context;
import com.github.florent37.assets_audio_player.playerimplem.PlayerFinder;
import com.github.florent37.assets_audio_player.playerimplem.PlayerFinderConfiguration;
import com.github.florent37.assets_audio_player.playerimplem.PlayerImplem;
import com.tekartik.sqflite.Constant;
import io.flutter.plugin.common.MethodChannel;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Player.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "com.github.florent37.assets_audio_player.Player$open$1", f = "Player.kt", i = {}, l = {186}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class Player$open$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $assetAudioPackage;
    final /* synthetic */ String $assetAudioPath;
    final /* synthetic */ String $audioType;
    final /* synthetic */ boolean $autoStart;
    final /* synthetic */ Context $context;
    final /* synthetic */ Map<?, ?> $drmConfiguration;
    final /* synthetic */ Map<?, ?> $networkHeaders;
    final /* synthetic */ double $pitch;
    final /* synthetic */ double $playSpeed;
    final /* synthetic */ MethodChannel.Result $result;
    final /* synthetic */ Integer $seek;
    final /* synthetic */ double $volume;
    int label;
    final /* synthetic */ Player this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Player$open$1(String str, Player player, String str2, String str3, Map<?, ?> map, Context context, Map<?, ?> map2, double d, double d2, double d3, Integer num, boolean z, MethodChannel.Result result, Continuation<? super Player$open$1> continuation) {
        super(2, continuation);
        this.$assetAudioPath = str;
        this.this$0 = player;
        this.$assetAudioPackage = str2;
        this.$audioType = str3;
        this.$networkHeaders = map;
        this.$context = context;
        this.$drmConfiguration = map2;
        this.$volume = d;
        this.$playSpeed = d2;
        this.$pitch = d3;
        this.$seek = num;
        this.$autoStart = z;
        this.$result = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Player$open$1(this.$assetAudioPath, this.this$0, this.$assetAudioPackage, this.$audioType, this.$networkHeaders, this.$context, this.$drmConfiguration, this.$volume, this.$playSpeed, this.$pitch, this.$seek, this.$autoStart, this.$result, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((Player$open$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj2 = PlayerFinder.INSTANCE.findWorkingPlayer(new PlayerFinderConfiguration(this.$assetAudioPath, this.this$0.flutterAssets, this.$assetAudioPackage, this.$audioType, this.$networkHeaders, this.$context, new Function0<Unit>() { // from class: com.github.florent37.assets_audio_player.Player$open$1$playerWithDuration$1
                    @Override // kotlin.jvm.functions.Function0
                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        Player.this.stopWhenCall.stop();
                        Function0<Unit> onFinished = Player.this.getOnFinished();
                        if (onFinished != null) {
                            onFinished.invoke();
                        }
                    }
                }, this.this$0.getOnPlaying(), this.this$0.getOnBuffering(), this.this$0.getOnError(), this.$drmConfiguration), this);
                if (obj2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i == 1) {
                ResultKt.throwOnFailure(obj);
                obj2 = obj;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PlayerFinder.PlayerWithDuration playerWithDuration = (PlayerFinder.PlayerWithDuration) obj2;
            long duration = playerWithDuration.getDuration();
            this.this$0.mediaPlayer = playerWithDuration.getPlayer();
            Function1<Long, Unit> onReadyToPlay = this.this$0.getOnReadyToPlay();
            if (onReadyToPlay != null) {
                onReadyToPlay.invoke(Boxing.boxLong(duration));
            }
            PlayerImplem playerImplem = this.this$0.mediaPlayer;
            if (playerImplem != null) {
                final Player player = this.this$0;
                playerImplem.getSessionId(new Function1<Integer, Unit>() { // from class: com.github.florent37.assets_audio_player.Player$open$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                        invoke(num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i2) {
                        Function1<Integer, Unit> onSessionIdFound = Player.this.getOnSessionIdFound();
                        if (onSessionIdFound != null) {
                            onSessionIdFound.invoke(Integer.valueOf(i2));
                        }
                    }
                });
            }
            this.this$0._playingPath = this.$assetAudioPath;
            this.this$0._durationMs = duration;
            this.this$0.setVolume(this.$volume);
            this.this$0.setPlaySpeed(this.$playSpeed);
            this.this$0.setPitch(this.$pitch);
            Integer num = this.$seek;
            if (num != null) {
                Player player2 = this.this$0;
                Integer num2 = this.$seek;
                num.intValue();
                player2.seek(((long) num2.intValue()) * 1);
            }
            if (this.$autoStart) {
                this.this$0.play();
            } else {
                Player.updateNotif$default(this.this$0, false, 1, null);
            }
            this.$result.success(null);
        } catch (Throwable th) {
            th.printStackTrace();
            if (th instanceof PlayerFinder.NoPlayerFoundException) {
                PlayerFinder.NoPlayerFoundException noPlayerFoundException = th;
                if (noPlayerFoundException.getWhy() != null) {
                    this.$result.error("OPEN", noPlayerFoundException.getWhy().getMessage(), MapsKt.mapOf(TuplesKt.to("type", noPlayerFoundException.getWhy().getType()), TuplesKt.to(Constant.PARAM_ERROR_MESSAGE, noPlayerFoundException.getWhy().getMessage())));
                }
            }
            this.$result.error("OPEN", th.getMessage(), null);
        }
        return Unit.INSTANCE;
    }
}
