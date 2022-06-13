package io.flutter.plugin.common;

import io.flutter.Log;
import io.flutter.plugin.common.BinaryMessenger;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class MethodChannel {
    private static final String TAG = "MethodChannel#";
    private final MethodCodec codec;
    private final BinaryMessenger messenger;
    private final String name;
    private final BinaryMessenger.TaskQueue taskQueue;

    /* loaded from: classes2.dex */
    public interface MethodCallHandler {
        void onMethodCall(MethodCall methodCall, Result result);
    }

    /* loaded from: classes2.dex */
    public interface Result {
        void error(String str, String str2, Object obj);

        void notImplemented();

        void success(Object obj);
    }

    public MethodChannel(BinaryMessenger binaryMessenger, String str) {
        this(binaryMessenger, str, StandardMethodCodec.INSTANCE);
    }

    public MethodChannel(BinaryMessenger binaryMessenger, String str, MethodCodec methodCodec) {
        this(binaryMessenger, str, methodCodec, null);
    }

    public MethodChannel(BinaryMessenger binaryMessenger, String str, MethodCodec methodCodec, BinaryMessenger.TaskQueue taskQueue) {
        this.messenger = binaryMessenger;
        this.name = str;
        this.codec = methodCodec;
        this.taskQueue = taskQueue;
    }

    public void invokeMethod(String str, Object obj) {
        invokeMethod(str, obj, null);
    }

    public void invokeMethod(String str, Object obj, Result result) {
        IncomingResultHandler incomingResultHandler;
        BinaryMessenger binaryMessenger = this.messenger;
        String str2 = this.name;
        ByteBuffer encodeMethodCall = this.codec.encodeMethodCall(new MethodCall(str, obj));
        if (result == null) {
            incomingResultHandler = null;
        } else {
            incomingResultHandler = new IncomingResultHandler(result);
        }
        binaryMessenger.send(str2, encodeMethodCall, incomingResultHandler);
    }

    public void setMethodCallHandler(MethodCallHandler methodCallHandler) {
        IncomingMethodCallHandler incomingMethodCallHandler = null;
        if (this.taskQueue != null) {
            BinaryMessenger binaryMessenger = this.messenger;
            String str = this.name;
            if (methodCallHandler != null) {
                incomingMethodCallHandler = new IncomingMethodCallHandler(methodCallHandler);
            }
            binaryMessenger.setMessageHandler(str, incomingMethodCallHandler, this.taskQueue);
            return;
        }
        BinaryMessenger binaryMessenger2 = this.messenger;
        String str2 = this.name;
        if (methodCallHandler != null) {
            incomingMethodCallHandler = new IncomingMethodCallHandler(methodCallHandler);
        }
        binaryMessenger2.setMessageHandler(str2, incomingMethodCallHandler);
    }

    public void resizeChannelBuffer(int i) {
        BasicMessageChannel.resizeChannelBuffer(this.messenger, this.name, i);
    }

    /* loaded from: classes2.dex */
    public final class IncomingResultHandler implements BinaryMessenger.BinaryReply {
        private final Result callback;

        IncomingResultHandler(Result result) {
            MethodChannel.this = r1;
            this.callback = result;
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:5:0x0018
            	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1148)
            	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1019)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
            */
        @Override // io.flutter.plugin.common.BinaryMessenger.BinaryReply
        public void reply(java.nio.ByteBuffer r4) {
            /*
                r3 = this;
                if (r4 != 0) goto L_0x0008
                io.flutter.plugin.common.MethodChannel$Result r4 = r3.callback     // Catch: RuntimeException -> 0x0018
                r4.notImplemented()     // Catch: RuntimeException -> 0x0018
                goto L_0x0045
            L_0x0008:
                io.flutter.plugin.common.MethodChannel$Result r0 = r3.callback     // Catch: FlutterException -> 0x001a, RuntimeException -> 0x0018
                io.flutter.plugin.common.MethodChannel r1 = io.flutter.plugin.common.MethodChannel.this     // Catch: FlutterException -> 0x001a, RuntimeException -> 0x0018
                io.flutter.plugin.common.MethodCodec r1 = io.flutter.plugin.common.MethodChannel.access$000(r1)     // Catch: FlutterException -> 0x001a, RuntimeException -> 0x0018
                java.lang.Object r4 = r1.decodeEnvelope(r4)     // Catch: FlutterException -> 0x001a, RuntimeException -> 0x0018
                r0.success(r4)     // Catch: FlutterException -> 0x001a, RuntimeException -> 0x0018
                goto L_0x0045
            L_0x0018:
                r4 = move-exception
                goto L_0x0029
            L_0x001a:
                r4 = move-exception
                io.flutter.plugin.common.MethodChannel$Result r0 = r3.callback     // Catch: RuntimeException -> 0x0018
                java.lang.String r1 = r4.code     // Catch: RuntimeException -> 0x0018
                java.lang.String r2 = r4.getMessage()     // Catch: RuntimeException -> 0x0018
                java.lang.Object r4 = r4.details     // Catch: RuntimeException -> 0x0018
                r0.error(r1, r2, r4)     // Catch: RuntimeException -> 0x0018
                goto L_0x0045
            L_0x0029:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "MethodChannel#"
                r0.append(r1)
                io.flutter.plugin.common.MethodChannel r1 = io.flutter.plugin.common.MethodChannel.this
                java.lang.String r1 = io.flutter.plugin.common.MethodChannel.access$100(r1)
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                java.lang.String r1 = "Failed to handle method call result"
                io.flutter.Log.e(r0, r1, r4)
            L_0x0045:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugin.common.MethodChannel.IncomingResultHandler.reply(java.nio.ByteBuffer):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class IncomingMethodCallHandler implements BinaryMessenger.BinaryMessageHandler {
        private final MethodCallHandler handler;

        IncomingMethodCallHandler(MethodCallHandler methodCallHandler) {
            MethodChannel.this = r1;
            this.handler = methodCallHandler;
        }

        @Override // io.flutter.plugin.common.BinaryMessenger.BinaryMessageHandler
        public void onMessage(ByteBuffer byteBuffer, final BinaryMessenger.BinaryReply binaryReply) {
            try {
                this.handler.onMethodCall(MethodChannel.this.codec.decodeMethodCall(byteBuffer), new Result() { // from class: io.flutter.plugin.common.MethodChannel.IncomingMethodCallHandler.1
                    @Override // io.flutter.plugin.common.MethodChannel.Result
                    public void success(Object obj) {
                        binaryReply.reply(MethodChannel.this.codec.encodeSuccessEnvelope(obj));
                    }

                    @Override // io.flutter.plugin.common.MethodChannel.Result
                    public void error(String str, String str2, Object obj) {
                        binaryReply.reply(MethodChannel.this.codec.encodeErrorEnvelope(str, str2, obj));
                    }

                    @Override // io.flutter.plugin.common.MethodChannel.Result
                    public void notImplemented() {
                        binaryReply.reply(null);
                    }
                });
            } catch (RuntimeException e) {
                Log.e(MethodChannel.TAG + MethodChannel.this.name, "Failed to handle method call", e);
                binaryReply.reply(MethodChannel.this.codec.encodeErrorEnvelopeWithStacktrace("error", e.getMessage(), null, getStackTrace(e)));
            }
        }

        private String getStackTrace(Exception exc) {
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            return stringWriter.toString();
        }
    }
}
