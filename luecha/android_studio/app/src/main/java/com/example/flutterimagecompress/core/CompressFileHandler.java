package com.example.flutterimagecompress.core;

import android.content.Context;
import com.example.flutterimagecompress.FlutterImageCompressPlugin;
import com.example.flutterimagecompress.exif.Exif;
import com.example.flutterimagecompress.format.FormatRegister;
import com.example.flutterimagecompress.handle.FormatHandler;
import com.example.flutterimagecompress.logger.LogExtKt;
import com.umeng.analytics.pro.c;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CompressFileHandler.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/example/flutterimagecompress/core/CompressFileHandler;", "Lcom/example/flutterimagecompress/core/ResultHandler;", "call", "Lio/flutter/plugin/common/MethodCall;", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "handle", "", c.R, "Landroid/content/Context;", "handleGetFile", "flutter_image_compress_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class CompressFileHandler extends ResultHandler {
    private final MethodCall call;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompressFileHandler(MethodCall methodCall, MethodChannel.Result result) {
        super(result);
        Intrinsics.checkNotNullParameter(methodCall, "call");
        Intrinsics.checkNotNullParameter(result, "result");
        this.call = methodCall;
    }

    public final void handle(Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        ResultHandler.Companion.getThreadPool().execute(new Runnable(context) { // from class: com.example.flutterimagecompress.core.-$$Lambda$CompressFileHandler$10DLAIe-9l-ymy--q9wejb25oKg
            private final /* synthetic */ Context f$1;

            {
                this.f$1 = r2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                CompressFileHandler.m9handle$lambda0(CompressFileHandler.this, this.f$1);
            }
        });
    }

    /* renamed from: handle$lambda-0 */
    public static final void m9handle$lambda0(CompressFileHandler compressFileHandler, Context context) {
        int i;
        ByteArrayOutputStream byteArrayOutputStream;
        Intrinsics.checkNotNullParameter(compressFileHandler, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        Object obj = compressFileHandler.call.arguments;
        if (obj != null) {
            List list = (List) obj;
            int i2 = 0;
            String str = (String) list.get(0);
            int intValue = ((Integer) list.get(1)).intValue();
            int intValue2 = ((Integer) list.get(2)).intValue();
            int intValue3 = ((Integer) list.get(3)).intValue();
            int intValue4 = ((Integer) list.get(4)).intValue();
            boolean booleanValue = ((Boolean) list.get(5)).booleanValue();
            int intValue5 = ((Integer) list.get(6)).intValue();
            boolean booleanValue2 = ((Boolean) list.get(7)).booleanValue();
            int intValue6 = ((Integer) list.get(8)).intValue();
            int intValue7 = ((Integer) list.get(9)).intValue();
            FormatHandler findFormat = FormatRegister.INSTANCE.findFormat(intValue5);
            if (findFormat == null) {
                LogExtKt.log(compressFileHandler, "No support format.");
                compressFileHandler.reply(null);
                return;
            }
            if (booleanValue) {
                i2 = Exif.INSTANCE.getRotationDegrees(FilesKt.readBytes(new File(str)));
            }
            if (i2 == 90 || i2 == 270) {
                i = intValue;
            } else {
                i = intValue2;
                intValue2 = intValue;
            }
            try {
                int i3 = intValue4 + i2;
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    findFormat.handleFile(context, str, byteArrayOutputStream, intValue2, i, intValue3, i3, booleanValue2, intValue6, intValue7);
                    compressFileHandler.reply(byteArrayOutputStream.toByteArray());
                } catch (Exception e) {
                    if (FlutterImageCompressPlugin.Companion.getShowLog()) {
                        e.printStackTrace();
                    }
                    compressFileHandler.reply(null);
                }
            } finally {
                byteArrayOutputStream.close();
            }
        } else {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
        }
    }

    public final void handleGetFile(Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        ResultHandler.Companion.getThreadPool().execute(new Runnable(context) { // from class: com.example.flutterimagecompress.core.-$$Lambda$CompressFileHandler$o5P4Agkaq-MTJWgjE0ux4K8-TC0
            private final /* synthetic */ Context f$1;

            {
                this.f$1 = r2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                CompressFileHandler.m10handleGetFile$lambda1(CompressFileHandler.this, this.f$1);
            }
        });
    }

    /* renamed from: handleGetFile$lambda-1 */
    public static final void m10handleGetFile$lambda1(CompressFileHandler compressFileHandler, Context context) {
        int i;
        Throwable th;
        int i2;
        FileOutputStream fileOutputStream;
        Exception e;
        Intrinsics.checkNotNullParameter(compressFileHandler, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        Object obj = compressFileHandler.call.arguments;
        if (obj != null) {
            List list = (List) obj;
            int i3 = 0;
            String str = (String) list.get(0);
            int intValue = ((Integer) list.get(1)).intValue();
            int intValue2 = ((Integer) list.get(2)).intValue();
            int intValue3 = ((Integer) list.get(3)).intValue();
            String str2 = (String) list.get(4);
            int intValue4 = ((Integer) list.get(5)).intValue();
            if (((Boolean) list.get(6)).booleanValue()) {
                i3 = Exif.INSTANCE.getRotationDegrees(FilesKt.readBytes(new File(str)));
            }
            int intValue5 = ((Integer) list.get(7)).intValue();
            boolean booleanValue = ((Boolean) list.get(8)).booleanValue();
            int intValue6 = ((Integer) list.get(9)).intValue();
            int intValue7 = ((Integer) list.get(10)).intValue();
            FormatHandler findFormat = FormatRegister.INSTANCE.findFormat(intValue5);
            OutputStream outputStream = null;
            if (findFormat == null) {
                LogExtKt.log(compressFileHandler, "No support format.");
                compressFileHandler.reply(null);
                return;
            }
            if (i3 == 90 || i3 == 270) {
                i = intValue;
            } else {
                i = intValue2;
                intValue2 = intValue;
            }
            try {
                i2 = intValue4 + i3;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                fileOutputStream = new FileOutputStream(new File(str2));
                try {
                    findFormat.handleFile(context, str, fileOutputStream, intValue2, i, intValue3, i2, booleanValue, intValue6, intValue7);
                    compressFileHandler.reply(str2);
                } catch (Exception e2) {
                    e = e2;
                    if (FlutterImageCompressPlugin.Companion.getShowLog()) {
                        e.printStackTrace();
                    }
                    compressFileHandler.reply(null);
                    if (fileOutputStream == null) {
                        return;
                    }
                    fileOutputStream.close();
                    return;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                if (0 != 0) {
                    outputStream.close();
                }
                throw th;
            }
            fileOutputStream.close();
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
    }
}
