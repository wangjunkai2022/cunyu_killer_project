package com.example.flutterimagecompress;

import android.content.Context;
import android.os.Build;
import com.example.flutterimagecompress.core.CompressFileHandler;
import com.example.flutterimagecompress.core.CompressListHandler;
import com.example.flutterimagecompress.format.FormatRegister;
import com.example.flutterimagecompress.handle.common.CommonHandler;
import com.example.flutterimagecompress.handle.heif.HeifHandler;
import com.umeng.analytics.pro.c;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FlutterImageCompressPlugin.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00182\u00020\u00012\u00020\u0002:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "()V", "channel", "Lio/flutter/plugin/common/MethodChannel;", "getChannel", "()Lio/flutter/plugin/common/MethodChannel;", "setChannel", "(Lio/flutter/plugin/common/MethodChannel;)V", c.R, "Landroid/content/Context;", "handleLog", "", "call", "Lio/flutter/plugin/common/MethodCall;", "onAttachedToEngine", "", "binding", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromEngine", "onMethodCall", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "Companion", "flutter_image_compress_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FlutterImageCompressPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    public static final Companion Companion = new Companion(null);
    private static boolean showLog;
    private MethodChannel channel;
    private Context context;

    @JvmStatic
    public static final void registerWith(PluginRegistry.Registrar registrar) {
        Companion.registerWith(registrar);
    }

    public FlutterImageCompressPlugin() {
        FormatRegister.INSTANCE.registerFormat(new CommonHandler(0));
        FormatRegister.INSTANCE.registerFormat(new CommonHandler(1));
        FormatRegister.INSTANCE.registerFormat(new HeifHandler());
        FormatRegister.INSTANCE.registerFormat(new CommonHandler(3));
    }

    public final MethodChannel getChannel() {
        return this.channel;
    }

    public final void setChannel(MethodChannel methodChannel) {
        this.channel = methodChannel;
    }

    /* compiled from: FlutterImageCompressPlugin.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;", "", "()V", "showLog", "", "getShowLog", "()Z", "setShowLog", "(Z)V", "registerWith", "", "registrar", "Lio/flutter/plugin/common/PluginRegistry$Registrar;", "flutter_image_compress_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
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
            FlutterImageCompressPlugin flutterImageCompressPlugin = new FlutterImageCompressPlugin();
            flutterImageCompressPlugin.setChannel(new MethodChannel(registrar.messenger(), "flutter_image_compress"));
            Context context = registrar.context();
            Intrinsics.checkNotNullExpressionValue(context, "registrar.context()");
            flutterImageCompressPlugin.context = context;
            MethodChannel channel = flutterImageCompressPlugin.getChannel();
            if (channel != null) {
                channel.setMethodCallHandler(flutterImageCompressPlugin);
            }
        }

        public final boolean getShowLog() {
            return FlutterImageCompressPlugin.showLog;
        }

        public final void setShowLog(boolean z) {
            FlutterImageCompressPlugin.showLog = z;
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Intrinsics.checkNotNullParameter(methodCall, "call");
        Intrinsics.checkNotNullParameter(result, "result");
        String str = methodCall.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -129880033:
                    if (str.equals("compressWithFileAndGetFile")) {
                        CompressFileHandler compressFileHandler = new CompressFileHandler(methodCall, result);
                        Context context = this.context;
                        if (context == null) {
                            Intrinsics.throwUninitializedPropertyAccessException(c.R);
                            context = null;
                        }
                        compressFileHandler.handleGetFile(context);
                        return;
                    }
                    break;
                case 86054116:
                    if (str.equals("compressWithFile")) {
                        CompressFileHandler compressFileHandler2 = new CompressFileHandler(methodCall, result);
                        Context context2 = this.context;
                        if (context2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException(c.R);
                            context2 = null;
                        }
                        compressFileHandler2.handle(context2);
                        return;
                    }
                    break;
                case 86233094:
                    if (str.equals("compressWithList")) {
                        CompressListHandler compressListHandler = new CompressListHandler(methodCall, result);
                        Context context3 = this.context;
                        if (context3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException(c.R);
                            context3 = null;
                        }
                        compressListHandler.handle(context3);
                        return;
                    }
                    break;
                case 1262746611:
                    if (str.equals("getSystemVersion")) {
                        result.success(Integer.valueOf(Build.VERSION.SDK_INT));
                        return;
                    }
                    break;
                case 2067272455:
                    if (str.equals("showLog")) {
                        result.success(Integer.valueOf(handleLog(methodCall)));
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }

    private final int handleLog(MethodCall methodCall) {
        Companion companion = Companion;
        showLog = Intrinsics.areEqual((Object) ((Boolean) methodCall.arguments()), (Object) true);
        return 1;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "binding");
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "binding.applicationContext");
        this.context = applicationContext;
        this.channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_image_compress");
        MethodChannel methodChannel = this.channel;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(this);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "binding");
        MethodChannel methodChannel = this.channel;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.channel = null;
    }
}
