package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.NlSSLrKK.gPIHumaP.GvTFQjxVwkecXbjr;
import com.google.android.gms.common.internal.ImagesContract;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class InAppBrowserManager implements MethodChannel.MethodCallHandler {
    protected static final String LOG_TAG = "InAppBrowserManager";
    public MethodChannel channel;

    public InAppBrowserManager(BinaryMessenger binaryMessenger) {
        this.channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_inappbrowser");
        this.channel.setMethodCallHandler(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        Activity activity = Shared.activity;
        String str = (String) methodCall.argument("uuid");
        String str2 = methodCall.method;
        switch (str2.hashCode()) {
            case -2119567959:
                if (str2.equals("openWithSystemBrowser")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1263203643:
                if (str2.equals("openUrl")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -505129708:
                if (str2.equals("openData")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -505062682:
                if (str2.equals("openFile")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            openUrl(activity, str, (String) methodCall.argument(ImagesContract.URL), (HashMap) methodCall.argument("options"), (Map) methodCall.argument("headers"), (HashMap) methodCall.argument("contextMenu"), (Integer) methodCall.argument("windowId"), (Map) methodCall.argument("closeButtonOptions"));
            result.success(true);
        } else if (c == 1) {
            String str3 = (String) methodCall.argument(ImagesContract.URL);
            try {
                openUrl(activity, str, Util.getUrlAsset(str3), (HashMap) methodCall.argument("options"), (Map) methodCall.argument("headers"), (HashMap) methodCall.argument("contextMenu"), (Integer) methodCall.argument("windowId"));
                result.success(true);
            } catch (IOException e) {
                e.printStackTrace();
                result.error("InAppBrowserManager", str3 + " asset file cannot be found!", e);
            }
        } else if (c == 2) {
            openData(activity, str, (HashMap) methodCall.argument("options"), (String) methodCall.argument("data"), (String) methodCall.argument("mimeType"), (String) methodCall.argument("encoding"), (String) methodCall.argument("baseUrl"), (String) methodCall.argument("historyUrl"), (HashMap) methodCall.argument("contextMenu"), (Integer) methodCall.argument("windowId"));
            result.success(true);
        } else if (c != 3) {
            result.notImplemented();
        } else {
            openWithSystemBrowser(activity, (String) methodCall.argument(ImagesContract.URL), result);
        }
    }

    public static String getMimeType(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        }
        return null;
    }

    public void openWithSystemBrowser(Activity activity, String str, MethodChannel.Result result) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            Uri parse = Uri.parse(str);
            if ("file".equals(parse.getScheme())) {
                intent.setDataAndType(parse, getMimeType(str));
            } else {
                intent.setData(parse);
            }
            intent.putExtra("com.android.browser.application_id", activity.getPackageName());
            openExternalExcludeCurrentApp(activity, intent);
            result.success(true);
        } catch (RuntimeException e) {
            Log.d("InAppBrowserManager", str + " cannot be opened: " + e.toString());
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" cannot be opened!");
            result.error("InAppBrowserManager", sb.toString(), null);
        }
    }

    public void openExternalExcludeCurrentApp(Activity activity, Intent intent) {
        String packageName = activity.getPackageName();
        List<ResolveInfo> queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            if (!packageName.equals(resolveInfo.activityInfo.packageName)) {
                Intent intent2 = (Intent) intent.clone();
                intent2.setPackage(resolveInfo.activityInfo.packageName);
                arrayList.add(intent2);
            } else {
                z = true;
            }
        }
        if (!z || arrayList.size() == 0) {
            activity.startActivity(intent);
        } else if (arrayList.size() == 1) {
            activity.startActivity((Intent) arrayList.get(0));
        } else if (arrayList.size() > 0) {
            Intent createChooser = Intent.createChooser((Intent) arrayList.remove(arrayList.size() - 1), null);
            createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
            activity.startActivity(createChooser);
        }
    }

    public void openUrl(Activity activity, String str, String str2, HashMap<String, Object> hashMap, Map<String, String> map, HashMap<String, Object> hashMap2, Integer num) {
        openUrl(activity, str, str2, hashMap, map, hashMap2, num, null);
    }

    public void openUrl(Activity activity, String str, String str2, HashMap<String, Object> hashMap, Map<String, String> map, HashMap<String, Object> hashMap2, Integer num, Map<String, String> map2) {
        Bundle bundle = new Bundle();
        bundle.putString("fromActivity", activity.getClass().getName());
        bundle.putString(ImagesContract.URL, str2);
        bundle.putBoolean("isData", false);
        bundle.putString("uuid", str);
        bundle.putSerializable("options", hashMap);
        bundle.putSerializable("headers", (Serializable) map);
        bundle.putSerializable("contextMenu", hashMap2);
        bundle.putInt("windowId", num != null ? num.intValue() : -1);
        bundle.putSerializable("closeButtonOptions", (Serializable) map2);
        startInAppBrowserActivity(activity, bundle);
    }

    public void openData(Activity activity, String str, HashMap<String, Object> hashMap, String str2, String str3, String str4, String str5, String str6, HashMap<String, Object> hashMap2, Integer num) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("isData", true);
        bundle.putString("uuid", str);
        bundle.putSerializable("options", hashMap);
        bundle.putString("data", str2);
        bundle.putString("mimeType", str3);
        bundle.putString("encoding", str4);
        bundle.putString("baseUrl", str5);
        bundle.putString("historyUrl", str6);
        bundle.putSerializable("contextMenu", hashMap2);
        bundle.putInt("windowId", num != null ? num.intValue() : -1);
        startInAppBrowserActivity(activity, bundle);
    }

    public void startInAppBrowserActivity(Activity activity, Bundle bundle) {
        Intent intent = new Intent(activity, GvTFQjxVwkecXbjr.class);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        activity.startActivity(intent);
    }

    public void dispose() {
        this.channel.setMethodCallHandler(null);
    }
}
