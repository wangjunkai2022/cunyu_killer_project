package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.NlSSLrKK.gPIHumaP.GvTFQjxVwkecXbjr;
import com.NlSSLrKK.gPIHumaP.jNXkEhXpdcfKnlyJ;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.CustomTabActivityHelper;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserOptions;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ChromeSafariBrowserManager implements MethodChannel.MethodCallHandler {
    protected static final String LOG_TAG = "ChromeBrowserManager";
    public MethodChannel channel;

    public ChromeSafariBrowserManager(BinaryMessenger binaryMessenger) {
        this.channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_chromesafaribrowser");
        this.channel.setMethodCallHandler(this);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        Activity activity = Shared.activity;
        String str = (String) methodCall.argument("uuid");
        String str2 = methodCall.method;
        int hashCode = str2.hashCode();
        if (hashCode != 3417674) {
            if (hashCode == 444517567 && str2.equals("isAvailable")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_OPEN)) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            open(activity, str, (String) methodCall.argument(ImagesContract.URL), (HashMap) methodCall.argument("options"), (List) methodCall.argument("menuItemList"), (String) methodCall.argument("uuidFallback"), (Map) methodCall.argument("headersFallback"), (HashMap) methodCall.argument("optionsFallback"), (HashMap) methodCall.argument("contextMenuFallback"), (Integer) methodCall.argument("windowIdFallback"), result);
        } else if (c != 1) {
            result.notImplemented();
        } else {
            result.success(Boolean.valueOf(CustomTabActivityHelper.isAvailable(activity)));
        }
    }

    public void open(Activity activity, String str, String str2, HashMap<String, Object> hashMap, List<HashMap<String, Object>> list, String str3, Map<String, String> map, HashMap<String, Object> hashMap2, HashMap<String, Object> hashMap3, Integer num, MethodChannel.Result result) {
        Intent intent;
        Bundle bundle = new Bundle();
        bundle.putString("fromActivity", activity.getClass().getName());
        bundle.putString(ImagesContract.URL, str2);
        bundle.putBoolean("isData", false);
        bundle.putString("uuid", str);
        bundle.putSerializable("options", hashMap);
        bundle.putSerializable("menuItemList", (Serializable) list);
        bundle.putSerializable("headers", (Serializable) map);
        bundle.putSerializable("contextMenu", hashMap3);
        bundle.putInt("windowId", num != null ? num.intValue() : -1);
        if (CustomTabActivityHelper.isAvailable(activity)) {
            intent = new Intent(activity, jNXkEhXpdcfKnlyJ.class);
        } else if (CustomTabActivityHelper.isAvailable(activity) || str3 == null) {
            intent = null;
        } else {
            Log.d("ChromeBrowserManager", "WebView fallback declared.");
            bundle.putString("uuid", str3);
            if (hashMap2 != null) {
                bundle.putSerializable("options", hashMap2);
            } else {
                bundle.putSerializable("options", (Serializable) new InAppBrowserOptions().toMap());
            }
            intent = new Intent(activity, GvTFQjxVwkecXbjr.class);
        }
        if (intent != null) {
            intent.putExtras(bundle);
            activity.startActivity(intent);
            result.success(true);
            return;
        }
        result.error("ChromeBrowserManager", "No WebView fallback declared.", null);
    }

    public void dispose() {
        this.channel.setMethodCallHandler(null);
    }
}
