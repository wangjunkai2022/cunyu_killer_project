package com.crazecoder.openfile;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.crazecoder.openfile.utils.JsonUtil;
import com.crazecoder.openfile.utils.MapUtil;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
public class OpenFilePlugin implements MethodChannel.MethodCallHandler, FlutterPlugin, ActivityAware, PluginRegistry.RequestPermissionsResultListener, PluginRegistry.ActivityResultListener {
    private static final int REQUEST_CODE = 33432;
    private static final int RESULT_CODE = 18;
    private static final String TYPE_STRING_APK = "application/vnd.android.package-archive";
    private Activity activity;
    private MethodChannel channel;
    private Context context;
    private String filePath;
    private FlutterPlugin.FlutterPluginBinding flutterPluginBinding;
    private boolean isResultSubmitted = false;
    private MethodChannel.Result result;
    private String typeString;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }

    @Deprecated
    public static void registerWith(PluginRegistry.Registrar registrar) {
        OpenFilePlugin openFilePlugin = new OpenFilePlugin();
        openFilePlugin.activity = registrar.activity();
        openFilePlugin.context = registrar.context();
        openFilePlugin.channel = new MethodChannel(registrar.messenger(), "open_file");
        openFilePlugin.channel.setMethodCallHandler(openFilePlugin);
        registrar.addRequestPermissionsResultListener(openFilePlugin);
        registrar.addActivityResultListener(openFilePlugin);
    }

    private boolean hasPermission(String str) {
        return ContextCompat.checkSelfPermission(this.activity, str) == 0;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        this.isResultSubmitted = false;
        if (methodCall.method.equals("open_file")) {
            this.filePath = (String) methodCall.argument("file_path");
            this.result = result;
            if (!methodCall.hasArgument("type") || methodCall.argument("type") == null) {
                this.typeString = getFileType(this.filePath);
            } else {
                this.typeString = (String) methodCall.argument("type");
            }
            if (!pathRequiresPermission()) {
                startActivity();
            } else if (!hasPermission("android.permission.READ_EXTERNAL_STORAGE")) {
                ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, REQUEST_CODE);
            } else if (TYPE_STRING_APK.equals(this.typeString)) {
                openApkFile();
            } else {
                startActivity();
            }
        } else {
            result.notImplemented();
            this.isResultSubmitted = true;
        }
    }

    private boolean pathRequiresPermission() {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        try {
            return true ^ new File(this.filePath).getCanonicalPath().startsWith(new File(this.context.getApplicationInfo().dataDir).getCanonicalPath());
        } catch (IOException e) {
            e.printStackTrace();
            return true;
        }
    }

    private void startActivity() {
        String str;
        String str2 = this.filePath;
        int i = -4;
        if (str2 == null) {
            result(-4, "the file path cannot be null");
            return;
        }
        File file = new File(str2);
        if (!file.exists()) {
            result(-2, "the " + this.filePath + " file does not exists");
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        if (TYPE_STRING_APK.equals(this.typeString)) {
            intent.setFlags(268435456);
        } else {
            intent.setFlags(536870912);
        }
        intent.addCategory("android.intent.category.DEFAULT");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.addFlags(1);
            String packageName = this.context.getPackageName();
            intent.setDataAndType(FileProvider.getUriForFile(this.context, packageName + ".fileProvider.com.crazecoder.openfile", new File(this.filePath)), this.typeString);
        } else {
            intent.setDataAndType(Uri.fromFile(file), this.typeString);
        }
        try {
            this.activity.startActivity(intent);
            str = "done";
            i = 0;
        } catch (ActivityNotFoundException unused) {
            i = -1;
            str = "No APP found to open this file。";
        } catch (Exception unused2) {
            str = "File opened incorrectly。";
        }
        result(i, str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0349, code lost:
        if (r9.equals("torrent") != false) goto L_0x034d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private java.lang.String getFileType(java.lang.String r9) {
        /*
        // Method dump skipped, instructions count: 1428
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crazecoder.openfile.OpenFilePlugin.getFileType(java.lang.String):java.lang.String");
    }

    private void openApkFile() {
        if (canInstallApk()) {
            startActivity();
        } else if (Build.VERSION.SDK_INT >= 26) {
            startInstallPermissionSettingActivity();
        } else {
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.REQUEST_INSTALL_PACKAGES"}, REQUEST_CODE);
        }
    }

    private boolean canInstallApk() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.activity.getPackageManager().canRequestPackageInstalls();
        }
        return hasPermission("android.permission.REQUEST_INSTALL_PACKAGES");
    }

    private void startInstallPermissionSettingActivity() {
        if (this.activity != null) {
            this.activity.startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + this.activity.getPackageName())), 18);
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != REQUEST_CODE) {
            return false;
        }
        if (!hasPermission("android.permission.READ_EXTERNAL_STORAGE") || !TYPE_STRING_APK.equals(this.typeString)) {
            for (String str : strArr) {
                if (!hasPermission(str)) {
                    result(-3, "Permission denied: " + str);
                    return false;
                }
            }
            startActivity();
            return true;
        }
        openApkFile();
        return false;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (i != 18) {
            return false;
        }
        if (canInstallApk()) {
            startActivity();
            return false;
        }
        result(-3, "Permission denied: android.permission.REQUEST_INSTALL_PACKAGES");
        return false;
    }

    private void result(int i, String str) {
        if (this.result != null && !this.isResultSubmitted) {
            this.result.success(JsonUtil.toJson(MapUtil.createMap(i, str)));
            this.isResultSubmitted = true;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.flutterPluginBinding = flutterPluginBinding;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.channel = new MethodChannel(this.flutterPluginBinding.getBinaryMessenger(), "open_file");
        this.context = this.flutterPluginBinding.getApplicationContext();
        this.activity = activityPluginBinding.getActivity();
        this.channel.setMethodCallHandler(this);
        activityPluginBinding.addRequestPermissionsResultListener(this);
        activityPluginBinding.addActivityResultListener(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        MethodChannel methodChannel = this.channel;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
            this.channel = null;
            this.flutterPluginBinding = null;
        }
    }
}
