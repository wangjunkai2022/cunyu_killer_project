package dev.fluttercommunity.plus.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class Connectivity {
    static final String CONNECTIVITY_BLUETOOTH = "bluetooth";
    static final String CONNECTIVITY_ETHERNET = "ethernet";
    static final String CONNECTIVITY_MOBILE = "mobile";
    static final String CONNECTIVITY_NONE = "none";
    static final String CONNECTIVITY_WIFI = "wifi";
    private final ConnectivityManager connectivityManager;

    public Connectivity(ConnectivityManager connectivityManager) {
        this.connectivityManager = connectivityManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNetworkType() {
        if (Build.VERSION.SDK_INT >= 23) {
            NetworkCapabilities networkCapabilities = this.connectivityManager.getNetworkCapabilities(this.connectivityManager.getActiveNetwork());
            if (networkCapabilities == null) {
                return "none";
            }
            if (networkCapabilities.hasTransport(1)) {
                return "wifi";
            }
            if (networkCapabilities.hasTransport(3)) {
                return "ethernet";
            }
            if (networkCapabilities.hasTransport(0)) {
                return "mobile";
            }
            if (networkCapabilities.hasTransport(2)) {
                return "bluetooth";
            }
        }
        return getNetworkTypeLegacy();
    }

    private String getNetworkTypeLegacy() {
        NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "none";
        }
        int type = activeNetworkInfo.getType();
        if (type == 0) {
            return "mobile";
        }
        if (type == 1) {
            return "wifi";
        }
        if (type == 4 || type == 5) {
            return "mobile";
        }
        if (type == 6) {
            return "wifi";
        }
        if (type == 7) {
            return "bluetooth";
        }
        if (type != 9) {
            return "none";
        }
        return "ethernet";
    }

    public ConnectivityManager getConnectivityManager() {
        return this.connectivityManager;
    }
}
