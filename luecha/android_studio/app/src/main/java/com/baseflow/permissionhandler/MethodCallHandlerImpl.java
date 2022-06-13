package com.baseflow.permissionhandler;

import android.app.Activity;
import android.content.Context;
import com.baseflow.permissionhandler.AppSettingsManager;
import com.baseflow.permissionhandler.PermissionManager;
import com.baseflow.permissionhandler.ServiceManager;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
final class MethodCallHandlerImpl implements MethodChannel.MethodCallHandler {
    private Activity activity;
    private final AppSettingsManager appSettingsManager;
    private final Context applicationContext;
    private final PermissionManager permissionManager;
    private final ServiceManager serviceManager;

    public MethodCallHandlerImpl(Context context, AppSettingsManager appSettingsManager, PermissionManager permissionManager, ServiceManager serviceManager) {
        this.applicationContext = context;
        this.appSettingsManager = appSettingsManager;
        this.permissionManager = permissionManager;
        this.serviceManager = serviceManager;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1544053025:
                if (str.equals("checkServiceStatus")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1017315255:
                if (str.equals("shouldShowRequestPermissionRationale")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -576207927:
                if (str.equals("checkPermissionStatus")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 347240634:
                if (str.equals("openAppSettings")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1669188213:
                if (str.equals("requestPermissions")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            int parseInt = Integer.parseInt(methodCall.arguments.toString());
            ServiceManager serviceManager = this.serviceManager;
            Context context = this.applicationContext;
            Objects.requireNonNull(result);
            serviceManager.checkServiceStatus(parseInt, context, new ServiceManager.SuccessCallback() { // from class: com.baseflow.permissionhandler.-$$Lambda$kvb3eDz1QeqVBPF6VqNqPbsSWUA
                @Override // com.baseflow.permissionhandler.ServiceManager.SuccessCallback
                public final void onSuccess(int i) {
                    MethodChannel.Result.this.success(Integer.valueOf(i));
                }
            }, new ErrorCallback() { // from class: com.baseflow.permissionhandler.-$$Lambda$MethodCallHandlerImpl$jGtwiG-3jQ2lAp2Gyt9WGWiMz80
                @Override // com.baseflow.permissionhandler.ErrorCallback
                public final void onError(String str2, String str3) {
                    MethodChannel.Result.this.error(str2, str3, null);
                }
            });
        } else if (c == 1) {
            int parseInt2 = Integer.parseInt(methodCall.arguments.toString());
            PermissionManager permissionManager = this.permissionManager;
            Context context2 = this.applicationContext;
            Objects.requireNonNull(result);
            permissionManager.checkPermissionStatus(parseInt2, context2, new PermissionManager.CheckPermissionsSuccessCallback() { // from class: com.baseflow.permissionhandler.-$$Lambda$dmmm8DBenCjBo3Fgt2Az2dG7ZxI
                @Override // com.baseflow.permissionhandler.PermissionManager.CheckPermissionsSuccessCallback
                public final void onSuccess(int i) {
                    MethodChannel.Result.this.success(Integer.valueOf(i));
                }
            });
        } else if (c == 2) {
            PermissionManager permissionManager2 = this.permissionManager;
            Activity activity = this.activity;
            Objects.requireNonNull(result);
            permissionManager2.requestPermissions((List) methodCall.arguments(), activity, new PermissionManager.RequestPermissionsSuccessCallback() { // from class: com.baseflow.permissionhandler.-$$Lambda$tkd1HTc7lzMA-RNRmpQPzCnzrNM
                @Override // com.baseflow.permissionhandler.PermissionManager.RequestPermissionsSuccessCallback
                public final void onSuccess(Map map) {
                    MethodChannel.Result.this.success(map);
                }
            }, new ErrorCallback() { // from class: com.baseflow.permissionhandler.-$$Lambda$MethodCallHandlerImpl$nBDkVfzRvSfmmA4LbPddaEjgddw
                @Override // com.baseflow.permissionhandler.ErrorCallback
                public final void onError(String str2, String str3) {
                    MethodChannel.Result.this.error(str2, str3, null);
                }
            });
        } else if (c == 3) {
            int parseInt3 = Integer.parseInt(methodCall.arguments.toString());
            PermissionManager permissionManager3 = this.permissionManager;
            Activity activity2 = this.activity;
            Objects.requireNonNull(result);
            permissionManager3.shouldShowRequestPermissionRationale(parseInt3, activity2, new PermissionManager.ShouldShowRequestPermissionRationaleSuccessCallback() { // from class: com.baseflow.permissionhandler.-$$Lambda$WNQCVwak-kfCyfzR026kfI0-xwI
                @Override // com.baseflow.permissionhandler.PermissionManager.ShouldShowRequestPermissionRationaleSuccessCallback
                public final void onSuccess(boolean z) {
                    MethodChannel.Result.this.success(Boolean.valueOf(z));
                }
            }, new ErrorCallback() { // from class: com.baseflow.permissionhandler.-$$Lambda$MethodCallHandlerImpl$M_fJsohuhGTxNaajHVl4rDteOE4
                @Override // com.baseflow.permissionhandler.ErrorCallback
                public final void onError(String str2, String str3) {
                    MethodChannel.Result.this.error(str2, str3, null);
                }
            });
        } else if (c != 4) {
            result.notImplemented();
        } else {
            AppSettingsManager appSettingsManager = this.appSettingsManager;
            Context context3 = this.applicationContext;
            Objects.requireNonNull(result);
            appSettingsManager.openAppSettings(context3, new AppSettingsManager.OpenAppSettingsSuccessCallback() { // from class: com.baseflow.permissionhandler.-$$Lambda$TR2UE6xvkpeRG17hPoBKZeEIKug
                @Override // com.baseflow.permissionhandler.AppSettingsManager.OpenAppSettingsSuccessCallback
                public final void onSuccess(boolean z) {
                    MethodChannel.Result.this.success(Boolean.valueOf(z));
                }
            }, new ErrorCallback() { // from class: com.baseflow.permissionhandler.-$$Lambda$MethodCallHandlerImpl$srvZpHfJnKwaDTQpc3Kbx-XJu_k
                @Override // com.baseflow.permissionhandler.ErrorCallback
                public final void onError(String str2, String str3) {
                    MethodChannel.Result.this.error(str2, str3, null);
                }
            });
        }
    }
}
