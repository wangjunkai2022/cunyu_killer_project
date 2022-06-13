package com.pichillilorenzo.flutter_inappwebview;

import android.webkit.ValueCallback;
import android.webkit.WebStorage;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class MyWebStorage implements MethodChannel.MethodCallHandler {
    static final String LOG_TAG = "MyWebStorage";
    public static MethodChannel channel;
    public static WebStorage webStorageManager;

    public MyWebStorage(BinaryMessenger binaryMessenger) {
        channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_inappwebview_webstoragemanager");
        channel.setMethodCallHandler(this);
        webStorageManager = WebStorage.getInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1308548435:
                if (str.equals("getQuotaForOrigin")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1117417280:
                if (str.equals("deleteAllData")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -876677967:
                if (str.equals("deleteOrigin")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -165580329:
                if (str.equals("getOrigins")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 843309476:
                if (str.equals("getUsageForOrigin")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            getOrigins(result);
        } else if (c == 1) {
            webStorageManager.deleteAllData();
            result.success(true);
        } else if (c == 2) {
            webStorageManager.deleteOrigin((String) methodCall.argument("origin"));
            result.success(true);
        } else if (c == 3) {
            getQuotaForOrigin((String) methodCall.argument("origin"), result);
        } else if (c != 4) {
            result.notImplemented();
        } else {
            getUsageForOrigin((String) methodCall.argument("origin"), result);
        }
    }

    public void getOrigins(final MethodChannel.Result result) {
        webStorageManager.getOrigins(new ValueCallback<Map>() { // from class: com.pichillilorenzo.flutter_inappwebview.MyWebStorage.1
            public void onReceiveValue(Map map) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : map.keySet()) {
                    WebStorage.Origin origin = (WebStorage.Origin) map.get(obj);
                    HashMap hashMap = new HashMap();
                    hashMap.put("origin", origin.getOrigin());
                    hashMap.put("quota", Long.valueOf(origin.getQuota()));
                    hashMap.put("usage", Long.valueOf(origin.getUsage()));
                    arrayList.add(hashMap);
                }
                result.success(arrayList);
            }
        });
    }

    public void getQuotaForOrigin(String str, final MethodChannel.Result result) {
        webStorageManager.getQuotaForOrigin(str, new ValueCallback<Long>() { // from class: com.pichillilorenzo.flutter_inappwebview.MyWebStorage.2
            public void onReceiveValue(Long l) {
                result.success(l);
            }
        });
    }

    public void getUsageForOrigin(String str, final MethodChannel.Result result) {
        webStorageManager.getUsageForOrigin(str, new ValueCallback<Long>() { // from class: com.pichillilorenzo.flutter_inappwebview.MyWebStorage.3
            public void onReceiveValue(Long l) {
                result.success(l);
            }
        });
    }

    public void dispose() {
        channel.setMethodCallHandler(null);
    }
}
