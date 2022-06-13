package com.lyokone.location;

import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.umeng.analytics.pro.ai;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/* loaded from: classes2.dex */
final class MethodCallHandlerImpl implements MethodChannel.MethodCallHandler {
    private static final String METHOD_CHANNEL_NAME = "lyokone/location";
    private static final String TAG = "MethodCallHandlerImpl";
    private MethodChannel channel;
    private FlutterLocation location;
    private FlutterLocationService locationService;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLocation(FlutterLocation flutterLocation) {
        this.location = flutterLocation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLocationService(FlutterLocationService flutterLocationService) {
        this.locationService = flutterLocationService;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -972798202:
                if (str.equals("isBackgroundModeEnabled")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -724480940:
                if (str.equals("enableBackgroundMode")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -316023509:
                if (str.equals("getLocation")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 128007462:
                if (str.equals("requestService")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 171850761:
                if (str.equals("hasPermission")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 473496931:
                if (str.equals("changeNotificationOptions")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 646862540:
                if (str.equals("serviceEnabled")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 746581438:
                if (str.equals("requestPermission")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1149076467:
                if (str.equals("changeSettings")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                onChangeSettings(methodCall, result);
                return;
            case 1:
                onGetLocation(result);
                return;
            case 2:
                onHasPermission(result);
                return;
            case 3:
                onRequestPermission(result);
                return;
            case 4:
                onServiceEnabled(result);
                return;
            case 5:
                this.location.requestService(result);
                return;
            case 6:
                isBackgroundModeEnabled(result);
                return;
            case 7:
                enableBackgroundMode(methodCall, result);
                return;
            case '\b':
                onChangeNotificationOptions(methodCall, result);
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startListening(BinaryMessenger binaryMessenger) {
        if (this.channel != null) {
            Log.wtf(TAG, "Setting a method call handler before the last was disposed.");
            stopListening();
        }
        this.channel = new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME);
        this.channel.setMethodCallHandler(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopListening() {
        MethodChannel methodChannel = this.channel;
        if (methodChannel == null) {
            Log.d(TAG, "Tried to stop listening when no MethodChannel had been initialized.");
            return;
        }
        methodChannel.setMethodCallHandler(null);
        this.channel = null;
    }

    private void onChangeSettings(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Long l = new Long((long) ((Integer) methodCall.argument(ai.aR)).intValue());
            Long valueOf = Long.valueOf(l.longValue() / 2);
            Float f = new Float(((Double) methodCall.argument("distanceFilter")).doubleValue());
            this.location.changeSettings(this.location.mapFlutterAccuracy.get(((Integer) methodCall.argument("accuracy")).intValue()), l, valueOf, f);
            result.success(1);
        } catch (Exception e) {
            result.error("CHANGE_SETTINGS_ERROR", "An unexcepted error happened during location settings change:" + e.getMessage(), null);
        }
    }

    private void onGetLocation(MethodChannel.Result result) {
        FlutterLocation flutterLocation = this.location;
        flutterLocation.getLocationResult = result;
        if (!flutterLocation.checkPermissions()) {
            this.location.requestPermissions();
        } else {
            this.location.startRequestingLocation();
        }
    }

    private void onHasPermission(MethodChannel.Result result) {
        if (Build.VERSION.SDK_INT < 23) {
            result.success(1);
        } else if (this.location.checkPermissions()) {
            result.success(1);
        } else {
            result.success(0);
        }
    }

    private void onServiceEnabled(MethodChannel.Result result) {
        try {
            result.success(Integer.valueOf(this.location.checkServiceEnabled() ? 1 : 0));
        } catch (Exception unused) {
            result.error("SERVICE_STATUS_ERROR", "Location service status couldn't be determined", null);
        }
    }

    private void onRequestPermission(MethodChannel.Result result) {
        if (Build.VERSION.SDK_INT < 23) {
            result.success(1);
            return;
        }
        FlutterLocation flutterLocation = this.location;
        flutterLocation.result = result;
        flutterLocation.requestPermissions();
    }

    private void isBackgroundModeEnabled(MethodChannel.Result result) {
        FlutterLocationService flutterLocationService = this.locationService;
        if (flutterLocationService != null) {
            result.success(Integer.valueOf(flutterLocationService.isInForegroundMode() ? 1 : 0));
        } else {
            result.success(0);
        }
    }

    private void enableBackgroundMode(MethodCall methodCall, MethodChannel.Result result) {
        Boolean bool = (Boolean) methodCall.argument("enable");
        FlutterLocationService flutterLocationService = this.locationService;
        if (flutterLocationService == null || bool == null) {
            result.success(0);
        } else if (flutterLocationService.checkBackgroundPermissions()) {
            if (bool.booleanValue()) {
                this.locationService.enableBackgroundMode();
                result.success(1);
                return;
            }
            this.locationService.disableBackgroundMode();
            result.success(0);
        } else if (bool.booleanValue()) {
            this.locationService.setResult(result);
            this.locationService.requestBackgroundPermissions();
        } else {
            this.locationService.disableBackgroundMode();
            result.success(0);
        }
    }

    private void onChangeNotificationOptions(MethodCall methodCall, MethodChannel.Result result) {
        try {
            String str = (String) methodCall.argument("channelName");
            if (str == null) {
                str = FlutterLocationServiceKt.kDefaultChannelName;
            }
            String str2 = (String) methodCall.argument("title");
            if (str2 == null) {
                str2 = FlutterLocationServiceKt.kDefaultNotificationTitle;
            }
            String str3 = (String) methodCall.argument("iconName");
            if (str3 == null) {
                str3 = FlutterLocationServiceKt.kDefaultNotificationIconName;
            }
            String str4 = (String) methodCall.argument("subtitle");
            String str5 = (String) methodCall.argument("description");
            Boolean bool = (Boolean) methodCall.argument("onTapBringToFront");
            if (bool == null) {
                bool = false;
            }
            String str6 = (String) methodCall.argument(TtmlNode.ATTR_TTS_COLOR);
            result.success(this.locationService.changeNotificationOptions(new NotificationOptions(str, str2, str3, str4, str5, str6 != null ? Integer.valueOf(Color.parseColor(str6)) : null, bool.booleanValue())));
        } catch (Exception e) {
            result.error("CHANGE_NOTIFICATION_OPTIONS_ERROR", "An unexpected error happened during notification options change:" + e.getMessage(), null);
        }
    }
}
