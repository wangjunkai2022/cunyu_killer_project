package io.flutter.plugins.imagepicker;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import io.flutter.plugin.common.MethodCall;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
class ImagePickerCache {
    private static final String FLUTTER_IMAGE_PICKER_IMAGE_PATH_KEY = "flutter_image_picker_image_path";
    private static final String MAP_KEY_ERROR_CODE = "errorCode";
    private static final String MAP_KEY_ERROR_MESSAGE = "errorMessage";
    static final String MAP_KEY_IMAGE_QUALITY = "imageQuality";
    static final String MAP_KEY_MAX_HEIGHT = "maxHeight";
    static final String MAP_KEY_MAX_WIDTH = "maxWidth";
    static final String MAP_KEY_PATH = "path";
    static final String MAP_KEY_PATH_LIST = "pathList";
    private static final String MAP_KEY_TYPE = "type";
    static final String SHARED_PREFERENCES_NAME = "flutter_image_picker_shared_preference";
    private static final String SHARED_PREFERENCE_ERROR_CODE_KEY = "flutter_image_picker_error_code";
    private static final String SHARED_PREFERENCE_ERROR_MESSAGE_KEY = "flutter_image_picker_error_message";
    private static final String SHARED_PREFERENCE_IMAGE_QUALITY_KEY = "flutter_image_picker_image_quality";
    private static final String SHARED_PREFERENCE_MAX_HEIGHT_KEY = "flutter_image_picker_max_height";
    private static final String SHARED_PREFERENCE_MAX_WIDTH_KEY = "flutter_image_picker_max_width";
    private static final String SHARED_PREFERENCE_PENDING_IMAGE_URI_PATH_KEY = "flutter_image_picker_pending_image_uri";
    private static final String SHARED_PREFERENCE_TYPE_KEY = "flutter_image_picker_type";
    private SharedPreferences prefs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImagePickerCache(Context context) {
        this.prefs = context.getSharedPreferences("flutter_image_picker_shared_preference", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void saveTypeWithMethodCallName(String str) {
        if (str.equals("pickImage") || str.equals("pickMultiImage")) {
            setType("image");
        } else if (str.equals("pickVideo")) {
            setType("video");
        }
    }

    private void setType(String str) {
        this.prefs.edit().putString("flutter_image_picker_type", str).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void saveDimensionWithMethodCall(MethodCall methodCall) {
        int i;
        Double d = (Double) methodCall.argument("maxWidth");
        Double d2 = (Double) methodCall.argument("maxHeight");
        if (methodCall.argument("imageQuality") == null) {
            i = 100;
        } else {
            i = ((Integer) methodCall.argument("imageQuality")).intValue();
        }
        setMaxDimension(d, d2, i);
    }

    private void setMaxDimension(Double d, Double d2, int i) {
        SharedPreferences.Editor edit = this.prefs.edit();
        if (d != null) {
            edit.putLong("flutter_image_picker_max_width", Double.doubleToRawLongBits(d.doubleValue()));
        }
        if (d2 != null) {
            edit.putLong("flutter_image_picker_max_height", Double.doubleToRawLongBits(d2.doubleValue()));
        }
        if (i <= -1 || i >= 101) {
            edit.putInt("flutter_image_picker_image_quality", 100);
        } else {
            edit.putInt("flutter_image_picker_image_quality", i);
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void savePendingCameraMediaUriPath(Uri uri) {
        this.prefs.edit().putString("flutter_image_picker_pending_image_uri", uri.getPath()).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String retrievePendingCameraMediaUriPath() {
        return this.prefs.getString("flutter_image_picker_pending_image_uri", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void saveResult(ArrayList<String> arrayList, String str, String str2) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(arrayList);
        SharedPreferences.Editor edit = this.prefs.edit();
        if (arrayList != null) {
            edit.putStringSet("flutter_image_picker_image_path", hashSet);
        }
        if (str != null) {
            edit.putString("flutter_image_picker_error_code", str);
        }
        if (str2 != null) {
            edit.putString("flutter_image_picker_error_message", str2);
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.prefs.edit().clear().apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> getCacheMap() {
        boolean z;
        Set<String> stringSet;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        if (!this.prefs.contains("flutter_image_picker_image_path") || (stringSet = this.prefs.getStringSet("flutter_image_picker_image_path", null)) == null) {
            z = false;
        } else {
            arrayList.addAll(stringSet);
            hashMap.put("pathList", arrayList);
            z = true;
        }
        if (this.prefs.contains("flutter_image_picker_error_code")) {
            hashMap.put("errorCode", this.prefs.getString("flutter_image_picker_error_code", ""));
            if (this.prefs.contains("flutter_image_picker_error_message")) {
                hashMap.put("errorMessage", this.prefs.getString("flutter_image_picker_error_message", ""));
            }
            z = true;
        }
        if (z) {
            if (this.prefs.contains("flutter_image_picker_type")) {
                hashMap.put("type", this.prefs.getString("flutter_image_picker_type", ""));
            }
            if (this.prefs.contains("flutter_image_picker_max_width")) {
                hashMap.put("maxWidth", Double.valueOf(Double.longBitsToDouble(this.prefs.getLong("flutter_image_picker_max_width", 0))));
            }
            if (this.prefs.contains("flutter_image_picker_max_height")) {
                hashMap.put("maxHeight", Double.valueOf(Double.longBitsToDouble(this.prefs.getLong("flutter_image_picker_max_height", 0))));
            }
            if (this.prefs.contains("flutter_image_picker_image_quality")) {
                hashMap.put("imageQuality", Integer.valueOf(this.prefs.getInt("flutter_image_picker_image_quality", 100)));
            } else {
                hashMap.put("imageQuality", 100);
            }
        }
        return hashMap;
    }
}
