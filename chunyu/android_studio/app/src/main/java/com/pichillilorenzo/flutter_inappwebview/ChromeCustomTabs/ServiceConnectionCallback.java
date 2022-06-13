package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import androidx.browser.customtabs.CustomTabsClient;

/* loaded from: classes2.dex */
public interface ServiceConnectionCallback {
    void onServiceConnected(CustomTabsClient customTabsClient);

    void onServiceDisconnected();
}
