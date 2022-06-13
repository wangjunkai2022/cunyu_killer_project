package io.flutter.plugins.imagepicker;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
final class ImagePickerUtils {
    ImagePickerUtils() {
    }

    private static boolean isPermissionPresentInManifest(Context context, String str) {
        try {
            return Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions).contains(str);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean needRequestCameraPermission(Context context) {
        return (Build.VERSION.SDK_INT >= 23) && isPermissionPresentInManifest(context, "android.permission.CAMERA");
    }
}
