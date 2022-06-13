package com.lyokone.location;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.location.Location;
import android.location.LocationManager;
import android.location.OnNmeaMessageListener;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.ActivityCompat;
import com.github.florent37.assets_audio_player.Player;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.umeng.analytics.pro.c;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class FlutterLocation implements PluginRegistry.RequestPermissionsResultListener, PluginRegistry.ActivityResultListener {
    private static final int GPS_ENABLE_REQUEST = 4097;
    private static final int REQUEST_CHECK_SETTINGS = 1;
    private static final int REQUEST_PERMISSIONS_REQUEST_CODE = 34;
    private static final String TAG = "FlutterLocation";
    public Activity activity;
    public EventChannel.EventSink events;
    public MethodChannel.Result getLocationResult;
    private final LocationManager locationManager;
    public FusedLocationProviderClient mFusedLocationClient;
    private Double mLastMslAltitude;
    public LocationCallback mLocationCallback;
    private LocationRequest mLocationRequest;
    private LocationSettingsRequest mLocationSettingsRequest;
    private OnNmeaMessageListener mMessageListener;
    private SettingsClient mSettingsClient;
    private MethodChannel.Result requestServiceResult;
    public MethodChannel.Result result;
    private long updateIntervalMilliseconds = 5000;
    private long fastestUpdateIntervalMilliseconds = this.updateIntervalMilliseconds / 2;
    private Integer locationAccuracy = 100;
    private float distanceFilter = 0.0f;
    public SparseArray<Integer> mapFlutterAccuracy = new SparseArray<Integer>() { // from class: com.lyokone.location.FlutterLocation.1
        {
            put(0, 105);
            put(1, 104);
            put(2, 102);
            put(3, 100);
            put(4, 100);
            put(5, 104);
        }
    };

    public FlutterLocation(Context context, Activity activity) {
        this.activity = activity;
        this.locationManager = (LocationManager) context.getSystemService("location");
    }

    public void setActivity(Activity activity) {
        LocationManager locationManager;
        this.activity = activity;
        if (this.activity != null) {
            this.mFusedLocationClient = LocationServices.getFusedLocationProviderClient(activity);
            this.mSettingsClient = LocationServices.getSettingsClient(activity);
            createLocationCallback();
            createLocationRequest();
            buildLocationSettingsRequest();
            return;
        }
        FusedLocationProviderClient fusedLocationProviderClient = this.mFusedLocationClient;
        if (fusedLocationProviderClient != null) {
            fusedLocationProviderClient.removeLocationUpdates(this.mLocationCallback);
        }
        this.mFusedLocationClient = null;
        this.mSettingsClient = null;
        if (Build.VERSION.SDK_INT >= 24 && (locationManager = this.locationManager) != null) {
            locationManager.removeNmeaListener(this.mMessageListener);
            this.mMessageListener = null;
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        return onRequestPermissionsResultHandler(i, strArr, iArr);
    }

    public boolean onRequestPermissionsResultHandler(int i, String[] strArr, int[] iArr) {
        if (i != 34 || strArr.length != 1 || !strArr[0].equals("android.permission.ACCESS_FINE_LOCATION")) {
            return false;
        }
        if (iArr[0] == 0) {
            if (!(this.getLocationResult == null && this.events == null)) {
                startRequestingLocation();
            }
            MethodChannel.Result result = this.result;
            if (result != null) {
                result.success(1);
                this.result = null;
            }
        } else if (!shouldShowRequestPermissionRationale()) {
            sendError("PERMISSION_DENIED_NEVER_ASK", "Location permission denied forever - please open app settings", null);
            MethodChannel.Result result2 = this.result;
            if (result2 != null) {
                result2.success(2);
                this.result = null;
            }
        } else {
            sendError("PERMISSION_DENIED", "Location permission denied", null);
            MethodChannel.Result result3 = this.result;
            if (result3 != null) {
                result3.success(0);
                this.result = null;
            }
        }
        return true;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        MethodChannel.Result result;
        if (i == 1) {
            MethodChannel.Result result2 = this.result;
            if (result2 == null) {
                return false;
            }
            if (i2 == -1) {
                startRequestingLocation();
                return true;
            }
            result2.error("SERVICE_STATUS_DISABLED", "Failed to get location. Location services disabled", null);
            this.result = null;
            return true;
        } else if (i != 4097 || (result = this.requestServiceResult) == null) {
            return false;
        } else {
            if (i2 == -1) {
                result.success(1);
            } else {
                result.success(0);
            }
            this.requestServiceResult = null;
            return true;
        }
    }

    public void changeSettings(Integer num, Long l, Long l2, Float f) {
        this.locationAccuracy = num;
        this.updateIntervalMilliseconds = l.longValue();
        this.fastestUpdateIntervalMilliseconds = l2.longValue();
        this.distanceFilter = f.floatValue();
        createLocationCallback();
        createLocationRequest();
        buildLocationSettingsRequest();
        startRequestingLocation();
    }

    private void sendError(String str, String str2, Object obj) {
        MethodChannel.Result result = this.getLocationResult;
        if (result != null) {
            result.error(str, str2, obj);
            this.getLocationResult = null;
        }
        EventChannel.EventSink eventSink = this.events;
        if (eventSink != null) {
            eventSink.error(str, str2, obj);
            this.events = null;
        }
    }

    private void createLocationCallback() {
        LocationCallback locationCallback = this.mLocationCallback;
        if (locationCallback != null) {
            this.mFusedLocationClient.removeLocationUpdates(locationCallback);
            this.mLocationCallback = null;
        }
        this.mLocationCallback = new LocationCallback() { // from class: com.lyokone.location.FlutterLocation.2
            @Override // com.google.android.gms.location.LocationCallback
            public void onLocationResult(LocationResult locationResult) {
                super.onLocationResult(locationResult);
                Location lastLocation = locationResult.getLastLocation();
                HashMap hashMap = new HashMap();
                hashMap.put("latitude", Double.valueOf(lastLocation.getLatitude()));
                hashMap.put("longitude", Double.valueOf(lastLocation.getLongitude()));
                hashMap.put("accuracy", Double.valueOf((double) lastLocation.getAccuracy()));
                if (Build.VERSION.SDK_INT >= 26) {
                    hashMap.put(FusedLocationProviderClient.KEY_VERTICAL_ACCURACY, Double.valueOf((double) lastLocation.getVerticalAccuracyMeters()));
                    hashMap.put("headingAccuracy", Double.valueOf((double) lastLocation.getBearingAccuracyDegrees()));
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    hashMap.put("elapsedRealtimeUncertaintyNanos", Double.valueOf(lastLocation.getElapsedRealtimeUncertaintyNanos()));
                }
                hashMap.put(c.M, lastLocation.getProvider());
                if (lastLocation.getExtras() != null) {
                    hashMap.put("satelliteNumber", Integer.valueOf(lastLocation.getExtras().getInt("satellites")));
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    hashMap.put("elapsedRealtimeNanos", Double.valueOf((double) lastLocation.getElapsedRealtimeNanos()));
                    if (lastLocation.isFromMockProvider()) {
                        hashMap.put("isMock", Double.valueOf(1.0d));
                    }
                } else {
                    hashMap.put("isMock", Double.valueOf(0.0d));
                }
                if (FlutterLocation.this.mLastMslAltitude == null || Build.VERSION.SDK_INT < 24) {
                    hashMap.put("altitude", Double.valueOf(lastLocation.getAltitude()));
                } else {
                    hashMap.put("altitude", FlutterLocation.this.mLastMslAltitude);
                }
                hashMap.put("speed", Double.valueOf((double) lastLocation.getSpeed()));
                if (Build.VERSION.SDK_INT >= 26) {
                    hashMap.put("speed_accuracy", Double.valueOf((double) lastLocation.getSpeedAccuracyMetersPerSecond()));
                }
                hashMap.put("heading", Double.valueOf((double) lastLocation.getBearing()));
                hashMap.put("time", Double.valueOf((double) lastLocation.getTime()));
                if (FlutterLocation.this.getLocationResult != null) {
                    FlutterLocation.this.getLocationResult.success(hashMap);
                    FlutterLocation.this.getLocationResult = null;
                }
                if (FlutterLocation.this.events != null) {
                    FlutterLocation.this.events.success(hashMap);
                } else if (FlutterLocation.this.mFusedLocationClient != null) {
                    FlutterLocation.this.mFusedLocationClient.removeLocationUpdates(FlutterLocation.this.mLocationCallback);
                }
            }
        };
        if (Build.VERSION.SDK_INT >= 24) {
            this.mMessageListener = new OnNmeaMessageListener() { // from class: com.lyokone.location.-$$Lambda$FlutterLocation$Y5o6FemQSu3t5HPM4zMZ4Zwptiw
                @Override // android.location.OnNmeaMessageListener
                public final void onNmeaMessage(String str, long j) {
                    FlutterLocation.this.lambda$createLocationCallback$0$FlutterLocation(str, j);
                }
            };
        }
    }

    public /* synthetic */ void lambda$createLocationCallback$0$FlutterLocation(String str, long j) {
        if (str.startsWith("$")) {
            String[] split = str.split(",");
            if (split[0].startsWith("$GPGGA") && split.length > 9 && !split[9].isEmpty()) {
                this.mLastMslAltitude = Double.valueOf(Double.parseDouble(split[9]));
            }
        }
    }

    private void createLocationRequest() {
        this.mLocationRequest = LocationRequest.create();
        this.mLocationRequest.setInterval(this.updateIntervalMilliseconds);
        this.mLocationRequest.setFastestInterval(this.fastestUpdateIntervalMilliseconds);
        this.mLocationRequest.setPriority(this.locationAccuracy.intValue());
        this.mLocationRequest.setSmallestDisplacement(this.distanceFilter);
    }

    private void buildLocationSettingsRequest() {
        LocationSettingsRequest.Builder builder = new LocationSettingsRequest.Builder();
        builder.addLocationRequest(this.mLocationRequest);
        this.mLocationSettingsRequest = builder.build();
    }

    public boolean checkPermissions() {
        Activity activity = this.activity;
        if (activity != null) {
            return ActivityCompat.checkSelfPermission(activity, "android.permission.ACCESS_FINE_LOCATION") == 0;
        }
        this.result.error("MISSING_ACTIVITY", "You should not checkPermissions activation outside of an activity.", null);
        throw new ActivityNotFoundException();
    }

    public void requestPermissions() {
        if (this.activity == null) {
            this.result.error("MISSING_ACTIVITY", "You should not requestPermissions activation outside of an activity.", null);
            throw new ActivityNotFoundException();
        } else if (checkPermissions()) {
            this.result.success(1);
        } else {
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 34);
        }
    }

    public boolean shouldShowRequestPermissionRationale() {
        Activity activity = this.activity;
        if (activity == null) {
            return false;
        }
        return ActivityCompat.shouldShowRequestPermissionRationale(activity, "android.permission.ACCESS_FINE_LOCATION");
    }

    public boolean checkServiceEnabled() {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.locationManager.isLocationEnabled();
        }
        return this.locationManager.isProviderEnabled("gps") || this.locationManager.isProviderEnabled(Player.AUDIO_TYPE_NETWORK);
    }

    public void requestService(MethodChannel.Result result) {
        if (this.activity != null) {
            try {
                if (checkServiceEnabled()) {
                    result.success(1);
                    return;
                }
                this.requestServiceResult = result;
                this.mSettingsClient.checkLocationSettings(this.mLocationSettingsRequest).addOnFailureListener(this.activity, new OnFailureListener(result) { // from class: com.lyokone.location.-$$Lambda$FlutterLocation$5tN9DzGdcsOdg9vqxF2VdzD2hRY
                    private final /* synthetic */ MethodChannel.Result f$1;

                    {
                        this.f$1 = r2;
                    }

                    @Override // com.google.android.gms.tasks.OnFailureListener
                    public final void onFailure(Exception exc) {
                        FlutterLocation.this.lambda$requestService$1$FlutterLocation(this.f$1, exc);
                    }
                });
            } catch (Exception unused) {
                result.error("SERVICE_STATUS_ERROR", "Location service status couldn't be determined", null);
            }
        } else {
            result.error("MISSING_ACTIVITY", "You should not requestService activation outside of an activity.", null);
            throw new ActivityNotFoundException();
        }
    }

    public /* synthetic */ void lambda$requestService$1$FlutterLocation(MethodChannel.Result result, Exception exc) {
        if (exc instanceof ResolvableApiException) {
            ResolvableApiException resolvableApiException = (ResolvableApiException) exc;
            int statusCode = resolvableApiException.getStatusCode();
            if (statusCode == 6) {
                try {
                    resolvableApiException.startResolutionForResult(this.activity, 4097);
                } catch (IntentSender.SendIntentException unused) {
                    result.error("SERVICE_STATUS_ERROR", "Could not resolve location request", null);
                }
            } else if (statusCode == 8502) {
                result.error("SERVICE_STATUS_DISABLED", "Failed to get location. Location services disabled", null);
            }
        } else {
            result.error("SERVICE_STATUS_ERROR", "Unexpected error type received", null);
        }
    }

    public void startRequestingLocation() {
        if (this.activity != null) {
            this.mSettingsClient.checkLocationSettings(this.mLocationSettingsRequest).addOnSuccessListener(this.activity, new OnSuccessListener() { // from class: com.lyokone.location.-$$Lambda$FlutterLocation$RtFo0ovM_N9dgwZfpocA94uX3MY
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    FlutterLocation.this.lambda$startRequestingLocation$2$FlutterLocation((LocationSettingsResponse) obj);
                }
            }).addOnFailureListener(this.activity, new OnFailureListener() { // from class: com.lyokone.location.-$$Lambda$FlutterLocation$cEX_A6TMtIuGvm9YwtTluLw7NAI
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    FlutterLocation.this.lambda$startRequestingLocation$3$FlutterLocation(exc);
                }
            });
        } else {
            this.result.error("MISSING_ACTIVITY", "You should not requestLocation activation outside of an activity.", null);
            throw new ActivityNotFoundException();
        }
    }

    public /* synthetic */ void lambda$startRequestingLocation$2$FlutterLocation(LocationSettingsResponse locationSettingsResponse) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.locationManager.addNmeaListener(this.mMessageListener, (Handler) null);
        }
        FusedLocationProviderClient fusedLocationProviderClient = this.mFusedLocationClient;
        if (fusedLocationProviderClient != null) {
            fusedLocationProviderClient.requestLocationUpdates(this.mLocationRequest, this.mLocationCallback, Looper.myLooper());
        }
    }

    public /* synthetic */ void lambda$startRequestingLocation$3$FlutterLocation(Exception exc) {
        if (exc instanceof ResolvableApiException) {
            ResolvableApiException resolvableApiException = (ResolvableApiException) exc;
            if (resolvableApiException.getStatusCode() == 6) {
                try {
                    resolvableApiException.startResolutionForResult(this.activity, 1);
                } catch (IntentSender.SendIntentException unused) {
                    Log.i("FlutterLocation", "PendingIntent unable to execute request.");
                }
            }
        } else if (((ApiException) exc).getStatusCode() == 8502) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.locationManager.addNmeaListener(this.mMessageListener, (Handler) null);
            }
            this.mFusedLocationClient.requestLocationUpdates(this.mLocationRequest, this.mLocationCallback, Looper.myLooper());
        } else {
            sendError("UNEXPECTED_ERROR", exc.getMessage(), null);
        }
    }
}
