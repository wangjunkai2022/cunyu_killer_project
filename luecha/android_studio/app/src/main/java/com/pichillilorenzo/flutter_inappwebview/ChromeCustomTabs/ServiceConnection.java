package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.content.ComponentName;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ServiceConnection extends CustomTabsServiceConnection {
    private WeakReference<ServiceConnectionCallback> mConnectionCallback;

    public ServiceConnection(ServiceConnectionCallback serviceConnectionCallback) {
        this.mConnectionCallback = new WeakReference<>(serviceConnectionCallback);
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        ServiceConnectionCallback serviceConnectionCallback = this.mConnectionCallback.get();
        if (serviceConnectionCallback != null) {
            serviceConnectionCallback.onServiceConnected(customTabsClient);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        ServiceConnectionCallback serviceConnectionCallback = this.mConnectionCallback.get();
        if (serviceConnectionCallback != null) {
            serviceConnectionCallback.onServiceDisconnected();
        }
    }
}
