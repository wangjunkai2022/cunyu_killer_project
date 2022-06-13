package top.niunaijun.blackbox.core.env;

import java.io.File;
import java.util.Locale;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.utils.FileUtils;

/* loaded from: classes3.dex */
public class BEnvironment {
    private static final File sVirtualRoot = new File(BlackBoxCore.getContext().getCacheDir().getParent(), "virtual");
    private static final File sExternalVirtualRoot = BlackBoxCore.getContext().getExternalFilesDir("virtual");
    public static File JUNIT_JAR = new File(getCacheDir(), "junit.apk");
    public static File EMPTY_JAR = new File(getCacheDir(), "empty.apk");
    public static File VM_JAR = new File(getCacheDir(), "vm.apk");

    public static void load() {
        FileUtils.mkdirs(sVirtualRoot);
        FileUtils.mkdirs(sExternalVirtualRoot);
        FileUtils.mkdirs(getSystemDir());
        FileUtils.mkdirs(getCacheDir());
    }

    public static File getVirtualRoot() {
        return sVirtualRoot;
    }

    public static File getExternalVirtualRoot() {
        return sExternalVirtualRoot;
    }

    public static File getSystemDir() {
        return new File(sVirtualRoot, "system");
    }

    public static File getCacheDir() {
        return new File(sVirtualRoot, "cache");
    }

    public static File getUserInfoConf() {
        return new File(getSystemDir(), "user.conf");
    }

    public static File getUidConf() {
        return new File(getSystemDir(), "uid.conf");
    }

    public static File getXPModuleConf() {
        return new File(getSystemDir(), "xposed-module.conf");
    }

    public static File getPackageConf(String str) {
        return new File(getAppDir(str), "package.conf");
    }

    public static File getExternalUserDir(int i) {
        return new File(sExternalVirtualRoot, String.format(Locale.CHINA, "storage/emulated/%d/", Integer.valueOf(i)));
    }

    public static File getUserDir(int i) {
        return new File(sVirtualRoot, String.format(Locale.CHINA, "data/user/%d", Integer.valueOf(i)));
    }

    public static File getDeDataDir(String str, int i) {
        return new File(sVirtualRoot, String.format(Locale.CHINA, "data/user_de/%d/%s", Integer.valueOf(i), str));
    }

    public static File getExternalDataDir(String str, int i) {
        return new File(getExternalUserDir(i), String.format(Locale.CHINA, "Android/data/%s", str));
    }

    public static File getDataDir(String str, int i) {
        return new File(sVirtualRoot, String.format(Locale.CHINA, "data/user/%d/%s", Integer.valueOf(i), str));
    }

    public static File getExternalDataFilesDir(String str, int i) {
        return new File(getExternalDataDir(str, i), "files");
    }

    public static File getDataFilesDir(String str, int i) {
        return new File(getDataDir(str, i), "files");
    }

    public static File getExternalDataCacheDir(String str, int i) {
        return new File(getExternalDataDir(str, i), "cache");
    }

    public static File getDataCacheDir(String str, int i) {
        return new File(getDataDir(str, i), "cache");
    }

    public static File getDataLibDir(String str, int i) {
        return new File(getDataDir(str, i), "lib");
    }

    public static File getDataDatabasesDir(String str, int i) {
        return new File(getDataDir(str, i), "databases");
    }

    public static File getAppRootDir() {
        return getAppDir("");
    }

    public static File getAppDir(String str) {
        File file = sVirtualRoot;
        return new File(file, "data/app/" + str);
    }

    public static File getBaseApkDir(String str) {
        File file = sVirtualRoot;
        return new File(file, "data/app/" + str + "/base.apk");
    }

    public static File getAppLibDir(String str) {
        return new File(getAppDir(str), "lib");
    }
}
