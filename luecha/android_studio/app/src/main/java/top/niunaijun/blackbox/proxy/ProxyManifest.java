package top.niunaijun.blackbox.proxy;

import java.util.Locale;
import top.niunaijun.blackbox.BlackBoxCore;

/* loaded from: classes4.dex */
public class ProxyManifest {
    public static final int FREE_COUNT = 100;

    public static boolean isProxy(String str) {
        return getBindProvider().equals(str) || str.contains("proxy_content_provider_");
    }

    public static String getBindProvider() {
        return BlackBoxCore.getHostPkg() + ".blackbox.SystemCallProvider";
    }

    public static String getProxyAuthorities(int i) {
        return String.format(Locale.CHINA, "%s.proxy_content_provider_%d", BlackBoxCore.getHostPkg(), Integer.valueOf(i));
    }

    public static String getProxyActivity(int i) {
        return String.format(Locale.CHINA, "top.niunaijun.blackbox.proxy.ProxyActivity$P%d", Integer.valueOf(i));
    }

    public static String getProxyFileProvider() {
        return BlackBoxCore.getHostPkg() + ".blackbox.FileProvider";
    }

    public static String getProcessName(int i) {
        return BlackBoxCore.getHostPkg() + ":p" + i;
    }
}
