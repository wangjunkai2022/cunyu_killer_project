package com.example.imagegallerysaver;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: ImageGallerySaverPlugin.kt */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 $2\u00020\u00012\u00020\u0002:\u0001$B\u0005¢\u0006\u0002\u0010\u0003J\u001e\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J:\u0010\u001a\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001bj\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001c`\u001d2\u0006\u0010\u001e\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002JB\u0010\u001f\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001bj\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001c`\u001d2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/example/imagegallerysaver/ImageGallerySaverPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "()V", "applicationContext", "Landroid/content/Context;", "methodChannel", "Lio/flutter/plugin/common/MethodChannel;", "generateUri", "Landroid/net/Uri;", "extension", "", "name", "getMIMEType", "onAttachedToEngine", "", "messenger", "Lio/flutter/plugin/common/BinaryMessenger;", "binding", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromEngine", "onMethodCall", "call", "Lio/flutter/plugin/common/MethodCall;", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "saveFileToGallery", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "filePath", "saveImageToGallery", "bmp", "Landroid/graphics/Bitmap;", "quality", "", "Companion", "image_gallery_saver_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ImageGallerySaverPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    public static final Companion Companion = new Companion(null);
    private Context applicationContext;
    private MethodChannel methodChannel;

    @JvmStatic
    public static final void registerWith(PluginRegistry.Registrar registrar) {
        Companion.registerWith(registrar);
    }

    /* compiled from: ImageGallerySaverPlugin.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/example/imagegallerysaver/ImageGallerySaverPlugin$Companion;", "", "()V", "registerWith", "", "registrar", "Lio/flutter/plugin/common/PluginRegistry$Registrar;", "image_gallery_saver_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final void registerWith(PluginRegistry.Registrar registrar) {
            Intrinsics.checkNotNullParameter(registrar, "registrar");
            ImageGallerySaverPlugin imageGallerySaverPlugin = new ImageGallerySaverPlugin();
            Context context = registrar.context();
            Intrinsics.checkNotNullExpressionValue(context, "registrar.context()");
            BinaryMessenger messenger = registrar.messenger();
            Intrinsics.checkNotNullExpressionValue(messenger, "registrar.messenger()");
            imageGallerySaverPlugin.onAttachedToEngine(context, messenger);
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Integer num;
        Intrinsics.checkNotNullParameter(methodCall, "call");
        Intrinsics.checkNotNullParameter(result, "result");
        if (Intrinsics.areEqual(methodCall.method, "saveImageToGallery")) {
            byte[] bArr = (byte[]) methodCall.argument("imageBytes");
            if (bArr != null && (num = (Integer) methodCall.argument("quality")) != null) {
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                Intrinsics.checkNotNullExpressionValue(decodeByteArray, "decodeByteArray(image, 0, image.size)");
                result.success(saveImageToGallery(decodeByteArray, num.intValue(), (String) methodCall.argument("name")));
            }
        } else if (Intrinsics.areEqual(methodCall.method, "saveFileToGallery")) {
            String str = (String) methodCall.argument("file");
            if (str != null) {
                result.success(saveFileToGallery(str, (String) methodCall.argument("name")));
            }
        } else {
            result.notImplemented();
        }
    }

    static /* synthetic */ Uri generateUri$default(ImageGallerySaverPlugin imageGallerySaverPlugin, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return imageGallerySaverPlugin.generateUri(str, str2);
    }

    private final Uri generateUri(String str, String str2) {
        ContentResolver contentResolver;
        if (str2 == null) {
            str2 = String.valueOf(System.currentTimeMillis());
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 29) {
            Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", str2);
            contentValues.put("relative_path", Environment.DIRECTORY_PICTURES);
            String mIMEType = getMIMEType(str);
            Uri uri2 = null;
            if (!TextUtils.isEmpty(mIMEType)) {
                contentValues.put("mime_type", mIMEType);
                Intrinsics.checkNotNull(mIMEType);
                if (StringsKt.startsWith$default(mIMEType, "video", false, 2, (Object) null)) {
                    uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    contentValues.put("relative_path", Environment.DIRECTORY_MOVIES);
                }
            }
            Context context = this.applicationContext;
            if (!(context == null || (contentResolver = context.getContentResolver()) == null)) {
                uri2 = contentResolver.insert(uri, contentValues);
            }
            Intrinsics.checkNotNull(uri2);
            Intrinsics.checkNotNullExpressionValue(uri2, "applicationContext?.cont…er?.insert(uri, values)!!");
            return uri2;
        }
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + ((Object) File.separator) + ((Object) Environment.DIRECTORY_PICTURES));
        if (!file.exists()) {
            file.mkdir();
        }
        if (str.length() > 0) {
            z = true;
        }
        if (z) {
            str2 = str2 + '.' + str;
        }
        Uri fromFile = Uri.fromFile(new File(file, str2));
        Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(File(appDir, fileName))");
        return fromFile;
    }

    private final String getMIMEType(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        if (str != null) {
            String lowerCase = str.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
            return singleton.getMimeTypeFromExtension(lowerCase);
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private final java.util.HashMap<java.lang.String, java.lang.Object> saveImageToGallery(android.graphics.Bitmap r8, int r9, java.lang.String r10) {
        /*
            r7 = this;
            android.content.Context r0 = r7.applicationContext
            java.lang.String r1 = "jpg"
            android.net.Uri r10 = r7.generateUri(r1, r10)
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L_0x000e
        L_0x000c:
            r3 = r2
            goto L_0x0019
        L_0x000e:
            android.content.ContentResolver r3 = r0.getContentResolver()     // Catch: IOException -> 0x006d
            if (r3 != 0) goto L_0x0015
            goto L_0x000c
        L_0x0015:
            java.io.OutputStream r3 = r3.openOutputStream(r10)     // Catch: IOException -> 0x006d
        L_0x0019:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)     // Catch: IOException -> 0x006d
            java.lang.String r4 = "context?.contentResolver…enOutputStream(fileUri)!!"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)     // Catch: IOException -> 0x006d
            java.io.PrintStream r4 = java.lang.System.out     // Catch: IOException -> 0x006d
            java.lang.String r5 = "ImageGallerySaverPlugin "
            java.lang.Integer r6 = java.lang.Integer.valueOf(r9)     // Catch: IOException -> 0x006d
            java.lang.String r5 = kotlin.jvm.internal.Intrinsics.stringPlus(r5, r6)     // Catch: IOException -> 0x006d
            r4.println(r5)     // Catch: IOException -> 0x006d
            android.graphics.Bitmap$CompressFormat r4 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: IOException -> 0x006d
            r8.compress(r4, r9, r3)     // Catch: IOException -> 0x006d
            r3.flush()     // Catch: IOException -> 0x006d
            r3.close()     // Catch: IOException -> 0x006d
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)     // Catch: IOException -> 0x006d
            android.content.Intent r9 = new android.content.Intent     // Catch: IOException -> 0x006d
            java.lang.String r3 = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
            r9.<init>(r3, r10)     // Catch: IOException -> 0x006d
            r0.sendBroadcast(r9)     // Catch: IOException -> 0x006d
            r8.recycle()     // Catch: IOException -> 0x006d
            com.example.imagegallerysaver.SaveResultModel r8 = new com.example.imagegallerysaver.SaveResultModel     // Catch: IOException -> 0x006d
            java.lang.String r9 = r10.toString()     // Catch: IOException -> 0x006d
            java.lang.String r0 = "fileUri.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r0)     // Catch: IOException -> 0x006d
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9     // Catch: IOException -> 0x006d
            int r9 = r9.length()     // Catch: IOException -> 0x006d
            if (r9 <= 0) goto L_0x0060
            r9 = 1
            goto L_0x0061
        L_0x0060:
            r9 = r1
        L_0x0061:
            java.lang.String r10 = r10.toString()     // Catch: IOException -> 0x006d
            r8.<init>(r9, r10, r2)     // Catch: IOException -> 0x006d
            java.util.HashMap r8 = r8.toHashMap()     // Catch: IOException -> 0x006d
            goto L_0x007b
        L_0x006d:
            r8 = move-exception
            com.example.imagegallerysaver.SaveResultModel r9 = new com.example.imagegallerysaver.SaveResultModel
            java.lang.String r8 = r8.toString()
            r9.<init>(r1, r2, r8)
            java.util.HashMap r8 = r9.toHashMap()
        L_0x007b:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.imagegallerysaver.ImageGallerySaverPlugin.saveImageToGallery(android.graphics.Bitmap, int, java.lang.String):java.util.HashMap");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0037 A[Catch: IOException -> 0x0073, LOOP:0: B:11:0x0031->B:13:0x0037, LOOP_END, TryCatch #0 {IOException -> 0x0073, blocks: (B:3:0x0004, B:6:0x0015, B:9:0x001c, B:10:0x0020, B:11:0x0031, B:13:0x0037, B:14:0x003b, B:18:0x0067), top: B:22:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003b A[EDGE_INSN: B:24:0x003b->B:14:0x003b ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private final java.util.HashMap<java.lang.String, java.lang.Object> saveFileToGallery(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.applicationContext
            r1 = 0
            r2 = 0
            java.io.File r3 = new java.io.File     // Catch: IOException -> 0x0073
            r3.<init>(r7)     // Catch: IOException -> 0x0073
            java.lang.String r7 = kotlin.io.FilesKt.getExtension(r3)     // Catch: IOException -> 0x0073
            android.net.Uri r7 = r6.generateUri(r7, r8)     // Catch: IOException -> 0x0073
            if (r0 != 0) goto L_0x0015
        L_0x0013:
            r8 = r2
            goto L_0x0020
        L_0x0015:
            android.content.ContentResolver r8 = r0.getContentResolver()     // Catch: IOException -> 0x0073
            if (r8 != 0) goto L_0x001c
            goto L_0x0013
        L_0x001c:
            java.io.OutputStream r8 = r8.openOutputStream(r7)     // Catch: IOException -> 0x0073
        L_0x0020:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)     // Catch: IOException -> 0x0073
            java.lang.String r4 = "context?.contentResolver…enOutputStream(fileUri)!!"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r4)     // Catch: IOException -> 0x0073
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: IOException -> 0x0073
            r4.<init>(r3)     // Catch: IOException -> 0x0073
            r3 = 10240(0x2800, float:1.4349E-41)
            byte[] r3 = new byte[r3]     // Catch: IOException -> 0x0073
        L_0x0031:
            int r5 = r4.read(r3)     // Catch: IOException -> 0x0073
            if (r5 <= 0) goto L_0x003b
            r8.write(r3, r1, r5)     // Catch: IOException -> 0x0073
            goto L_0x0031
        L_0x003b:
            r8.flush()     // Catch: IOException -> 0x0073
            r8.close()     // Catch: IOException -> 0x0073
            r4.close()     // Catch: IOException -> 0x0073
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)     // Catch: IOException -> 0x0073
            android.content.Intent r8 = new android.content.Intent     // Catch: IOException -> 0x0073
            java.lang.String r3 = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
            r8.<init>(r3, r7)     // Catch: IOException -> 0x0073
            r0.sendBroadcast(r8)     // Catch: IOException -> 0x0073
            com.example.imagegallerysaver.SaveResultModel r8 = new com.example.imagegallerysaver.SaveResultModel     // Catch: IOException -> 0x0073
            java.lang.String r0 = r7.toString()     // Catch: IOException -> 0x0073
            java.lang.String r3 = "fileUri.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)     // Catch: IOException -> 0x0073
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: IOException -> 0x0073
            int r0 = r0.length()     // Catch: IOException -> 0x0073
            if (r0 <= 0) goto L_0x0066
            r0 = 1
            goto L_0x0067
        L_0x0066:
            r0 = r1
        L_0x0067:
            java.lang.String r7 = r7.toString()     // Catch: IOException -> 0x0073
            r8.<init>(r0, r7, r2)     // Catch: IOException -> 0x0073
            java.util.HashMap r7 = r8.toHashMap()     // Catch: IOException -> 0x0073
            goto L_0x0081
        L_0x0073:
            r7 = move-exception
            com.example.imagegallerysaver.SaveResultModel r8 = new com.example.imagegallerysaver.SaveResultModel
            java.lang.String r7 = r7.toString()
            r8.<init>(r1, r2, r7)
            java.util.HashMap r7 = r8.toHashMap()
        L_0x0081:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.imagegallerysaver.ImageGallerySaverPlugin.saveFileToGallery(java.lang.String, java.lang.String):java.util.HashMap");
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "binding");
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "binding.applicationContext");
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        Intrinsics.checkNotNullExpressionValue(binaryMessenger, "binding.binaryMessenger");
        onAttachedToEngine(applicationContext, binaryMessenger);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "binding");
        this.applicationContext = null;
        MethodChannel methodChannel = this.methodChannel;
        Intrinsics.checkNotNull(methodChannel);
        methodChannel.setMethodCallHandler(null);
        this.methodChannel = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAttachedToEngine(Context context, BinaryMessenger binaryMessenger) {
        this.applicationContext = context;
        this.methodChannel = new MethodChannel(binaryMessenger, "image_gallery_saver");
        MethodChannel methodChannel = this.methodChannel;
        Intrinsics.checkNotNull(methodChannel);
        methodChannel.setMethodCallHandler(this);
    }
}
