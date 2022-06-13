package io.flutter.embedding.engine.systemchannels;

import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;

/* loaded from: classes2.dex */
public class MouseCursorChannel {
    private static final String TAG = "MouseCursorChannel";
    public final MethodChannel channel;
    private MouseCursorMethodHandler mouseCursorMethodHandler;
    private final MethodChannel.MethodCallHandler parsingMethodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.MouseCursorChannel.1
        /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
            return;
         */
        @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
        /* Code decompiled incorrectly, please refer to instructions dump */
        public void onMethodCall(io.flutter.plugin.common.MethodCall r7, io.flutter.plugin.common.MethodChannel.Result r8) {
            /*
                r6 = this;
                java.lang.String r0 = "error"
                io.flutter.embedding.engine.systemchannels.MouseCursorChannel r1 = io.flutter.embedding.engine.systemchannels.MouseCursorChannel.this
                io.flutter.embedding.engine.systemchannels.MouseCursorChannel$MouseCursorMethodHandler r1 = io.flutter.embedding.engine.systemchannels.MouseCursorChannel.access$000(r1)
                if (r1 != 0) goto L_0x000b
                return
            L_0x000b:
                java.lang.String r1 = r7.method
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Received '"
                r2.append(r3)
                r2.append(r1)
                java.lang.String r3 = "' message."
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                java.lang.String r3 = "MouseCursorChannel"
                io.flutter.Log.v(r3, r2)
                r2 = -1
                r3 = 0
                int r4 = r1.hashCode()     // Catch: Exception -> 0x0078
                r5 = -1307105544(0xffffffffb21726f8, float:-8.798217E-9)
                if (r4 == r5) goto L_0x0034
                goto L_0x003d
            L_0x0034:
                java.lang.String r4 = "activateSystemCursor"
                boolean r1 = r1.equals(r4)     // Catch: Exception -> 0x0078
                if (r1 == 0) goto L_0x003d
                r2 = 0
            L_0x003d:
                if (r2 == 0) goto L_0x0040
                goto L_0x0091
            L_0x0040:
                java.lang.Object r7 = r7.arguments     // Catch: Exception -> 0x0078
                java.util.HashMap r7 = (java.util.HashMap) r7     // Catch: Exception -> 0x0078
                java.lang.String r1 = "kind"
                java.lang.Object r7 = r7.get(r1)     // Catch: Exception -> 0x0078
                java.lang.String r7 = (java.lang.String) r7     // Catch: Exception -> 0x0078
                io.flutter.embedding.engine.systemchannels.MouseCursorChannel r1 = io.flutter.embedding.engine.systemchannels.MouseCursorChannel.this     // Catch: Exception -> 0x005e
                io.flutter.embedding.engine.systemchannels.MouseCursorChannel$MouseCursorMethodHandler r1 = io.flutter.embedding.engine.systemchannels.MouseCursorChannel.access$000(r1)     // Catch: Exception -> 0x005e
                r1.activateSystemCursor(r7)     // Catch: Exception -> 0x005e
                r7 = 1
                java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: Exception -> 0x0078
                r8.success(r7)     // Catch: Exception -> 0x0078
                goto L_0x0091
            L_0x005e:
                r7 = move-exception
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: Exception -> 0x0078
                r1.<init>()     // Catch: Exception -> 0x0078
                java.lang.String r2 = "Error when setting cursors: "
                r1.append(r2)     // Catch: Exception -> 0x0078
                java.lang.String r7 = r7.getMessage()     // Catch: Exception -> 0x0078
                r1.append(r7)     // Catch: Exception -> 0x0078
                java.lang.String r7 = r1.toString()     // Catch: Exception -> 0x0078
                r8.error(r0, r7, r3)     // Catch: Exception -> 0x0078
                goto L_0x0091
            L_0x0078:
                r7 = move-exception
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Unhandled error: "
                r1.append(r2)
                java.lang.String r7 = r7.getMessage()
                r1.append(r7)
                java.lang.String r7 = r1.toString()
                r8.error(r0, r7, r3)
            L_0x0091:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.MouseCursorChannel.AnonymousClass1.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
        }
    };

    /* loaded from: classes2.dex */
    public interface MouseCursorMethodHandler {
        void activateSystemCursor(String str);
    }

    public MouseCursorChannel(DartExecutor dartExecutor) {
        this.channel = new MethodChannel(dartExecutor, "flutter/mousecursor", StandardMethodCodec.INSTANCE);
        this.channel.setMethodCallHandler(this.parsingMethodCallHandler);
    }

    public void setMethodHandler(MouseCursorMethodHandler mouseCursorMethodHandler) {
        this.mouseCursorMethodHandler = mouseCursorMethodHandler;
    }

    public void synthesizeMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        this.parsingMethodCallHandler.onMethodCall(methodCall, result);
    }
}
