package androidx.core.location;

import android.content.Context;
import android.location.GnssStatus;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.location.GnssStatusCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.github.florent37.assets_audio_player.Player;
import java.lang.reflect.Field;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public final class LocationManagerCompat {
    private static final long PRE_N_LOOPER_TIMEOUT_S = 4;
    private static Field sContextField;
    private static final SimpleArrayMap<Object, Object> sGnssStatusListeners = new SimpleArrayMap<>();

    public static boolean isLocationEnabled(LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.isLocationEnabled(locationManager);
        }
        if (Build.VERSION.SDK_INT <= 19) {
            try {
                if (sContextField == null) {
                    sContextField = LocationManager.class.getDeclaredField("mContext");
                }
                sContextField.setAccessible(true);
                Context context = (Context) sContextField.get(locationManager);
                if (Build.VERSION.SDK_INT != 19) {
                    return !TextUtils.isEmpty(Settings.Secure.getString(context.getContentResolver(), "location_providers_allowed"));
                }
                if (Settings.Secure.getInt(context.getContentResolver(), "location_mode", 0) != 0) {
                    return true;
                }
                return false;
            } catch (ClassCastException | IllegalAccessException | NoSuchFieldException | SecurityException unused) {
            }
        }
        if (locationManager.isProviderEnabled(Player.AUDIO_TYPE_NETWORK) || locationManager.isProviderEnabled("gps")) {
            return true;
        }
        return false;
    }

    public static boolean registerGnssStatusCallback(LocationManager locationManager, GnssStatusCompat.Callback callback, Handler handler) {
        if (Build.VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, ExecutorCompat.create(handler), callback);
        }
        return registerGnssStatusCallback(locationManager, new InlineHandlerExecutor(handler), callback);
    }

    public static boolean registerGnssStatusCallback(LocationManager locationManager, Executor executor, GnssStatusCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, null, executor, callback);
        }
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return registerGnssStatusCallback(locationManager, new Handler(myLooper), executor, callback);
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x010c A[Catch: all -> 0x0128, TryCatch #4 {all -> 0x0128, blocks: (B:73:0x00da, B:81:0x00eb, B:82:0x0101, B:85:0x0104, B:87:0x010c, B:89:0x0114, B:90:0x011a, B:91:0x011b, B:92:0x0120, B:93:0x0121, B:94:0x0127), top: B:105:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0121 A[Catch: all -> 0x0128, TryCatch #4 {all -> 0x0128, blocks: (B:73:0x00da, B:81:0x00eb, B:82:0x0101, B:85:0x0104, B:87:0x010c, B:89:0x0114, B:90:0x011a, B:91:0x011b, B:92:0x0120, B:93:0x0121, B:94:0x0127), top: B:105:0x009a }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private static boolean registerGnssStatusCallback(final android.location.LocationManager r9, android.os.Handler r10, java.util.concurrent.Executor r11, androidx.core.location.GnssStatusCompat.Callback r12) {
        /*
        // Method dump skipped, instructions count: 333
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.location.LocationManagerCompat.registerGnssStatusCallback(android.location.LocationManager, android.os.Handler, java.util.concurrent.Executor, androidx.core.location.GnssStatusCompat$Callback):boolean");
    }

    public static void unregisterGnssStatusCallback(LocationManager locationManager, GnssStatusCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            SimpleArrayMap<Object, Object> simpleArrayMap = sGnssStatusListeners;
            synchronized (simpleArrayMap) {
                GnssStatus.Callback callback2 = (GnssStatusTransport) simpleArrayMap.remove(callback);
                if (callback2 != null) {
                    locationManager.unregisterGnssStatusCallback(callback2);
                }
            }
        } else if (Build.VERSION.SDK_INT >= 24) {
            SimpleArrayMap<Object, Object> simpleArrayMap2 = sGnssStatusListeners;
            synchronized (simpleArrayMap2) {
                PreRGnssStatusTransport preRGnssStatusTransport = (PreRGnssStatusTransport) simpleArrayMap2.remove(callback);
                if (preRGnssStatusTransport != null) {
                    preRGnssStatusTransport.unregister();
                    locationManager.unregisterGnssStatusCallback(preRGnssStatusTransport);
                }
            }
        } else {
            SimpleArrayMap<Object, Object> simpleArrayMap3 = sGnssStatusListeners;
            synchronized (simpleArrayMap3) {
                GpsStatusTransport gpsStatusTransport = (GpsStatusTransport) simpleArrayMap3.remove(callback);
                if (gpsStatusTransport != null) {
                    gpsStatusTransport.unregister();
                    locationManager.removeGpsStatusListener(gpsStatusTransport);
                }
            }
        }
    }

    private LocationManagerCompat() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes2.dex
     */
    /* loaded from: classes4.dex */
    public static class GnssStatusTransport extends GnssStatus.Callback {
        final GnssStatusCompat.Callback mCallback;

        GnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.mCallback = callback;
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            this.mCallback.onStarted();
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            this.mCallback.onStopped();
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(int i) {
            this.mCallback.onFirstFix(i);
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes2.dex
     */
    /* loaded from: classes4.dex */
    public static class PreRGnssStatusTransport extends GnssStatus.Callback {
        final GnssStatusCompat.Callback mCallback;
        volatile Executor mExecutor;

        PreRGnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.mCallback = callback;
        }

        public void register(Executor executor) {
            boolean z = true;
            Preconditions.checkArgument(executor != null, "invalid null executor");
            if (this.mExecutor != null) {
                z = false;
            }
            Preconditions.checkState(z);
            this.mExecutor = executor;
        }

        public void unregister() {
            this.mExecutor = null;
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            final Executor executor = this.mExecutor;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat.PreRGnssStatusTransport.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PreRGnssStatusTransport.this.mExecutor == executor) {
                            PreRGnssStatusTransport.this.mCallback.onStarted();
                        }
                    }
                });
            }
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            final Executor executor = this.mExecutor;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat.PreRGnssStatusTransport.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PreRGnssStatusTransport.this.mExecutor == executor) {
                            PreRGnssStatusTransport.this.mCallback.onStopped();
                        }
                    }
                });
            }
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(final int i) {
            final Executor executor = this.mExecutor;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat.PreRGnssStatusTransport.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PreRGnssStatusTransport.this.mExecutor == executor) {
                            PreRGnssStatusTransport.this.mCallback.onFirstFix(i);
                        }
                    }
                });
            }
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(final GnssStatus gnssStatus) {
            final Executor executor = this.mExecutor;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat.PreRGnssStatusTransport.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PreRGnssStatusTransport.this.mExecutor == executor) {
                            PreRGnssStatusTransport.this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes2.dex
     */
    /* loaded from: classes4.dex */
    public static class GpsStatusTransport implements GpsStatus.Listener {
        final GnssStatusCompat.Callback mCallback;
        volatile Executor mExecutor;
        private final LocationManager mLocationManager;

        GpsStatusTransport(LocationManager locationManager, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.mLocationManager = locationManager;
            this.mCallback = callback;
        }

        public void register(Executor executor) {
            Preconditions.checkState(this.mExecutor == null);
            this.mExecutor = executor;
        }

        public void unregister() {
            this.mExecutor = null;
        }

        @Override // android.location.GpsStatus.Listener
        public void onGpsStatusChanged(int i) {
            GpsStatus gpsStatus;
            final Executor executor = this.mExecutor;
            if (executor != null) {
                if (i == 1) {
                    executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat.GpsStatusTransport.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (GpsStatusTransport.this.mExecutor == executor) {
                                GpsStatusTransport.this.mCallback.onStarted();
                            }
                        }
                    });
                } else if (i == 2) {
                    executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat.GpsStatusTransport.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (GpsStatusTransport.this.mExecutor == executor) {
                                GpsStatusTransport.this.mCallback.onStopped();
                            }
                        }
                    });
                } else if (i == 3) {
                    GpsStatus gpsStatus2 = this.mLocationManager.getGpsStatus(null);
                    if (gpsStatus2 != null) {
                        final int timeToFirstFix = gpsStatus2.getTimeToFirstFix();
                        executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat.GpsStatusTransport.3
                            @Override // java.lang.Runnable
                            public void run() {
                                if (GpsStatusTransport.this.mExecutor == executor) {
                                    GpsStatusTransport.this.mCallback.onFirstFix(timeToFirstFix);
                                }
                            }
                        });
                    }
                } else if (i == 4 && (gpsStatus = this.mLocationManager.getGpsStatus(null)) != null) {
                    final GnssStatusCompat wrap = GnssStatusCompat.wrap(gpsStatus);
                    executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat.GpsStatusTransport.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (GpsStatusTransport.this.mExecutor == executor) {
                                GpsStatusTransport.this.mCallback.onSatelliteStatusChanged(wrap);
                            }
                        }
                    });
                }
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes2.dex
     */
    /* loaded from: classes4.dex */
    private static class InlineHandlerExecutor implements Executor {
        private final Handler mHandler;

        InlineHandlerExecutor(Handler handler) {
            this.mHandler = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                runnable.run();
            } else if (!this.mHandler.post((Runnable) Preconditions.checkNotNull(runnable))) {
                throw new RejectedExecutionException(this.mHandler + " is shutting down");
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes2.dex
     */
    /* loaded from: classes4.dex */
    private static class Api28Impl {
        private Api28Impl() {
        }

        public static boolean isLocationEnabled(LocationManager locationManager) {
            return locationManager.isLocationEnabled();
        }
    }

    /* loaded from: classes2.dex */
    private static class Api30Impl {
        private Api30Impl() {
        }

        static void getCurrentLocation(LocationManager locationManager, String str, CancellationSignal cancellationSignal, Executor executor, final Consumer<Location> consumer) {
            locationManager.getCurrentLocation(str, cancellationSignal != null ? (android.os.CancellationSignal) cancellationSignal.getCancellationSignalObject() : null, executor, new java.util.function.Consumer<Location>() { // from class: androidx.core.location.LocationManagerCompat.Api30Impl.1
                public void accept(Location location) {
                    Consumer.this.accept(location);
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    private static final class CancellableLocationListener implements LocationListener {
        private Consumer<Location> mConsumer;
        private final Executor mExecutor;
        private final LocationManager mLocationManager;
        private final Handler mTimeoutHandler = new Handler(Looper.getMainLooper());
        Runnable mTimeoutRunnable;
        private boolean mTriggered;

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        CancellableLocationListener(LocationManager locationManager, Executor executor, Consumer<Location> consumer) {
            this.mLocationManager = locationManager;
            this.mExecutor = executor;
            this.mConsumer = consumer;
        }

        public void cancel() {
            synchronized (this) {
                if (!this.mTriggered) {
                    this.mTriggered = true;
                    cleanup();
                }
            }
        }

        public void startTimeout(long j) {
            synchronized (this) {
                if (!this.mTriggered) {
                    this.mTimeoutRunnable = new Runnable() { // from class: androidx.core.location.LocationManagerCompat.CancellableLocationListener.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CancellableLocationListener cancellableLocationListener = CancellableLocationListener.this;
                            cancellableLocationListener.mTimeoutRunnable = null;
                            cancellableLocationListener.onLocationChanged(null);
                        }
                    };
                    this.mTimeoutHandler.postDelayed(this.mTimeoutRunnable, j);
                }
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            onLocationChanged(null);
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final Location location) {
            synchronized (this) {
                if (!this.mTriggered) {
                    this.mTriggered = true;
                    final Consumer<Location> consumer = this.mConsumer;
                    this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat.CancellableLocationListener.2
                        @Override // java.lang.Runnable
                        public void run() {
                            consumer.accept(location);
                        }
                    });
                    cleanup();
                }
            }
        }

        private void cleanup() {
            this.mConsumer = null;
            this.mLocationManager.removeUpdates(this);
            Runnable runnable = this.mTimeoutRunnable;
            if (runnable != null) {
                this.mTimeoutHandler.removeCallbacks(runnable);
                this.mTimeoutRunnable = null;
            }
        }
    }
}
