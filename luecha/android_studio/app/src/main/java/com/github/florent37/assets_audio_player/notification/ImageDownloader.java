package com.github.florent37.assets_audio_player.notification;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: ImageDownloader.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J3\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\fJ%\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lcom/github/florent37/assets_audio_player/notification/ImageDownloader;", "", "()V", "manifestNotificationPlaceHolder", "", "getBitmap", "Landroid/graphics/Bitmap;", c.R, "Landroid/content/Context;", "fileType", "filePath", "filePackage", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadBitmap", "imageMetas", "Lcom/github/florent37/assets_audio_player/notification/ImageMetas;", "(Landroid/content/Context;Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadHolderBitmapFromManifest", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "assets_audio_player_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ImageDownloader {
    public static final ImageDownloader INSTANCE = new ImageDownloader();
    public static final String manifestNotificationPlaceHolder = "assets.audio.player.notification.place.holder";

    private ImageDownloader() {
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:2|(2:4|(5:6|8|28|(1:(1:11)(2:13|14))(4:15|(1:17)(1:18)|(2:22|(1:24))|27)|25))|7|8|28|(0)(0)|25) */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0061, code lost:
        java.lang.System.out.print(r9);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object loadBitmap(android.content.Context r9, com.github.florent37.assets_audio_player.notification.ImageMetas r10, kotlin.coroutines.Continuation<? super android.graphics.Bitmap> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof com.github.florent37.assets_audio_player.notification.ImageDownloader$loadBitmap$1
            if (r0 == 0) goto L_0x0014
            r0 = r11
            com.github.florent37.assets_audio_player.notification.ImageDownloader$loadBitmap$1 r0 = (com.github.florent37.assets_audio_player.notification.ImageDownloader$loadBitmap$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L_0x0014
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L_0x0019
        L_0x0014:
            com.github.florent37.assets_audio_player.notification.ImageDownloader$loadBitmap$1 r0 = new com.github.florent37.assets_audio_player.notification.ImageDownloader$loadBitmap$1
            r0.<init>(r11)
        L_0x0019:
            r6 = r0
            java.lang.Object r11 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r7 = 0
            r2 = 1
            if (r1 == 0) goto L_0x0036
            if (r1 != r2) goto L_0x002e
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: all -> 0x002c
            goto L_0x0060
        L_0x002c:
            r9 = move-exception
            goto L_0x0061
        L_0x002e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L_0x0036:
            kotlin.ResultKt.throwOnFailure(r11)
            if (r10 != 0) goto L_0x003d
            r11 = r7
            goto L_0x0041
        L_0x003d:
            java.lang.String r11 = r10.getImageType()
        L_0x0041:
            if (r11 == 0) goto L_0x0066
            java.lang.String r11 = r10.getImagePath()
            if (r11 == 0) goto L_0x0066
            java.lang.String r3 = r10.getImageType()     // Catch: all -> 0x002c
            java.lang.String r4 = r10.getImagePath()     // Catch: all -> 0x002c
            java.lang.String r5 = r10.getImagePackage()     // Catch: all -> 0x002c
            r6.label = r2     // Catch: all -> 0x002c
            r1 = r8
            r2 = r9
            java.lang.Object r11 = r1.getBitmap(r2, r3, r4, r5, r6)     // Catch: all -> 0x002c
            if (r11 != r0) goto L_0x0060
            return r0
        L_0x0060:
            return r11
        L_0x0061:
            java.io.PrintStream r10 = java.lang.System.out
            r10.print(r9)
        L_0x0066:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.florent37.assets_audio_player.notification.ImageDownloader.loadBitmap(android.content.Context, com.github.florent37.assets_audio_player.notification.ImageMetas, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object loadHolderBitmapFromManifest(Context context, Continuation<? super Bitmap> continuation) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager.g…ageManager.GET_META_DATA)");
            Object obj = applicationInfo.metaData.get(manifestNotificationPlaceHolder);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            if (num != null) {
                return BitmapFactory.decodeResource(context.getResources(), num.intValue());
            }
            throw new Exception("no " + num + " on AndroidManifest.xml");
        } catch (Throwable th) {
            System.out.print(th);
            return null;
        }
    }

    public final Object getBitmap(Context context, String str, String str2, String str3, Continuation<? super Bitmap> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ImageDownloader$getBitmap$2(str, str3, str2, context, null), continuation);
    }
}
