package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class CustomTabActivityHelper implements ServiceConnectionCallback {
    private CustomTabsClient mClient;
    private CustomTabsServiceConnection mConnection;
    private ConnectionCallback mConnectionCallback;
    private CustomTabsCallback mCustomTabsCallback;
    private CustomTabsSession mCustomTabsSession;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface ConnectionCallback {
        void onCustomTabsConnected();

        void onCustomTabsDisconnected();
    }

    public static void openCustomTab(Activity activity, CustomTabsIntent customTabsIntent, Uri uri, int i) {
        customTabsIntent.intent.setData(uri);
        activity.startActivityForResult(customTabsIntent.intent, i);
    }

    public static boolean isAvailable(Activity activity) {
        return CustomTabsHelper.getPackageNameToUse(activity) != null;
    }

    public void unbindCustomTabsService(Activity activity) {
        CustomTabsServiceConnection customTabsServiceConnection = this.mConnection;
        if (customTabsServiceConnection != null) {
            activity.unbindService(customTabsServiceConnection);
            this.mClient = null;
            this.mCustomTabsSession = null;
            this.mConnection = null;
        }
    }

    public CustomTabsSession getSession() {
        CustomTabsClient customTabsClient = this.mClient;
        if (customTabsClient == null) {
            this.mCustomTabsSession = null;
        } else if (this.mCustomTabsSession == null) {
            this.mCustomTabsSession = customTabsClient.newSession(this.mCustomTabsCallback);
        }
        return this.mCustomTabsSession;
    }

    public void setConnectionCallback(ConnectionCallback connectionCallback) {
        this.mConnectionCallback = connectionCallback;
    }

    public void setCustomTabsCallback(CustomTabsCallback customTabsCallback) {
        this.mCustomTabsCallback = customTabsCallback;
    }

    public void bindCustomTabsService(Activity activity) {
        String packageNameToUse;
        if (this.mClient == null && (packageNameToUse = CustomTabsHelper.getPackageNameToUse(activity)) != null) {
            this.mConnection = new ServiceConnection(this);
            CustomTabsClient.bindCustomTabsService(activity, packageNameToUse, this.mConnection);
        }
    }

    public boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        CustomTabsSession session;
        if (this.mClient == null || (session = getSession()) == null) {
            return false;
        }
        return session.mayLaunchUrl(uri, bundle, list);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ServiceConnectionCallback
    public void onServiceConnected(CustomTabsClient customTabsClient) {
        this.mClient = customTabsClient;
        this.mClient.warmup(0);
        ConnectionCallback connectionCallback = this.mConnectionCallback;
        if (connectionCallback != null) {
            connectionCallback.onCustomTabsConnected();
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ServiceConnectionCallback
    public void onServiceDisconnected() {
        this.mClient = null;
        this.mCustomTabsSession = null;
        ConnectionCallback connectionCallback = this.mConnectionCallback;
        if (connectionCallback != null) {
            connectionCallback.onCustomTabsDisconnected();
        }
    }
}
