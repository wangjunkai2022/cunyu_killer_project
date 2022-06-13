package com.kiwi.sdk;

import android.content.Context;
import android.util.Log;
import java.io.File;

/* loaded from: classes2.dex */
public class Kiwi {
    public static native int init(String str);

    public static native int init_appname(String str);

    public static native int init_cache(String str);

    public static native void restart_all_server();

    public static native String server_to_local(String str);

    public static int Init(String str) {
        String str2;
        String str3;
        Log.d("kiwitest", "Kiwi init ");
        Context context = ContextHelp.getContext();
        if (context != null) {
            File cacheDir = context.getCacheDir();
            if (cacheDir != null) {
                init_cache(cacheDir.toString());
            }
            try {
                str2 = context.getApplicationInfo().loadLabel(context.getPackageManager()).toString().replace(' ', '-').replace('#', '-');
                str3 = context.getPackageName();
            } catch (Exception unused) {
                str2 = "DefaultAppName";
                str3 = "DefaultPkgName";
            }
            init_appname(str2 + "##" + str3);
        }
        return init(str);
    }

    public static int ServerToLocal(String str, StringBuffer stringBuffer, StringBuffer stringBuffer2) {
        String[] split = server_to_local(str).split("\\|");
        if (split.length != 3) {
            return -12;
        }
        stringBuffer.setLength(0);
        stringBuffer.append(split[1]);
        stringBuffer2.setLength(0);
        stringBuffer2.append(split[2]);
        try {
            return Integer.parseInt(split[0]);
        } catch (NumberFormatException unused) {
            Log.d("kiwitest", "parse int failed " + split[0]);
            return -12;
        }
    }

    public static void RestartAllServer() {
        restart_all_server();
    }

    static {
        System.loadLibrary("kiwi");
    }
}
