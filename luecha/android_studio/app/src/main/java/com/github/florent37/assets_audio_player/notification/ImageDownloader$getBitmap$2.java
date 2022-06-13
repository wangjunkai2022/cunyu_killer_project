package com.github.florent37.assets_audio_player.notification;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.github.florent37.assets_audio_player.Player;
import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.loader.FlutterLoader;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: ImageDownloader.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "com.github.florent37.assets_audio_player.notification.ImageDownloader$getBitmap$2", f = "ImageDownloader.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
final class ImageDownloader$getBitmap$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ String $filePackage;
    final /* synthetic */ String $filePath;
    final /* synthetic */ String $fileType;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageDownloader$getBitmap$2(String str, String str2, String str3, Context context, Continuation<? super ImageDownloader$getBitmap$2> continuation) {
        super(2, continuation);
        this.$fileType = str;
        this.$filePackage = str2;
        this.$filePath = str3;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ImageDownloader$getBitmap$2(this.$fileType, this.$filePackage, this.$filePath, this.$context, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
        return ((ImageDownloader$getBitmap$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String str2 = this.$fileType;
            String str3 = this.$filePackage;
            String str4 = this.$filePath;
            Context context = this.$context;
            this.L$0 = str2;
            this.L$1 = str3;
            this.L$2 = str4;
            this.L$3 = context;
            this.label = 1;
            ImageDownloader$getBitmap$2 imageDownloader$getBitmap$2 = this;
            SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(imageDownloader$getBitmap$2));
            SafeContinuation safeContinuation2 = safeContinuation;
            try {
                if (Intrinsics.areEqual(str2, "asset")) {
                    FlutterLoader flutterLoader = FlutterInjector.instance().flutterLoader();
                    Intrinsics.checkNotNullExpressionValue(flutterLoader, "instance().flutterLoader()");
                    if (str3 == null) {
                        str = flutterLoader.getLookupKeyForAsset(str4);
                    } else {
                        str = flutterLoader.getLookupKeyForAsset(str4, str3);
                    }
                    Glide.with(context).asBitmap().timeout(5000).load(Uri.parse(Intrinsics.stringPlus("file:///android_asset/", str))).into((RequestBuilder) new CustomTarget<Bitmap>(safeContinuation2, str4) { // from class: com.github.florent37.assets_audio_player.notification.ImageDownloader$getBitmap$2$1$1
                        final /* synthetic */ Continuation<Bitmap> $continuation;
                        final /* synthetic */ String $filePath;

                        @Override // com.bumptech.glide.request.target.Target
                        public void onLoadCleared(Drawable drawable) {
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            this.$continuation = r1;
                            this.$filePath = r2;
                        }

                        @Override // com.bumptech.glide.request.target.Target
                        public /* bridge */ /* synthetic */ void onResourceReady(Object obj2, Transition transition) {
                            onResourceReady((Bitmap) obj2, (Transition<? super Bitmap>) transition);
                        }

                        @Override // com.bumptech.glide.request.target.CustomTarget, com.bumptech.glide.request.target.Target
                        public void onLoadFailed(Drawable drawable) {
                            Continuation<Bitmap> continuation = this.$continuation;
                            Result.Companion companion = Result.Companion;
                            continuation.resumeWith(Result.m44constructorimpl(ResultKt.createFailure(new Exception(Intrinsics.stringPlus("failed to download ", this.$filePath)))));
                        }

                        public void onResourceReady(Bitmap bitmap, Transition<? super Bitmap> transition) {
                            Intrinsics.checkNotNullParameter(bitmap, "resource");
                            Continuation<Bitmap> continuation = this.$continuation;
                            Result.Companion companion = Result.Companion;
                            continuation.resumeWith(Result.m44constructorimpl(bitmap));
                        }
                    });
                } else if (Intrinsics.areEqual(str2, Player.AUDIO_TYPE_NETWORK)) {
                    Glide.with(context).asBitmap().timeout(5000).load(str4).into((RequestBuilder) new CustomTarget<Bitmap>(context, safeContinuation2, str4) { // from class: com.github.florent37.assets_audio_player.notification.ImageDownloader$getBitmap$2$1$2
                        final /* synthetic */ Context $context;
                        final /* synthetic */ Continuation<Bitmap> $continuation;
                        final /* synthetic */ String $filePath;

                        @Override // com.bumptech.glide.request.target.Target
                        public void onLoadCleared(Drawable drawable) {
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            this.$context = r1;
                            this.$continuation = r2;
                            this.$filePath = r3;
                        }

                        @Override // com.bumptech.glide.request.target.Target
                        public /* bridge */ /* synthetic */ void onResourceReady(Object obj2, Transition transition) {
                            onResourceReady((Bitmap) obj2, (Transition<? super Bitmap>) transition);
                        }

                        @Override // com.bumptech.glide.request.target.CustomTarget, com.bumptech.glide.request.target.Target
                        public void onLoadFailed(Drawable drawable) {
                            try {
                                ApplicationInfo applicationInfo = this.$context.getPackageManager().getApplicationInfo(this.$context.getPackageName(), 128);
                                Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager.g…ageManager.GET_META_DATA)");
                                Object obj2 = applicationInfo.metaData.get(ImageDownloader.manifestNotificationPlaceHolder);
                                Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                                if (num == null) {
                                    Continuation<Bitmap> continuation = this.$continuation;
                                    Result.Companion companion = Result.Companion;
                                    continuation.resumeWith(Result.m44constructorimpl(ResultKt.createFailure(new Exception(Intrinsics.stringPlus("failed to download ", this.$filePath)))));
                                    return;
                                }
                                Bitmap decodeResource = BitmapFactory.decodeResource(this.$context.getResources(), num.intValue());
                                Continuation<Bitmap> continuation2 = this.$continuation;
                                Result.Companion companion2 = Result.Companion;
                                continuation2.resumeWith(Result.m44constructorimpl(decodeResource));
                            } catch (Throwable unused) {
                                Continuation<Bitmap> continuation3 = this.$continuation;
                                Result.Companion companion3 = Result.Companion;
                                continuation3.resumeWith(Result.m44constructorimpl(ResultKt.createFailure(new Exception(Intrinsics.stringPlus("failed to download ", this.$filePath)))));
                            }
                        }

                        public void onResourceReady(Bitmap bitmap, Transition<? super Bitmap> transition) {
                            Intrinsics.checkNotNullParameter(bitmap, "resource");
                            Continuation<Bitmap> continuation = this.$continuation;
                            Result.Companion companion = Result.Companion;
                            continuation.resumeWith(Result.m44constructorimpl(bitmap));
                        }
                    });
                } else {
                    Glide.with(context).asBitmap().timeout(5000).load(new File(str4).getPath()).into((RequestBuilder) new CustomTarget<Bitmap>(context, safeContinuation2, str4) { // from class: com.github.florent37.assets_audio_player.notification.ImageDownloader$getBitmap$2$1$3
                        final /* synthetic */ Context $context;
                        final /* synthetic */ Continuation<Bitmap> $continuation;
                        final /* synthetic */ String $filePath;

                        @Override // com.bumptech.glide.request.target.Target
                        public void onLoadCleared(Drawable drawable) {
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            this.$context = r1;
                            this.$continuation = r2;
                            this.$filePath = r3;
                        }

                        @Override // com.bumptech.glide.request.target.Target
                        public /* bridge */ /* synthetic */ void onResourceReady(Object obj2, Transition transition) {
                            onResourceReady((Bitmap) obj2, (Transition<? super Bitmap>) transition);
                        }

                        @Override // com.bumptech.glide.request.target.CustomTarget, com.bumptech.glide.request.target.Target
                        public void onLoadFailed(Drawable drawable) {
                            try {
                                ApplicationInfo applicationInfo = this.$context.getPackageManager().getApplicationInfo(this.$context.getPackageName(), 128);
                                Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager.g…ageManager.GET_META_DATA)");
                                Object obj2 = applicationInfo.metaData.get(ImageDownloader.manifestNotificationPlaceHolder);
                                Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                                if (num == null) {
                                    Continuation<Bitmap> continuation = this.$continuation;
                                    Result.Companion companion = Result.Companion;
                                    continuation.resumeWith(Result.m44constructorimpl(ResultKt.createFailure(new Exception(Intrinsics.stringPlus("failed to download ", this.$filePath)))));
                                    return;
                                }
                                Bitmap decodeResource = BitmapFactory.decodeResource(this.$context.getResources(), num.intValue());
                                Continuation<Bitmap> continuation2 = this.$continuation;
                                Result.Companion companion2 = Result.Companion;
                                continuation2.resumeWith(Result.m44constructorimpl(decodeResource));
                            } catch (Throwable unused) {
                                Continuation<Bitmap> continuation3 = this.$continuation;
                                Result.Companion companion3 = Result.Companion;
                                continuation3.resumeWith(Result.m44constructorimpl(ResultKt.createFailure(new Exception(Intrinsics.stringPlus("failed to download ", this.$filePath)))));
                            }
                        }

                        public void onResourceReady(Bitmap bitmap, Transition<? super Bitmap> transition) {
                            Intrinsics.checkNotNullParameter(bitmap, "resource");
                            Continuation<Bitmap> continuation = this.$continuation;
                            Result.Companion companion = Result.Companion;
                            continuation.resumeWith(Result.m44constructorimpl(bitmap));
                        }
                    });
                }
            } catch (Throwable th) {
                th.printStackTrace();
                Result.Companion companion = Result.Companion;
                safeContinuation2.resumeWith(Result.m44constructorimpl(ResultKt.createFailure(th)));
            }
            obj = safeContinuation.getOrThrow();
            if (obj == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(imageDownloader$getBitmap$2);
            }
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i == 1) {
            Context context2 = (Context) this.L$3;
            String str5 = (String) this.L$2;
            String str6 = (String) this.L$1;
            String str7 = (String) this.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return obj;
    }
}
