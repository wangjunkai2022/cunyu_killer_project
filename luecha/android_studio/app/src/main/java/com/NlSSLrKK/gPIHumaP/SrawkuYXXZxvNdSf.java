package com.NlSSLrKK.gPIHumaP;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.internal.ImagesContract;
import com.pichillilorenzo.flutter_inappwebview.Shared;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: ActionBroadcastReceiver.java */
/* loaded from: classes5.dex */
public class SrawkuYXXZxvNdSf extends BroadcastReceiver {
    public static final String KEY_ACTION_ID = "com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_ID";
    public static final String KEY_ACTION_UUID = "com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_UUID";
    public static final String KEY_URL_TITLE = "android.intent.extra.SUBJECT";
    protected static final String LOG_TAG = "ActionBroadcastReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String dataString = intent.getDataString();
        if (dataString != null) {
            Bundle extras = intent.getExtras();
            String string = extras.getString("com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_UUID");
            int i = extras.getInt("com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_ID");
            String string2 = extras.getString("android.intent.extra.SUBJECT");
            BinaryMessenger binaryMessenger = Shared.messenger;
            MethodChannel methodChannel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_chromesafaribrowser_" + string);
            HashMap hashMap = new HashMap();
            hashMap.put(ImagesContract.URL, dataString);
            hashMap.put("title", string2);
            hashMap.put("id", Integer.valueOf(i));
            methodChannel.invokeMethod("onChromeSafariBrowserMenuItemActionPerform", hashMap);
        }
    }
}
