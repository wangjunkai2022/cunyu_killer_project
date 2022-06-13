package top.niunaijun.blackbox.core.env;

import android.content.ComponentName;
import java.util.ArrayList;
import java.util.List;
import top.niunaijun.blackbox.BlackBoxCore;

/* loaded from: classes4.dex */
public class AppSystemEnv {
    private static final List<String> sPreInstallPackages;
    private static final List<String> sSuPackages;
    private static final List<String> sSystemPackages;
    private static final List<String> sXposedPackages;

    public static boolean isBlackPackage(String str) {
        return false;
    }

    static {
        ArrayList arrayList = new ArrayList();
        sSystemPackages = arrayList;
        ArrayList arrayList2 = new ArrayList();
        sSuPackages = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        sXposedPackages = arrayList3;
        ArrayList arrayList4 = new ArrayList();
        sPreInstallPackages = arrayList4;
        arrayList.add("android");
        arrayList.add("com.google.android.webview");
        arrayList.add("com.google.android.webview.dev");
        arrayList.add("com.google.android.webview.beta");
        arrayList.add("com.google.android.webview.canary");
        arrayList.add("com.android.webview");
        arrayList.add("com.android.camera");
        arrayList.add(BlackBoxCore.getHostPkg());
        arrayList.add("com.huawei.webview");
        arrayList.add("com.coloros.safecenter");
        arrayList2.add("com.noshufou.android.su");
        arrayList2.add("com.noshufou.android.su.elite");
        arrayList2.add("eu.chainfire.supersu");
        arrayList2.add("com.koushikdutta.superuser");
        arrayList2.add("com.thirdparty.superuser");
        arrayList2.add("com.yellowes.su");
        arrayList3.add("de.robv.android.xposed.installer");
        arrayList4.add("com.huawei.hwid");
    }

    public static boolean isOpenPackage(String str) {
        return sSystemPackages.contains(str);
    }

    public static boolean isOpenPackage(ComponentName componentName) {
        return componentName != null && isOpenPackage(componentName.getPackageName());
    }

    public static List<String> getPreInstallPackages() {
        return sPreInstallPackages;
    }
}
