package dev.fluttercommunity.plus.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;

/* loaded from: classes2.dex */
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
                return CONNECTIVITY_WIFI;
            }
            if (networkCapabilities.hasTransport(3)) {
                return CONNECTIVITY_ETHERNET;
            }
            if (networkCapabilities.hasTransport(0)) {
                return CONNECTIVITY_MOBILE;
            }
            if (networkCapabilities.hasTransport(2)) {
                return CONNECTIVITY_BLUETOOTH;
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
            return CONNECTIVITY_MOBILE;
        }
        if (type == 1) {
            return CONNECTIVITY_WIFI;
        }
        if (type == 4 || type == 5) {
            return CONNECTIVITY_MOBILE;
        }
        if (type == 6) {
            return CONNECTIVITY_WIFI;
        }
        if (type == 7) {
            return CONNECTIVITY_BLUETOOTH;
        }
        if (type != 9) {
            return "none";
        }
        return CONNECTIVITY_ETHERNET;
    }

    public ConnectivityManager getConnectivityManager() {
        return this.connectivityManager;
    }
}
