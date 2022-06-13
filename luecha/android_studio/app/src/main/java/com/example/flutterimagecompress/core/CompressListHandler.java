package com.example.flutterimagecompress.core;

import android.content.Context;
import com.umeng.analytics.pro.c;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CompressListHandler.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/example/flutterimagecompress/core/CompressListHandler;", "Lcom/example/flutterimagecompress/core/ResultHandler;", "call", "Lio/flutter/plugin/common/MethodCall;", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "handle", "", c.R, "Landroid/content/Context;", "flutter_image_compress_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class CompressListHandler extends ResultHandler {
    private final MethodCall call;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompressListHandler(MethodCall methodCall, MethodChannel.Result result) {
        super(result);
        Intrinsics.checkNotNullParameter(methodCall, "call");
        Intrinsics.checkNotNullParameter(result, "result");
        this.call = methodCall;
    }

    public final void handle(Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        ResultHandler.Companion.getThreadPool().execute(new Runnable(context) { // from class: com.example.flutterimagecompress.core.-$$Lambda$CompressListHandler$SNcdcU1Kp7VVsc9jcwr0kyjvMRc
            private final /* synthetic */ Context f$1;

            {
                this.f$1 = r2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                CompressListHandler.m13handle$lambda0(CompressListHandler.this, this.f$1);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: handle$lambda-0 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static final void m13handle$lambda0(com.example.flutterimagecompress.core.CompressListHandler r13, android.content.Context r14) {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "$context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            io.flutter.plugin.common.MethodCall r0 = r13.call
            java.lang.Object r0 = r0.arguments
            if (r0 == 0) goto L_0x00e1
            java.util.List r0 = (java.util.List) r0
            r1 = 0
            java.lang.Object r2 = r0.get(r1)
            r5 = r2
            byte[] r5 = (byte[]) r5
            r2 = 1
            java.lang.Object r2 = r0.get(r2)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            r3 = 2
            java.lang.Object r3 = r0.get(r3)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            r4 = 3
            java.lang.Object r4 = r0.get(r4)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r9 = r4.intValue()
            r4 = 4
            java.lang.Object r4 = r0.get(r4)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            r6 = 5
            java.lang.Object r6 = r0.get(r6)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            r7 = 6
            java.lang.Object r7 = r0.get(r7)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r8 = 7
            java.lang.Object r8 = r0.get(r8)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r11 = r8.booleanValue()
            r8 = 8
            java.lang.Object r0 = r0.get(r8)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r12 = r0.intValue()
            if (r6 == 0) goto L_0x007b
            com.example.flutterimagecompress.exif.Exif r0 = com.example.flutterimagecompress.exif.Exif.INSTANCE
            int r1 = r0.getRotationDegrees(r5)
        L_0x007b:
            r0 = 90
            if (r1 == r0) goto L_0x0085
            r0 = 270(0x10e, float:3.78E-43)
            if (r1 == r0) goto L_0x0085
            r8 = r3
            goto L_0x0087
        L_0x0085:
            r8 = r2
            r2 = r3
        L_0x0087:
            com.example.flutterimagecompress.format.FormatRegister r0 = com.example.flutterimagecompress.format.FormatRegister.INSTANCE
            com.example.flutterimagecompress.handle.FormatHandler r3 = r0.findFormat(r7)
            r0 = 0
            if (r3 != 0) goto L_0x0099
            java.lang.String r14 = "No support format."
            com.example.flutterimagecompress.logger.LogExtKt.log(r13, r14)
            r13.reply(r0)
            return
        L_0x0099:
            int r10 = r4 + r1
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream
            r1.<init>()
            r6 = r1
            java.io.OutputStream r6 = (java.io.OutputStream) r6     // Catch: CompressError -> 0x00c5, Exception -> 0x00b5, all -> 0x00b3
            r4 = r14
            r7 = r2
            r3.handleByteArray(r4, r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: CompressError -> 0x00c5, Exception -> 0x00b5, all -> 0x00b3
            byte[] r14 = r1.toByteArray()     // Catch: CompressError -> 0x00c5, Exception -> 0x00b5, all -> 0x00b3
            r13.reply(r14)     // Catch: CompressError -> 0x00c5, Exception -> 0x00b5, all -> 0x00b3
        L_0x00af:
            r1.close()
            goto L_0x00dc
        L_0x00b3:
            r13 = move-exception
            goto L_0x00dd
        L_0x00b5:
            r14 = move-exception
            com.example.flutterimagecompress.FlutterImageCompressPlugin$Companion r2 = com.example.flutterimagecompress.FlutterImageCompressPlugin.Companion     // Catch: all -> 0x00b3
            boolean r2 = r2.getShowLog()     // Catch: all -> 0x00b3
            if (r2 == 0) goto L_0x00c1
            r14.printStackTrace()     // Catch: all -> 0x00b3
        L_0x00c1:
            r13.reply(r0)     // Catch: all -> 0x00b3
            goto L_0x00af
        L_0x00c5:
            r14 = move-exception
            java.lang.String r2 = r14.getMessage()     // Catch: all -> 0x00b3
            com.example.flutterimagecompress.logger.LogExtKt.log(r13, r2)     // Catch: all -> 0x00b3
            com.example.flutterimagecompress.FlutterImageCompressPlugin$Companion r2 = com.example.flutterimagecompress.FlutterImageCompressPlugin.Companion     // Catch: all -> 0x00b3
            boolean r2 = r2.getShowLog()     // Catch: all -> 0x00b3
            if (r2 == 0) goto L_0x00d8
            r14.printStackTrace()     // Catch: all -> 0x00b3
        L_0x00d8:
            r13.reply(r0)     // Catch: all -> 0x00b3
            goto L_0x00af
        L_0x00dc:
            return
        L_0x00dd:
            r1.close()
            throw r13
        L_0x00e1:
            java.lang.NullPointerException r13 = new java.lang.NullPointerException
            java.lang.String r14 = "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.flutterimagecompress.core.CompressListHandler.m13handle$lambda0(com.example.flutterimagecompress.core.CompressListHandler, android.content.Context):void");
    }
}
