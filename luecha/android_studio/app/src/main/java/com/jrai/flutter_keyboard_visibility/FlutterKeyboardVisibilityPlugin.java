package com.jrai.flutter_keyboard_visibility;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FlutterKeyboardVisibilityPlugin implements FlutterPlugin, ActivityAware, EventChannel.StreamHandler, ViewTreeObserver.OnGlobalLayoutListener {
    private EventChannel.EventSink eventSink;
    private boolean isVisible;
    private View mainView;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        init(flutterPluginBinding.getBinaryMessenger());
    }

    private void init(BinaryMessenger binaryMessenger) {
        new EventChannel(binaryMessenger, "flutter_keyboard_visibility").setStreamHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        unregisterListener();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        listenForKeyboard(activityPluginBinding.getActivity());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        unregisterListener();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        listenForKeyboard(activityPluginBinding.getActivity());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        unregisterListener();
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.eventSink = eventSink;
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        this.eventSink = null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.mainView != null) {
            Rect rect = new Rect();
            this.mainView.getWindowVisibleDisplayFrame(rect);
            boolean z = ((double) rect.height()) / ((double) this.mainView.getRootView().getHeight()) < 0.85d;
            if (z != this.isVisible) {
                this.isVisible = z;
                EventChannel.EventSink eventSink = this.eventSink;
                if (eventSink != null) {
                    eventSink.success(Integer.valueOf(this.isVisible ? 1 : 0));
                }
            }
        }
    }

    private void listenForKeyboard(Activity activity) {
        this.mainView = activity.findViewById(16908290);
        this.mainView.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    private void unregisterListener() {
        View view = this.mainView;
        if (view != null) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.mainView = null;
        }
    }
}
