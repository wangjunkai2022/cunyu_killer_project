package com.baseflow.permissionhandler;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.provider.Settings;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import io.flutter.plugin.common.PluginRegistry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class PermissionManager implements PluginRegistry.ActivityResultListener, PluginRegistry.RequestPermissionsResultListener {
    private Activity activity;
    private boolean ongoing = false;
    private Map<Integer, Integer> requestResults;
    private RequestPermissionsSuccessCallback successCallback;

    /* JADX INFO: Access modifiers changed from: package-private */
    @FunctionalInterface
    /* loaded from: classes2.dex */
    public interface CheckPermissionsSuccessCallback {
        void onSuccess(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FunctionalInterface
    /* loaded from: classes2.dex */
    public interface RequestPermissionsSuccessCallback {
        void onSuccess(Map<Integer, Integer> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FunctionalInterface
    /* loaded from: classes2.dex */
    public interface ShouldShowRequestPermissionRationaleSuccessCallback {
        void onSuccess(boolean z);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (i != 209 && i != 210 && i != 211 && i != 212 && i != 213) {
            return false;
        }
        boolean z = i2 == -1;
        int i3 = 23;
        if (i == 209) {
            i3 = 16;
        } else if (i == 210) {
            if (Build.VERSION.SDK_INT < 30) {
                return false;
            }
            z = Environment.isExternalStorageManager();
            i3 = 22;
        } else if (i == 211) {
            if (Build.VERSION.SDK_INT < 23) {
                return false;
            }
            z = Settings.canDrawOverlays(this.activity);
        } else if (i == 212) {
            if (Build.VERSION.SDK_INT < 26) {
                return false;
            }
            z = this.activity.getPackageManager().canRequestPackageInstalls();
            i3 = 24;
        } else if (i != 213 || Build.VERSION.SDK_INT < 23) {
            return false;
        } else {
            z = ((NotificationManager) this.activity.getSystemService("notification")).isNotificationPolicyAccessGranted();
            i3 = 27;
        }
        HashMap hashMap = new HashMap();
        Integer valueOf = Integer.valueOf(i3);
        int i4 = z ? 1 : 0;
        int i5 = z ? 1 : 0;
        int i6 = z ? 1 : 0;
        int i7 = z ? 1 : 0;
        int i8 = z ? 1 : 0;
        int i9 = z ? 1 : 0;
        int i10 = z ? 1 : 0;
        int i11 = z ? 1 : 0;
        hashMap.put(valueOf, Integer.valueOf(i4));
        this.successCallback.onSuccess(hashMap);
        return true;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 24) {
            this.ongoing = false;
            return false;
        } else if (this.requestResults == null) {
            return false;
        } else {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String str = strArr[i2];
                int parseManifestName = PermissionUtils.parseManifestName(str);
                if (parseManifestName != 20) {
                    int i3 = iArr[i2];
                    if (parseManifestName == 7) {
                        if (!this.requestResults.containsKey(7)) {
                            this.requestResults.put(7, Integer.valueOf(PermissionUtils.toPermissionStatus(this.activity, str, i3)));
                        }
                        if (!this.requestResults.containsKey(14)) {
                            this.requestResults.put(14, Integer.valueOf(PermissionUtils.toPermissionStatus(this.activity, str, i3)));
                        }
                    } else if (parseManifestName == 4) {
                        int permissionStatus = PermissionUtils.toPermissionStatus(this.activity, str, i3);
                        if (!this.requestResults.containsKey(4)) {
                            this.requestResults.put(4, Integer.valueOf(permissionStatus));
                        }
                    } else if (parseManifestName == 3) {
                        int permissionStatus2 = PermissionUtils.toPermissionStatus(this.activity, str, i3);
                        if (Build.VERSION.SDK_INT < 29 && !this.requestResults.containsKey(4)) {
                            this.requestResults.put(4, Integer.valueOf(permissionStatus2));
                        }
                        if (!this.requestResults.containsKey(5)) {
                            this.requestResults.put(5, Integer.valueOf(permissionStatus2));
                        }
                        this.requestResults.put(Integer.valueOf(parseManifestName), Integer.valueOf(permissionStatus2));
                    } else if (!this.requestResults.containsKey(Integer.valueOf(parseManifestName))) {
                        this.requestResults.put(Integer.valueOf(parseManifestName), Integer.valueOf(PermissionUtils.toPermissionStatus(this.activity, str, i3)));
                    }
                    PermissionUtils.updatePermissionShouldShowStatus(this.activity, parseManifestName);
                }
            }
            this.successCallback.onSuccess(this.requestResults);
            this.ongoing = false;
            return true;
        }
    }

    public void checkPermissionStatus(int i, Context context, CheckPermissionsSuccessCallback checkPermissionsSuccessCallback) {
        checkPermissionsSuccessCallback.onSuccess(determinePermissionStatus(i, context));
    }

    public void requestPermissions(List<Integer> list, Activity activity, RequestPermissionsSuccessCallback requestPermissionsSuccessCallback, ErrorCallback errorCallback) {
        if (this.ongoing) {
            errorCallback.onError("PermissionHandler.PermissionManager", "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time).");
        } else if (activity == null) {
            Log.d("permissions_handler", "Unable to detect current Activity.");
            errorCallback.onError("PermissionHandler.PermissionManager", "Unable to detect current Android Activity.");
        } else {
            this.successCallback = requestPermissionsSuccessCallback;
            this.activity = activity;
            this.requestResults = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (Integer num : list) {
                if (determinePermissionStatus(num.intValue(), activity) != 1) {
                    List<String> manifestNames = PermissionUtils.getManifestNames(activity, num.intValue());
                    if (manifestNames == null || manifestNames.isEmpty()) {
                        if (!this.requestResults.containsKey(num)) {
                            if (num.intValue() != 16 || Build.VERSION.SDK_INT >= 23) {
                                this.requestResults.put(num, 0);
                            } else {
                                this.requestResults.put(num, 2);
                            }
                            if (num.intValue() != 22 || Build.VERSION.SDK_INT >= 30) {
                                this.requestResults.put(num, 0);
                            } else {
                                this.requestResults.put(num, 2);
                            }
                        }
                    } else if (Build.VERSION.SDK_INT >= 23 && num.intValue() == 16) {
                        executeIntent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS", 209);
                    } else if (Build.VERSION.SDK_INT >= 30 && num.intValue() == 22) {
                        executeIntent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION", 210);
                    } else if (Build.VERSION.SDK_INT >= 23 && num.intValue() == 23) {
                        executeIntent("android.settings.action.MANAGE_OVERLAY_PERMISSION", 211);
                    } else if (Build.VERSION.SDK_INT >= 26 && num.intValue() == 24) {
                        executeIntent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", 212);
                    } else if (Build.VERSION.SDK_INT < 23 || num.intValue() != 27) {
                        arrayList.addAll(manifestNames);
                    } else {
                        executeSimpleIntent("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS", 213);
                    }
                } else if (!this.requestResults.containsKey(num)) {
                    this.requestResults.put(num, 1);
                }
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            if (arrayList.size() > 0) {
                this.ongoing = true;
                ActivityCompat.requestPermissions(activity, strArr, 24);
                return;
            }
            this.ongoing = false;
            if (this.requestResults.size() > 0) {
                requestPermissionsSuccessCallback.onSuccess(this.requestResults);
            }
        }
    }

    private int determinePermissionStatus(int i, Context context) {
        if (i == 17) {
            return checkNotificationPermissionStatus(context);
        }
        if (i == 21) {
            return checkBluetoothPermissionStatus(context);
        }
        if ((i == 30 || i == 28 || i == 29) && Build.VERSION.SDK_INT < 31) {
            return checkBluetoothPermissionStatus(context);
        }
        List<String> manifestNames = PermissionUtils.getManifestNames(context, i);
        if (manifestNames == null) {
            Log.d("permissions_handler", "No android specific permissions needed for: " + i);
            return 1;
        } else if (manifestNames.size() == 0) {
            Log.d("permissions_handler", "No permissions found in manifest for: " + manifestNames + i);
            if (i == 16 && Build.VERSION.SDK_INT < 23) {
                return 2;
            }
            if (i == 22 && Build.VERSION.SDK_INT < 30) {
                return 2;
            }
            if (Build.VERSION.SDK_INT < 23) {
                return 1;
            }
            return 0;
        } else {
            Object[] objArr = context.getApplicationInfo().targetSdkVersion >= 23 ? 1 : null;
            for (String str : manifestNames) {
                if (objArr != null) {
                    if (i == 16) {
                        String packageName = context.getPackageName();
                        PowerManager powerManager = (PowerManager) context.getSystemService("power");
                        if (Build.VERSION.SDK_INT < 23) {
                            return 2;
                        }
                        if (powerManager == null || !powerManager.isIgnoringBatteryOptimizations(packageName)) {
                            return 0;
                        }
                        return 1;
                    } else if (i == 22) {
                        if (Build.VERSION.SDK_INT < 30) {
                            return 2;
                        }
                        return Environment.isExternalStorageManager() ? 1 : 0;
                    } else if (i == 23 && Build.VERSION.SDK_INT >= 23) {
                        return Settings.canDrawOverlays(context) ? 1 : 0;
                    } else {
                        if (i == 24 && Build.VERSION.SDK_INT >= 26) {
                            return context.getPackageManager().canRequestPackageInstalls() ? 1 : 0;
                        }
                        if (i == 27 && Build.VERSION.SDK_INT >= 23) {
                            return ((NotificationManager) context.getSystemService("notification")).isNotificationPolicyAccessGranted() ? 1 : 0;
                        }
                        if (ContextCompat.checkSelfPermission(context, str) != 0) {
                            return 0;
                        }
                    }
                }
            }
            return 1;
        }
    }

    private void executeIntent(String str, int i) {
        String packageName = this.activity.getPackageName();
        Intent intent = new Intent();
        intent.setAction(str);
        intent.setData(Uri.parse("package:" + packageName));
        this.activity.startActivityForResult(intent, i);
    }

    private void executeSimpleIntent(String str, int i) {
        this.activity.startActivityForResult(new Intent(str), i);
    }

    public void shouldShowRequestPermissionRationale(int i, Activity activity, ShouldShowRequestPermissionRationaleSuccessCallback shouldShowRequestPermissionRationaleSuccessCallback, ErrorCallback errorCallback) {
        if (activity == null) {
            Log.d("permissions_handler", "Unable to detect current Activity.");
            errorCallback.onError("PermissionHandler.PermissionManager", "Unable to detect current Android Activity.");
            return;
        }
        List<String> manifestNames = PermissionUtils.getManifestNames(activity, i);
        if (manifestNames == null) {
            Log.d("permissions_handler", "No android specific permissions needed for: " + i);
            shouldShowRequestPermissionRationaleSuccessCallback.onSuccess(false);
        } else if (manifestNames.isEmpty()) {
            Log.d("permissions_handler", "No permissions found in manifest for: " + i + " no need to show request rationale");
            shouldShowRequestPermissionRationaleSuccessCallback.onSuccess(false);
        } else {
            shouldShowRequestPermissionRationaleSuccessCallback.onSuccess(ActivityCompat.shouldShowRequestPermissionRationale(activity, manifestNames.get(0)));
        }
    }

    private int checkNotificationPermissionStatus(Context context) {
        return NotificationManagerCompat.from(context).areNotificationsEnabled() ? 1 : 0;
    }

    private int checkBluetoothPermissionStatus(Context context) {
        List<String> manifestNames = PermissionUtils.getManifestNames(context, 21);
        if (!(manifestNames == null || manifestNames.isEmpty())) {
            return 1;
        }
        Log.d("permissions_handler", "Bluetooth permission missing in manifest");
        return 0;
    }
}
