package com.zaihui.installplugin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.core.content.FileProvider;
import com.umeng.analytics.pro.c;
import com.zaihui.installplugin.InstallPlugin;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.io.File;
import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InstallPlugin.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0001#B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J&\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u001c\u0010\u0013\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u001a\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/zaihui/installplugin/InstallPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "()V", "apkFile", "Ljava/io/File;", "appId", "", "methodChannel", "Lio/flutter/plugin/common/MethodChannel;", "canRequestPackageInstalls", "", "activity", "Landroid/app/Activity;", "install24", "", c.R, "Landroid/content/Context;", "file", "installApk", "filePath", "installBelow24", "onAttachedToEngine", "applicationContext", "messenger", "Lio/flutter/plugin/common/BinaryMessenger;", "binding", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromEngine", "onMethodCall", "call", "Lio/flutter/plugin/common/MethodCall;", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "showSettingPackageInstall", "Companion", "install_plugin_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class InstallPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    public static final Companion Companion = new Companion(null);
    private static final int installRequestCode = 1234;
    private static PluginRegistry.Registrar test;
    private File apkFile;
    private String appId;
    private MethodChannel methodChannel;

    @JvmStatic
    public static final void registerWith(PluginRegistry.Registrar registrar) {
        Companion.registerWith(registrar);
    }

    /* compiled from: InstallPlugin.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/zaihui/installplugin/InstallPlugin$Companion;", "", "()V", "installRequestCode", "", "test", "Lio/flutter/plugin/common/PluginRegistry$Registrar;", "registerWith", "", "registrar", "install_plugin_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final void registerWith(PluginRegistry.Registrar registrar) {
            Intrinsics.checkNotNullParameter(registrar, "registrar");
            InstallPlugin installPlugin = new InstallPlugin();
            InstallPlugin.test = registrar;
            Context context = registrar.context();
            Intrinsics.checkNotNullExpressionValue(context, "registrar.context()");
            BinaryMessenger messenger = registrar.messenger();
            Intrinsics.checkNotNullExpressionValue(messenger, "registrar.messenger()");
            installPlugin.onAttachedToEngine(context, messenger);
            registrar.addActivityResultListener(new PluginRegistry.ActivityResultListener(registrar) { // from class: com.zaihui.installplugin.-$$Lambda$InstallPlugin$Companion$muLSUibY_L4dNJUDfdUPrBUwC1o
                private final /* synthetic */ PluginRegistry.Registrar f$1;

                {
                    this.f$1 = r2;
                }

                @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
                public final boolean onActivityResult(int i, int i2, Intent intent) {
                    return InstallPlugin.Companion.m38registerWith$lambda0(InstallPlugin.this, this.f$1, i, i2, intent);
                }
            });
        }

        /* renamed from: registerWith$lambda-0 */
        public static final boolean m38registerWith$lambda0(InstallPlugin installPlugin, PluginRegistry.Registrar registrar, int i, int i2, Intent intent) {
            Intrinsics.checkNotNullParameter(installPlugin, "$instance");
            Intrinsics.checkNotNullParameter(registrar, "$registrar");
            Log.d("ActivityResultListener", "requestCode=" + i + ", resultCode = " + i2 + ", intent = " + intent);
            if (i2 != -1 || i != 1234) {
                return false;
            }
            installPlugin.install24(registrar.context(), installPlugin.apkFile, installPlugin.appId);
            return true;
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Intrinsics.checkNotNullParameter(methodCall, "call");
        Intrinsics.checkNotNullParameter(result, "result");
        String str = methodCall.method;
        if (Intrinsics.areEqual(str, "getPlatformVersion")) {
            result.success(Intrinsics.stringPlus("Android ", Build.VERSION.RELEASE));
        } else if (Intrinsics.areEqual(str, "installApk")) {
            String str2 = (String) methodCall.argument("filePath");
            String str3 = (String) methodCall.argument("appId");
            Log.d("android plugin", "installApk " + ((Object) str2) + ' ' + ((Object) str3));
            try {
                installApk(str2, str3);
                result.success("Success");
            } catch (Throwable th) {
                result.error(th.getClass().getSimpleName(), th.getMessage(), null);
            }
        } else {
            result.notImplemented();
        }
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
        MethodChannel methodChannel = this.methodChannel;
        Intrinsics.checkNotNull(methodChannel);
        methodChannel.setMethodCallHandler(null);
        this.methodChannel = null;
    }

    public final void onAttachedToEngine(Context context, BinaryMessenger binaryMessenger) {
        this.methodChannel = new MethodChannel(binaryMessenger, "install_plugin");
        MethodChannel methodChannel = this.methodChannel;
        Intrinsics.checkNotNull(methodChannel);
        methodChannel.setMethodCallHandler(this);
    }

    private final void installApk(String str, String str2) {
        if (str != null) {
            PluginRegistry.Registrar registrar = test;
            Intrinsics.checkNotNull(registrar);
            Activity activity = registrar.activity();
            if (activity != null) {
                File file = new File(str);
                if (!file.exists()) {
                    throw new FileNotFoundException(Intrinsics.stringPlus(str, " is not exist! or check permission"));
                } else if (Build.VERSION.SDK_INT < 24) {
                    installBelow24(activity, file);
                } else if (canRequestPackageInstalls(activity)) {
                    install24(activity, file, str2);
                } else {
                    showSettingPackageInstall(activity);
                    this.apkFile = file;
                    this.appId = str2;
                }
            } else {
                throw new NullPointerException("context is null!");
            }
        } else {
            throw new NullPointerException("fillPath is null!");
        }
    }

    private final void showSettingPackageInstall(Activity activity) {
        if (Build.VERSION.SDK_INT >= 26) {
            Log.d("SettingPackageInstall", ">= Build.VERSION_CODES.O");
            Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
            intent.setData(Uri.parse(Intrinsics.stringPlus("package:", activity.getPackageName())));
            activity.startActivityForResult(intent, 1234);
            return;
        }
        throw new RuntimeException("VERSION.SDK_INT < O");
    }

    private final boolean canRequestPackageInstalls(Activity activity) {
        return Build.VERSION.SDK_INT <= 26 || activity.getPackageManager().canRequestPackageInstalls();
    }

    private final void installBelow24(Context context, File file) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        context.startActivity(intent);
    }

    public final void install24(Context context, File file, String str) {
        if (context == null) {
            throw new NullPointerException("context is null!");
        } else if (file == null) {
            throw new NullPointerException("file is null!");
        } else if (str != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.addFlags(1);
            Uri uriForFile = FileProvider.getUriForFile(context, Intrinsics.stringPlus(str, ".fileProvider.install"), file);
            Intrinsics.checkNotNullExpressionValue(uriForFile, "getUriForFile(context, \"…eProvider.install\", file)");
            intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
            context.startActivity(intent);
        } else {
            throw new NullPointerException("appId is null!");
        }
    }
}
