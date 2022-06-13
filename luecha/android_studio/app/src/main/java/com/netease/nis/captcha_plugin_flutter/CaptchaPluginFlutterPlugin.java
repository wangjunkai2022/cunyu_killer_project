package com.netease.nis.captcha_plugin_flutter;

import android.app.Activity;
import android.util.Log;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CaptchaPluginFlutterPlugin.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u00102\b\b\u0001\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0010H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016J\u0012\u0010\u0018\u001a\u00020\u00102\b\b\u0001\u0010\u0011\u001a\u00020\u0015H\u0016J\u001c\u0010\u0019\u001a\u00020\u00102\b\b\u0001\u0010\u001a\u001a\u00020\u001b2\b\b\u0001\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "()V", "EVENT_CHANNEL", "", "METHOD_CHANNEL", "callHandler", "Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;", "channel", "Lio/flutter/plugin/common/MethodChannel;", "mActivity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "onAttachedToActivity", "", "binding", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToEngine", "flutterPluginBinding", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromActivity", "onDetachedFromActivityForConfigChanges", "onDetachedFromEngine", "onMethodCall", "call", "Lio/flutter/plugin/common/MethodCall;", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "onReattachedToActivityForConfigChanges", "captcha_plugin_flutter_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class CaptchaPluginFlutterPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    private CaptchaHelper callHandler;
    private MethodChannel channel;
    private WeakReference<Activity> mActivity;
    private final String METHOD_CHANNEL = "yd_captcha_flutter_method_channel";
    private final String EVENT_CHANNEL = "yd_captcha_flutter_event_channel";

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "flutterPluginBinding");
        this.channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), this.METHOD_CHANNEL);
        MethodChannel methodChannel = this.channel;
        if (methodChannel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("channel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(this);
        this.callHandler = new CaptchaHelper();
        new EventChannel(flutterPluginBinding.getBinaryMessenger(), this.EVENT_CHANNEL).setStreamHandler(new EventChannel.StreamHandler() { // from class: com.netease.nis.captcha_plugin_flutter.CaptchaPluginFlutterPlugin$onAttachedToEngine$1
            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onCancel(Object obj) {
            }

            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onListen(Object obj, EventChannel.EventSink eventSink) {
                CaptchaHelper captchaHelper = CaptchaPluginFlutterPlugin.this.callHandler;
                if (captchaHelper != null) {
                    captchaHelper.setEvents(eventSink);
                }
            }
        });
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Activity activity;
        CaptchaHelper captchaHelper;
        Intrinsics.checkNotNullParameter(methodCall, "call");
        Intrinsics.checkNotNullParameter(result, "result");
        Log.i("CaptchaPlugin", Intrinsics.stringPlus("onMethodCall:", methodCall.method));
        String str = methodCall.method;
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != -256283360) {
                if (hashCode != 3237136) {
                    if (hashCode == 940726461 && str.equals("showCaptcha")) {
                        CaptchaHelper captchaHelper2 = this.callHandler;
                        if (captchaHelper2 != null) {
                            captchaHelper2.showCaptcha();
                            return;
                        }
                        return;
                    }
                } else if (str.equals("init")) {
                    WeakReference<Activity> weakReference = this.mActivity;
                    if (weakReference != null && (activity = weakReference.get()) != null && (captchaHelper = this.callHandler) != null) {
                        captchaHelper.init(activity, methodCall);
                        return;
                    }
                    return;
                }
            } else if (str.equals("destroyCaptcha")) {
                CaptchaHelper captchaHelper3 = this.callHandler;
                if (captchaHelper3 != null) {
                    captchaHelper3.destroy();
                    return;
                }
                return;
            }
        }
        result.notImplemented();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "binding");
        MethodChannel methodChannel = this.channel;
        if (methodChannel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("channel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        Intrinsics.checkNotNullParameter(activityPluginBinding, "binding");
        Log.i("CaptchaPlugin", Intrinsics.stringPlus("activity:", activityPluginBinding.getActivity()));
        this.mActivity = new WeakReference<>(activityPluginBinding.getActivity());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        Intrinsics.checkNotNullParameter(activityPluginBinding, "binding");
        this.mActivity = new WeakReference<>(activityPluginBinding.getActivity());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.mActivity = null;
    }
}
