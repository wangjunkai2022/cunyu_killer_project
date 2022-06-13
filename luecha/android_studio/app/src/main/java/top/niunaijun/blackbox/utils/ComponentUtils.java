package top.niunaijun.blackbox.utils;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.ProviderInfo;
import java.util.Objects;
import top.niunaijun.blackbox.app.BActivityThread;

/* loaded from: classes4.dex */
public class ComponentUtils {
    public static boolean isRequestInstall(Intent intent) {
        return "application/vnd.android.package-archive".equals(intent.getType());
    }

    public static boolean isSelf(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null || BActivityThread.getAppPackageName() == null) {
            return false;
        }
        return component.getPackageName().equals(BActivityThread.getAppPackageName());
    }

    public static boolean isSelf(Intent[] intentArr) {
        for (Intent intent : intentArr) {
            if (!isSelf(intent)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isGmsService(Intent intent) {
        return "com.google.android.gms".equals(intent.getPackage());
    }

    public static String getTaskAffinity(ActivityInfo activityInfo) {
        if (activityInfo.launchMode == 3) {
            return "-SingleInstance-" + activityInfo.packageName + "/" + activityInfo.name;
        } else if (activityInfo.taskAffinity == null && activityInfo.applicationInfo.taskAffinity == null) {
            return activityInfo.packageName;
        } else {
            if (activityInfo.taskAffinity != null) {
                return activityInfo.taskAffinity;
            }
            return activityInfo.applicationInfo.taskAffinity;
        }
    }

    public static String getFirstAuthority(ProviderInfo providerInfo) {
        if (providerInfo == null) {
            return null;
        }
        String[] split = providerInfo.authority.split(";");
        return split.length == 0 ? providerInfo.authority : split[0];
    }

    public static boolean intentFilterEquals(Intent intent, Intent intent2) {
        if (intent == null || intent2 == null) {
            return true;
        }
        if (!Objects.equals(intent.getAction(), intent2.getAction()) || !Objects.equals(intent.getData(), intent2.getData()) || !Objects.equals(intent.getType(), intent2.getType())) {
            return false;
        }
        String str = intent.getPackage();
        if (str == null && intent.getComponent() != null) {
            str = intent.getComponent().getPackageName();
        }
        String str2 = intent2.getPackage();
        if (str2 == null && intent2.getComponent() != null) {
            str2 = intent2.getComponent().getPackageName();
        }
        if (Objects.equals(str, str2) && Objects.equals(intent.getComponent(), intent2.getComponent()) && Objects.equals(intent.getCategories(), intent2.getCategories())) {
            return true;
        }
        return false;
    }

    public static String getProcessName(ComponentInfo componentInfo) {
        String str = componentInfo.processName;
        if (str != null) {
            return str;
        }
        String str2 = componentInfo.packageName;
        componentInfo.processName = str2;
        return str2;
    }

    public static boolean isSameComponent(ComponentInfo componentInfo, ComponentInfo componentInfo2) {
        if (componentInfo == null || componentInfo2 == null) {
            return false;
        }
        String str = componentInfo.packageName + "";
        String str2 = componentInfo2.packageName + "";
        String str3 = componentInfo.name + "";
        String str4 = componentInfo2.name + "";
        if (!str.equals(str2) || !str3.equals(str4)) {
            return false;
        }
        return true;
    }

    public static ComponentName toComponentName(ComponentInfo componentInfo) {
        return new ComponentName(componentInfo.packageName, componentInfo.name);
    }
}
