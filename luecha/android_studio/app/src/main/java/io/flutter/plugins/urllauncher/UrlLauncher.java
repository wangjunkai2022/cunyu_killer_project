package io.flutter.plugins.urllauncher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.NlSSLrKK.gPIHumaP.GopqXVGWklgRwUHZ;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
class UrlLauncher {
    private static final String TAG = "UrlLauncher";
    private Activity activity;
    private final Context applicationContext;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    enum LaunchStatus {
        OK,
        NO_ACTIVITY,
        ACTIVITY_NOT_FOUND
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UrlLauncher(Context context, Activity activity) {
        this.applicationContext = context;
        this.activity = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean canLaunch(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        ComponentName resolveActivity = intent.resolveActivity(this.applicationContext.getPackageManager());
        if (resolveActivity == null) {
            Log.i("UrlLauncher", "component name for " + str + " is null");
            return false;
        }
        Log.i("UrlLauncher", "component name for " + str + " is " + resolveActivity.toShortString());
        return !"{com.android.fallback/com.android.fallback.Fallback}".equals(resolveActivity.toShortString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LaunchStatus launch(String str, Bundle bundle, boolean z, boolean z2, boolean z3) {
        Intent intent;
        Activity activity = this.activity;
        if (activity == null) {
            return LaunchStatus.NO_ACTIVITY;
        }
        if (z) {
            intent = GopqXVGWklgRwUHZ.createIntent(activity, str, z2, z3, bundle);
        } else {
            intent = new Intent("android.intent.action.VIEW").setData(Uri.parse(str)).putExtra("com.android.browser.headers", bundle);
        }
        try {
            this.activity.startActivity(intent);
            return LaunchStatus.OK;
        } catch (ActivityNotFoundException unused) {
            return LaunchStatus.ACTIVITY_NOT_FOUND;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void closeWebView() {
        this.applicationContext.sendBroadcast(new Intent(GopqXVGWklgRwUHZ.ACTION_CLOSE));
    }
}
