package com.netease.nis.captcha_plugin_flutter;

import io.flutter.plugin.common.EventChannel;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: CaptchaHelper.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "com.netease.nis.captcha_plugin_flutter.CaptchaHelper$captchaListener$1$onValidate$1", f = "CaptchaHelper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class CaptchaHelper$captchaListener$1$onValidate$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ HashMap<String, Object> $data;
    int label;
    final /* synthetic */ CaptchaHelper this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CaptchaHelper$captchaListener$1$onValidate$1(CaptchaHelper captchaHelper, HashMap<String, Object> hashMap, Continuation<? super CaptchaHelper$captchaListener$1$onValidate$1> continuation) {
        super(2, continuation);
        this.this$0 = captchaHelper;
        this.$data = hashMap;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CaptchaHelper$captchaListener$1$onValidate$1(this.this$0, this.$data, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CaptchaHelper$captchaListener$1$onValidate$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            EventChannel.EventSink events = this.this$0.getEvents();
            if (events != null) {
                events.success(this.$data);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
