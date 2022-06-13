package top.niunaijun.blackbox.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.app.BActivityThread;
import top.niunaijun.blackbox.utils.FileUtils;

/* loaded from: classes4.dex */
public class IOCore {
    private final Map<String, String> mRedirectMap = new LinkedHashMap();
    private static final IOCore sIOCore = new IOCore();
    private static final Map<String, Map<String, String>> sCachePackageRedirect = new HashMap();

    public static IOCore get() {
        return sIOCore;
    }

    public void addRedirect(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && this.mRedirectMap.get(str) == null) {
            this.mRedirectMap.put(str, str2);
            if (!new File(str2).exists()) {
                FileUtils.mkdirs(str2);
            }
            VMCore.addIORule(str, str2);
        }
    }

    public String redirectPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        for (String str2 : this.mRedirectMap.keySet()) {
            if (str.startsWith(str2)) {
                CharSequence charSequence = this.mRedirectMap.get(str2);
                Objects.requireNonNull(charSequence);
                return str.replace(str2, charSequence);
            }
        }
        return str;
    }

    public File redirectPath(File file) {
        if (file == null) {
            return null;
        }
        return new File(redirectPath(file.getAbsolutePath()));
    }

    public String redirectPath(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        for (String str2 : map.keySet()) {
            if (str.startsWith(str2)) {
                CharSequence charSequence = map.get(str2);
                Objects.requireNonNull(charSequence);
                return str.replace(str2, charSequence);
            }
        }
        return str;
    }

    public File redirectPath(File file, Map<String, String> map) {
        if (file == null) {
            return null;
        }
        return new File(redirectPath(file.getAbsolutePath(), map));
    }

    public void enableRedirect(Context context) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String packageName = context.getPackageName();
        try {
            ApplicationInfo applicationInfo = BlackBoxCore.getBPackageManager().getApplicationInfo(packageName, 128, BActivityThread.getUserId());
            linkedHashMap.put("/data/data/" + packageName + "/lib", applicationInfo.nativeLibraryDir);
            linkedHashMap.put("/data/user/0/" + packageName + "/lib", applicationInfo.nativeLibraryDir);
            StringBuilder sb = new StringBuilder();
            sb.append("/data/data/");
            sb.append(packageName);
            linkedHashMap.put(sb.toString(), applicationInfo.dataDir);
            linkedHashMap.put("/data/user/0/" + packageName, applicationInfo.dataDir);
            if (!(BlackBoxCore.getContext().getExternalCacheDir() == null || context.getExternalCacheDir() == null)) {
                File parentFile = context.getExternalCacheDir().getParentFile();
                linkedHashMap.put("/sdcard/Android/data/" + packageName, parentFile.getAbsolutePath());
                linkedHashMap.put("/sdcard/android/data/" + packageName, parentFile.getAbsolutePath());
                linkedHashMap.put("/storage/emulated/0/android/data/" + packageName, parentFile.getAbsolutePath());
                linkedHashMap.put("/storage/emulated/0/Android/data/" + packageName, parentFile.getAbsolutePath());
                linkedHashMap.put("/storage/emulated/0/Android/data/" + packageName + "/files", new File(parentFile.getAbsolutePath(), "files").getAbsolutePath());
                linkedHashMap.put("/storage/emulated/0/Android/data/" + packageName + "/cache", new File(parentFile.getAbsolutePath(), "cache").getAbsolutePath());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        for (String str : linkedHashMap.keySet()) {
            get().addRedirect(str, (String) linkedHashMap.get(str));
        }
        VMCore.enableIO();
    }
}
