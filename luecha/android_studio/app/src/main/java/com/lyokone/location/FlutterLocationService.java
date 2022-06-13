package com.lyokone.location;

import android.app.Activity;
import android.app.Service;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FlutterLocationService.kt */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\b\u0018\u0000 =2\u00020\u00012\u00020\u0002:\u0002=>B\u0005¢\u0006\u0002\u0010\u0003J\u001c\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0018\u00010!2\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u000bJ\u0006\u0010'\u001a\u00020(J\u0006\u0010)\u001a\u00020(J\u0006\u0010*\u001a\u00020\u000bJ\u0014\u0010+\u001a\u0004\u0018\u00010,2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J\b\u0010/\u001a\u00020(H\u0016J\b\u00100\u001a\u00020(H\u0016J1\u00101\u001a\u00020\u000b2\u0006\u00102\u001a\u0002032\u0010\u00104\u001a\f\u0012\u0006\b\u0001\u0012\u00020\"\u0018\u0001052\b\u00106\u001a\u0004\u0018\u000107H\u0016¢\u0006\u0002\u00108J\u0012\u00109\u001a\u00020\u000b2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0006\u0010:\u001a\u00020(J\u0010\u0010;\u001a\u00020(2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010<\u001a\u00020\u000bH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00060\tR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\f\u001a\u0004\u0018\u00010\r@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0017¨\u0006?"}, d2 = {"Lcom/lyokone/location/FlutterLocationService;", "Landroid/app/Service;", "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;", "()V", "activity", "Landroid/app/Activity;", "backgroundNotification", "Lcom/lyokone/location/BackgroundNotification;", "binder", "Lcom/lyokone/location/FlutterLocationService$LocalBinder;", "isForeground", "", "<set-?>", "Lcom/lyokone/location/FlutterLocation;", "location", "getLocation", "()Lcom/lyokone/location/FlutterLocation;", "locationActivityResultListener", "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;", "getLocationActivityResultListener", "()Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;", "locationRequestPermissionsResultListener", "getLocationRequestPermissionsResultListener", "()Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "getResult", "()Lio/flutter/plugin/common/MethodChannel$Result;", "setResult", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "serviceRequestPermissionsResultListener", "getServiceRequestPermissionsResultListener", "changeNotificationOptions", "", "", "", "options", "Lcom/lyokone/location/NotificationOptions;", "checkBackgroundPermissions", "disableBackgroundMode", "", "enableBackgroundMode", "isInForegroundMode", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onCreate", "onDestroy", "onRequestPermissionsResult", "requestCode", "", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)Z", "onUnbind", "requestBackgroundPermissions", "setActivity", "shouldShowRequestBackgroundPermissionRationale", "Companion", "LocalBinder", "location_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FlutterLocationService extends Service implements PluginRegistry.RequestPermissionsResultListener {
    private static final String CHANNEL_ID = "flutter_location_channel_01";
    public static final Companion Companion = new Companion(null);
    private static final int ONGOING_NOTIFICATION_ID = 75418;
    private static final int REQUEST_PERMISSIONS_REQUEST_CODE = 641;
    private static final String TAG = "FlutterLocationService";
    private Activity activity;
    private BackgroundNotification backgroundNotification;
    private final LocalBinder binder = new LocalBinder(this);
    private boolean isForeground;
    private FlutterLocation location;
    private MethodChannel.Result result;

    /* compiled from: FlutterLocationService.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/lyokone/location/FlutterLocationService$Companion;", "", "()V", "CHANNEL_ID", "", "ONGOING_NOTIFICATION_ID", "", "REQUEST_PERMISSIONS_REQUEST_CODE", "TAG", "location_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final FlutterLocation getLocation() {
        return this.location;
    }

    public final MethodChannel.Result getResult() {
        return this.result;
    }

    public final void setResult(MethodChannel.Result result) {
        this.result = result;
    }

    public final PluginRegistry.ActivityResultListener getLocationActivityResultListener() {
        return this.location;
    }

    public final PluginRegistry.RequestPermissionsResultListener getLocationRequestPermissionsResultListener() {
        return this.location;
    }

    public final PluginRegistry.RequestPermissionsResultListener getServiceRequestPermissionsResultListener() {
        return this;
    }

    /* compiled from: FlutterLocationService.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/lyokone/location/FlutterLocationService$LocalBinder;", "Landroid/os/Binder;", "(Lcom/lyokone/location/FlutterLocationService;)V", "getService", "Lcom/lyokone/location/FlutterLocationService;", "location_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public final class LocalBinder extends Binder {
        final /* synthetic */ FlutterLocationService this$0;

        public LocalBinder(FlutterLocationService flutterLocationService) {
            Intrinsics.checkNotNullParameter(flutterLocationService, "this$0");
            this.this$0 = flutterLocationService;
        }

        public final FlutterLocationService getService() {
            return this.this$0;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.d("FlutterLocationService", "Creating service.");
        this.location = new FlutterLocation(getApplicationContext(), null);
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        this.backgroundNotification = new BackgroundNotification(applicationContext, "flutter_location_channel_01", 75418);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.d("FlutterLocationService", "Binding to location service.");
        return this.binder;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        Log.d("FlutterLocationService", "Unbinding from location service.");
        return super.onUnbind(intent);
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.d("FlutterLocationService", "Destroying service.");
        this.location = null;
        this.backgroundNotification = null;
        super.onDestroy();
    }

    public final boolean checkBackgroundPermissions() {
        Boolean bool;
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 29) {
            Activity activity = this.activity;
            if (activity == null) {
                bool = null;
            } else {
                if (ActivityCompat.checkSelfPermission(activity, "android.permission.ACCESS_BACKGROUND_LOCATION") == 0) {
                    z = true;
                }
                bool = Boolean.valueOf(z);
            }
            if (bool != null) {
                return bool.booleanValue();
            }
            throw new ActivityNotFoundException();
        }
        FlutterLocation flutterLocation = this.location;
        if (flutterLocation == null) {
            return false;
        }
        return flutterLocation.checkPermissions();
    }

    public final void requestBackgroundPermissions() {
        Unit unit = null;
        if (Build.VERSION.SDK_INT >= 29) {
            Activity activity = this.activity;
            if (activity != null) {
                ActivityCompat.requestPermissions(activity, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_BACKGROUND_LOCATION"}, 641);
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                throw new ActivityNotFoundException();
            }
            return;
        }
        FlutterLocation flutterLocation = this.location;
        if (flutterLocation != null) {
            flutterLocation.result = this.result;
        }
        FlutterLocation flutterLocation2 = this.location;
        if (flutterLocation2 != null) {
            flutterLocation2.requestPermissions();
        }
        this.result = null;
    }

    public final boolean isInForegroundMode() {
        return this.isForeground;
    }

    public final void enableBackgroundMode() {
        if (this.isForeground) {
            Log.d("FlutterLocationService", "Service already in foreground mode.");
            return;
        }
        Log.d("FlutterLocationService", "Start service in foreground mode.");
        BackgroundNotification backgroundNotification = this.backgroundNotification;
        Intrinsics.checkNotNull(backgroundNotification);
        startForeground(75418, backgroundNotification.build());
        this.isForeground = true;
    }

    public final void disableBackgroundMode() {
        Log.d("FlutterLocationService", "Stop service in foreground.");
        stopForeground(true);
        this.isForeground = false;
    }

    public final Map<String, Object> changeNotificationOptions(NotificationOptions notificationOptions) {
        Intrinsics.checkNotNullParameter(notificationOptions, "options");
        BackgroundNotification backgroundNotification = this.backgroundNotification;
        if (backgroundNotification != null) {
            backgroundNotification.updateOptions(notificationOptions, this.isForeground);
        }
        if (this.isForeground) {
            return MapsKt.mapOf(TuplesKt.to("channelId", "flutter_location_channel_01"), TuplesKt.to("notificationId", 75418));
        }
        return null;
    }

    public final void setActivity(Activity activity) {
        this.activity = activity;
        FlutterLocation flutterLocation = this.location;
        if (flutterLocation != null) {
            flutterLocation.setActivity(activity);
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (Build.VERSION.SDK_INT >= 29 && i == 641) {
            Intrinsics.checkNotNull(strArr);
            if (strArr.length == 2 && Intrinsics.areEqual(strArr[0], "android.permission.ACCESS_FINE_LOCATION") && Intrinsics.areEqual(strArr[1], "android.permission.ACCESS_BACKGROUND_LOCATION")) {
                Intrinsics.checkNotNull(iArr);
                if (iArr[0] == 0 && iArr[1] == 0) {
                    enableBackgroundMode();
                    MethodChannel.Result result = this.result;
                    if (result != null) {
                        result.success(1);
                    }
                    this.result = null;
                } else {
                    if (!shouldShowRequestBackgroundPermissionRationale()) {
                        MethodChannel.Result result2 = this.result;
                        if (result2 != null) {
                            result2.error("PERMISSION_DENIED_NEVER_ASK", "Background location permission denied forever - please open app settings", null);
                        }
                    } else {
                        MethodChannel.Result result3 = this.result;
                        if (result3 != null) {
                            result3.error("PERMISSION_DENIED", "Background location permission denied", null);
                        }
                    }
                    this.result = null;
                }
            }
        }
        return false;
    }

    private final boolean shouldShowRequestBackgroundPermissionRationale() {
        Boolean bool;
        if (Build.VERSION.SDK_INT < 29) {
            return false;
        }
        Activity activity = this.activity;
        if (activity == null) {
            bool = null;
        } else {
            bool = Boolean.valueOf(ActivityCompat.shouldShowRequestPermissionRationale(activity, "android.permission.ACCESS_BACKGROUND_LOCATION"));
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        throw new ActivityNotFoundException();
    }
}
