package com.lyokone.location;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.lyokone.location.FlutterLocationService;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class LocationPlugin implements FlutterPlugin, ActivityAware {
    private static final String TAG = "LocationPlugin";
    private ActivityPluginBinding activityBinding;
    private FlutterLocationService locationService;
    private MethodCallHandlerImpl methodCallHandler;
    private final ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.lyokone.location.LocationPlugin.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d("LocationPlugin", "Service connected: " + componentName);
            LocationPlugin.this.initialize(((FlutterLocationService.LocalBinder) iBinder).getService());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d("LocationPlugin", "Service disconnected:" + componentName);
        }
    };
    private StreamHandlerImpl streamHandlerImpl;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.methodCallHandler = new MethodCallHandlerImpl();
        this.methodCallHandler.startListening(flutterPluginBinding.getBinaryMessenger());
        this.streamHandlerImpl = new StreamHandlerImpl();
        this.streamHandlerImpl.startListening(flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodCallHandlerImpl methodCallHandlerImpl = this.methodCallHandler;
        if (methodCallHandlerImpl != null) {
            methodCallHandlerImpl.stopListening();
            this.methodCallHandler = null;
        }
        StreamHandlerImpl streamHandlerImpl = this.streamHandlerImpl;
        if (streamHandlerImpl != null) {
            streamHandlerImpl.stopListening();
            this.streamHandlerImpl = null;
        }
    }

    private void attachToActivity(ActivityPluginBinding activityPluginBinding) {
        this.activityBinding = activityPluginBinding;
        this.activityBinding.getActivity().bindService(new Intent(activityPluginBinding.getActivity(), FlutterLocationService.class), this.serviceConnection, 1);
    }

    private void detachActivity() {
        dispose();
        this.activityBinding.getActivity().unbindService(this.serviceConnection);
        this.activityBinding = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        attachToActivity(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        detachActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        detachActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        attachToActivity(activityPluginBinding);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialize(FlutterLocationService flutterLocationService) {
        this.locationService = flutterLocationService;
        this.locationService.setActivity(this.activityBinding.getActivity());
        this.activityBinding.addActivityResultListener(this.locationService.getLocationActivityResultListener());
        this.activityBinding.addRequestPermissionsResultListener(this.locationService.getLocationRequestPermissionsResultListener());
        this.activityBinding.addRequestPermissionsResultListener(this.locationService.getServiceRequestPermissionsResultListener());
        this.methodCallHandler.setLocation(this.locationService.getLocation());
        this.methodCallHandler.setLocationService(this.locationService);
        this.streamHandlerImpl.setLocation(this.locationService.getLocation());
    }

    private void dispose() {
        this.streamHandlerImpl.setLocation(null);
        this.methodCallHandler.setLocationService(null);
        this.methodCallHandler.setLocation(null);
        this.activityBinding.removeRequestPermissionsResultListener(this.locationService.getServiceRequestPermissionsResultListener());
        this.activityBinding.removeRequestPermissionsResultListener(this.locationService.getLocationRequestPermissionsResultListener());
        this.activityBinding.removeActivityResultListener(this.locationService.getLocationActivityResultListener());
        this.locationService.setActivity(null);
        this.locationService = null;
    }
}
