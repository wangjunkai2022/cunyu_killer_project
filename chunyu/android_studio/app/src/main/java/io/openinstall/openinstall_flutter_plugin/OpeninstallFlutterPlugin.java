package io.openinstall.openinstall_flutter_plugin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.appinstall.api.AppInstall;
import com.appinstall.api.Configuration;
import com.appinstall.api.listener.AppInstallAdapter;
import com.appinstall.api.listener.AppInstallRetryAdapter;
import com.appinstall.api.listener.AppWakeUpAdapter;
import com.appinstall.api.listener.AppWakeUpListener;
import com.appinstall.api.model.AppData;
import com.appinstall.api.model.Error;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class OpeninstallFlutterPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    private static final String METHOD_CONFIG = "config";
    private static final String METHOD_EFFECT_POINT = "reportEffectPoint";
    private static final String METHOD_INIT = "init";
    private static final String METHOD_INIT_PERMISSION = "initWithPermission";
    private static final String METHOD_INSTALL = "getInstall";
    private static final String METHOD_INSTALL_NOTIFICATION = "onInstallNotification";
    private static final String METHOD_INSTALL_RETRY = "getInstallCanRetry";
    private static final String METHOD_REGISTER = "reportRegister";
    private static final String METHOD_WAKEUP = "registerWakeup";
    private static final String METHOD_WAKEUP_NOTIFICATION = "onWakeupNotification";
    private static final String TAG = "OpenInstallPlugin";
    private ActivityPluginBinding activityPluginBinding;
    private FlutterPlugin.FlutterPluginBinding flutterPluginBinding;
    private MethodChannel channel = null;
    private Intent intentHolder = null;
    private volatile boolean initialized = false;
    private Configuration configuration = null;
    private boolean alwaysCallback = false;
    private final PluginRegistry.NewIntentListener newIntentListener = new PluginRegistry.NewIntentListener() { // from class: io.openinstall.openinstall_flutter_plugin.OpeninstallFlutterPlugin.4
        @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
        public boolean onNewIntent(Intent intent) {
            if (OpeninstallFlutterPlugin.this.initialized) {
                OpeninstallFlutterPlugin.this.wakeup(intent);
                return false;
            }
            OpeninstallFlutterPlugin.this.intentHolder = intent;
            return false;
        }
    };
    private final PluginRegistry.RequestPermissionsResultListener permissionsResultListener = new PluginRegistry.RequestPermissionsResultListener() { // from class: io.openinstall.openinstall_flutter_plugin.OpeninstallFlutterPlugin.7
        @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
        public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
            AppInstall.onRequestPermissionsResult(i, strArr, iArr);
            return false;
        }
    };

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.flutterPluginBinding = flutterPluginBinding;
        this.channel = new MethodChannel(this.flutterPluginBinding.getBinaryMessenger(), "openinstall_flutter_plugin");
        this.channel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.activityPluginBinding = activityPluginBinding;
        this.activityPluginBinding.addOnNewIntentListener(this.newIntentListener);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        long j;
        Log.d(TAG, "call method " + methodCall.method);
        if (METHOD_CONFIG.equalsIgnoreCase(methodCall.method)) {
            config((Boolean) methodCall.argument("adEnabled"), (String) methodCall.argument("oaid"), (String) methodCall.argument("gaid"), (Boolean) methodCall.argument("macDisabled"), (Boolean) methodCall.argument("imeiDisabled"));
            result.success("OK");
        } else if (METHOD_INIT.equalsIgnoreCase(methodCall.method)) {
            this.alwaysCallback = ((Boolean) methodCall.argument("alwaysCallback")).booleanValue();
            init();
            result.success("OK");
        } else if (METHOD_INIT_PERMISSION.equalsIgnoreCase(methodCall.method)) {
            Activity activity = this.activityPluginBinding.getActivity();
            if (activity != null) {
                initWithPermission(activity);
            } else {
                Log.d(TAG, "Activity is null, can't call initWithPermission");
                init();
            }
            result.success("OK");
        } else if (METHOD_WAKEUP.equalsIgnoreCase(methodCall.method)) {
            result.success("OK");
        } else {
            int i = 0;
            if (METHOD_INSTALL.equalsIgnoreCase(methodCall.method)) {
                Integer num = (Integer) methodCall.argument("seconds");
                AnonymousClass1 r0 = new AppInstallAdapter() { // from class: io.openinstall.openinstall_flutter_plugin.OpeninstallFlutterPlugin.1
                    @Override // com.appinstall.api.listener.AppInstallAdapter
                    public void onInstall(AppData appData) {
                        OpeninstallFlutterPlugin.this.channel.invokeMethod(OpeninstallFlutterPlugin.METHOD_INSTALL_NOTIFICATION, OpeninstallFlutterPlugin.data2Map(appData));
                    }
                };
                if (num != null) {
                    i = num.intValue();
                }
                AppInstall.getInstall(r0, i);
                result.success("OK");
            } else if (METHOD_INSTALL_RETRY.equalsIgnoreCase(methodCall.method)) {
                Integer num2 = (Integer) methodCall.argument("seconds");
                AnonymousClass2 r02 = new AppInstallRetryAdapter() { // from class: io.openinstall.openinstall_flutter_plugin.OpeninstallFlutterPlugin.2
                    @Override // com.appinstall.api.listener.AppInstallRetryAdapter
                    public void onInstall(AppData appData, boolean z) {
                        Map data2Map = OpeninstallFlutterPlugin.data2Map(appData);
                        data2Map.put("retry", String.valueOf(z));
                        OpeninstallFlutterPlugin.this.channel.invokeMethod(OpeninstallFlutterPlugin.METHOD_INSTALL_NOTIFICATION, data2Map);
                    }
                };
                if (num2 != null) {
                    i = num2.intValue();
                }
                AppInstall.getInstallCanRetry(r02, i);
                result.success("OK");
            } else if (METHOD_REGISTER.equalsIgnoreCase(methodCall.method)) {
                AppInstall.reportRegister();
                result.success("OK");
            } else if (METHOD_EFFECT_POINT.equalsIgnoreCase(methodCall.method)) {
                String str = (String) methodCall.argument("pointId");
                Integer num3 = (Integer) methodCall.argument("pointValue");
                if (num3 == null) {
                    j = 0;
                } else {
                    j = (long) num3.intValue();
                }
                AppInstall.reportEffectPoint(str, j);
                result.success("OK");
            } else {
                result.notImplemented();
            }
        }
    }

    private void config(Boolean bool, String str, String str2, Boolean bool2, Boolean bool3) {
        Configuration.Builder builder = new Configuration.Builder();
        builder.adEnabled(checkBoolean(bool));
        builder.oaid(str);
        builder.gaid(str2);
        if (checkBoolean(bool2)) {
            builder.macDisabled();
        }
        if (checkBoolean(bool3)) {
            builder.imeiDisabled();
        }
        this.configuration = builder.build();
    }

    private boolean checkBoolean(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private void init() {
        Context applicationContext = this.flutterPluginBinding.getApplicationContext();
        if (applicationContext != null) {
            AppInstall.init(applicationContext, this.configuration);
            this.initialized = true;
            Intent intent = this.intentHolder;
            if (intent == null) {
                Activity activity = this.activityPluginBinding.getActivity();
                if (activity != null) {
                    wakeup(activity.getIntent());
                    return;
                }
                return;
            }
            wakeup(intent);
            this.intentHolder = null;
            return;
        }
        Log.d(TAG, "Context is null, can not init AppInstall");
    }

    private void initWithPermission(final Activity activity) {
        if (activity != null) {
            this.activityPluginBinding.addRequestPermissionsResultListener(this.permissionsResultListener);
            AppInstall.initWithPermission(activity, this.configuration, new Runnable() { // from class: io.openinstall.openinstall_flutter_plugin.OpeninstallFlutterPlugin.3
                @Override // java.lang.Runnable
                public void run() {
                    OpeninstallFlutterPlugin.this.activityPluginBinding.removeRequestPermissionsResultListener(OpeninstallFlutterPlugin.this.permissionsResultListener);
                    OpeninstallFlutterPlugin.this.initialized = true;
                    if (OpeninstallFlutterPlugin.this.intentHolder == null) {
                        OpeninstallFlutterPlugin.this.wakeup(activity.getIntent());
                        return;
                    }
                    OpeninstallFlutterPlugin openinstallFlutterPlugin = OpeninstallFlutterPlugin.this;
                    openinstallFlutterPlugin.wakeup(openinstallFlutterPlugin.intentHolder);
                    OpeninstallFlutterPlugin.this.intentHolder = null;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wakeup(Intent intent) {
        if (this.alwaysCallback) {
            AppInstall.getWakeUpAlwaysCallback(intent, new AppWakeUpListener() { // from class: io.openinstall.openinstall_flutter_plugin.OpeninstallFlutterPlugin.5
                @Override // com.appinstall.api.listener.AppWakeUpListener
                public void onWakeUpFinish(AppData appData, Error error) {
                    if (error != null) {
                        Log.d(OpeninstallFlutterPlugin.TAG, "getWakeUpAlwaysCallback : " + error.toString());
                    }
                    OpeninstallFlutterPlugin.this.channel.invokeMethod(OpeninstallFlutterPlugin.METHOD_WAKEUP_NOTIFICATION, OpeninstallFlutterPlugin.data2Map(appData));
                }
            });
        } else {
            AppInstall.getWakeUp(intent, new AppWakeUpAdapter() { // from class: io.openinstall.openinstall_flutter_plugin.OpeninstallFlutterPlugin.6
                @Override // com.appinstall.api.listener.AppWakeUpAdapter
                public void onWakeUp(AppData appData) {
                    OpeninstallFlutterPlugin.this.channel.invokeMethod(OpeninstallFlutterPlugin.METHOD_WAKEUP_NOTIFICATION, OpeninstallFlutterPlugin.data2Map(appData));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, String> data2Map(AppData appData) {
        HashMap hashMap = new HashMap();
        if (appData != null) {
            hashMap.put("channelCode", appData.getChannel());
            hashMap.put("bindData", appData.getData());
        }
        return hashMap;
    }
}
