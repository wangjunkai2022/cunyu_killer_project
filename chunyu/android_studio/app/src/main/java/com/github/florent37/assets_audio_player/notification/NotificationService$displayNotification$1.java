package com.github.florent37.assets_audio_player.notification;

import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.tencent.thumbplayer.api.TPOptionalID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NotificationService.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "com.github.florent37.assets_audio_player.notification.NotificationService$displayNotification$1", f = "NotificationService.kt", i = {}, l = {TPOptionalID.OPTION_ID_BEFORE_QUEUE_INT_SPECIAL_SEI_TYPES_CALLBACK, 146, 152}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class NotificationService$displayNotification$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ NotificationAction.Show $action;
    int label;
    final /* synthetic */ NotificationService this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationService$displayNotification$1(NotificationService notificationService, NotificationAction.Show show, Continuation<? super NotificationService$displayNotification$1> continuation) {
        super(2, continuation);
        this.this$0 = notificationService;
        this.$action = show;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NotificationService$displayNotification$1(this.this$0, this.$action, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NotificationService$displayNotification$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ae  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 3
            r3 = 2
            r4 = 1
            java.lang.String r5 = "applicationContext"
            if (r1 == 0) goto L_0x0028
            if (r1 == r4) goto L_0x0024
            if (r1 == r3) goto L_0x0020
            if (r1 != r2) goto L_0x0018
            kotlin.ResultKt.throwOnFailure(r9)
            goto L_0x00a0
        L_0x0018:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L_0x0020:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L_0x007b
        L_0x0024:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L_0x004c
        L_0x0028:
            kotlin.ResultKt.throwOnFailure(r9)
            com.github.florent37.assets_audio_player.notification.ImageDownloader r9 = com.github.florent37.assets_audio_player.notification.ImageDownloader.INSTANCE
            com.github.florent37.assets_audio_player.notification.NotificationService r1 = r8.this$0
            android.content.Context r1 = r1.getApplicationContext()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r5)
            com.github.florent37.assets_audio_player.notification.NotificationAction$Show r6 = r8.$action
            com.github.florent37.assets_audio_player.notification.AudioMetas r6 = r6.getAudioMetas()
            com.github.florent37.assets_audio_player.notification.ImageMetas r6 = r6.getImage()
            r7 = r8
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r8.label = r4
            java.lang.Object r9 = r9.loadBitmap(r1, r6, r7)
            if (r9 != r0) goto L_0x004c
            return r0
        L_0x004c:
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            if (r9 == 0) goto L_0x005a
            com.github.florent37.assets_audio_player.notification.NotificationService r0 = r8.this$0
            com.github.florent37.assets_audio_player.notification.NotificationAction$Show r1 = r8.$action
            com.github.florent37.assets_audio_player.notification.NotificationService.access$displayNotification(r0, r1, r9)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L_0x005a:
            com.github.florent37.assets_audio_player.notification.ImageDownloader r9 = com.github.florent37.assets_audio_player.notification.ImageDownloader.INSTANCE
            com.github.florent37.assets_audio_player.notification.NotificationService r1 = r8.this$0
            android.content.Context r1 = r1.getApplicationContext()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r5)
            com.github.florent37.assets_audio_player.notification.NotificationAction$Show r4 = r8.$action
            com.github.florent37.assets_audio_player.notification.AudioMetas r4 = r4.getAudioMetas()
            com.github.florent37.assets_audio_player.notification.ImageMetas r4 = r4.getImageOnLoadError()
            r6 = r8
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r8.label = r3
            java.lang.Object r9 = r9.loadBitmap(r1, r4, r6)
            if (r9 != r0) goto L_0x007b
            return r0
        L_0x007b:
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            if (r9 == 0) goto L_0x0089
            com.github.florent37.assets_audio_player.notification.NotificationService r0 = r8.this$0
            com.github.florent37.assets_audio_player.notification.NotificationAction$Show r1 = r8.$action
            com.github.florent37.assets_audio_player.notification.NotificationService.access$displayNotification(r0, r1, r9)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L_0x0089:
            com.github.florent37.assets_audio_player.notification.ImageDownloader r9 = com.github.florent37.assets_audio_player.notification.ImageDownloader.INSTANCE
            com.github.florent37.assets_audio_player.notification.NotificationService r1 = r8.this$0
            android.content.Context r1 = r1.getApplicationContext()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r5)
            r3 = r8
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r8.label = r2
            java.lang.Object r9 = r9.loadHolderBitmapFromManifest(r1, r3)
            if (r9 != r0) goto L_0x00a0
            return r0
        L_0x00a0:
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            if (r9 == 0) goto L_0x00ae
            com.github.florent37.assets_audio_player.notification.NotificationService r0 = r8.this$0
            com.github.florent37.assets_audio_player.notification.NotificationAction$Show r1 = r8.$action
            com.github.florent37.assets_audio_player.notification.NotificationService.access$displayNotification(r0, r1, r9)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L_0x00ae:
            com.github.florent37.assets_audio_player.notification.NotificationService r9 = r8.this$0
            com.github.florent37.assets_audio_player.notification.NotificationAction$Show r0 = r8.$action
            r1 = 0
            com.github.florent37.assets_audio_player.notification.NotificationService.access$displayNotification(r9, r0, r1)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.florent37.assets_audio_player.notification.NotificationService$displayNotification$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
