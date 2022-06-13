package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import androidx.browser.customtabs.CustomTabsClient;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ServiceConnectionCallback {
    void onServiceConnected(CustomTabsClient customTabsClient);

    void onServiceDisconnected();
}
