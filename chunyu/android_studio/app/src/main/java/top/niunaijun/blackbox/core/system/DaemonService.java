package top.niunaijun.blackbox.core.system;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import top.niunaijun.blackbox.utils.compat.BuildCompat;

/* loaded from: classes3.dex */
public class DaemonService extends Service {
    private static final int NOTIFY_ID = (int) (System.currentTimeMillis() / 1000);
    public static final String TAG = "DaemonService";

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        initNotificationManager();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        startService(new Intent(this, DaemonInnerService.class));
        if (!BuildCompat.isOreo()) {
            return 1;
        }
        showNotification();
        return 1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy");
    }

    private void showNotification() {
        Context applicationContext = getApplicationContext();
        startForeground(NOTIFY_ID, new NotificationCompat.Builder(applicationContext, getPackageName() + ".blackbox").setPriority(2).build());
    }

    private void initNotificationManager() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        String str = getPackageName() + ".blackbox";
        if (BuildCompat.isOreo()) {
            NotificationChannel notificationChannel = new NotificationChannel(str, "blackbox", 4);
            notificationChannel.enableLights(true);
            notificationChannel.setLightColor(-65536);
            notificationChannel.setShowBadge(true);
            notificationChannel.setLockscreenVisibility(1);
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }

    /* loaded from: classes3.dex */
    public static class DaemonInnerService extends Service {
        @Override // android.app.Service
        public IBinder onBind(Intent intent) {
            return null;
        }

        @Override // android.app.Service
        public void onCreate() {
            Log.i(DaemonService.TAG, "DaemonInnerService -> onCreate");
            super.onCreate();
        }

        @Override // android.app.Service
        public int onStartCommand(Intent intent, int i, int i2) {
            Log.i(DaemonService.TAG, "DaemonInnerService -> onStartCommand");
            ((NotificationManager) getSystemService("notification")).cancel(DaemonService.NOTIFY_ID);
            stopSelf();
            return super.onStartCommand(intent, i, i2);
        }

        @Override // android.app.Service
        public void onDestroy() {
            Log.i(DaemonService.TAG, "DaemonInnerService -> onDestroy");
            super.onDestroy();
        }
    }
}
