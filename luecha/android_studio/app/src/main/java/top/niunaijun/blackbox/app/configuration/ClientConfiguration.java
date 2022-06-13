package top.niunaijun.blackbox.app.configuration;

import java.io.File;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.utils.FileUtils;

/* loaded from: classes4.dex */
public abstract class ClientConfiguration {
    private File mExternalDir;

    public abstract String getHostPackageName();

    public boolean isEnableHookDump() {
        return true;
    }

    public boolean isFixCodeItem() {
        return false;
    }

    public final void init() {
        this.mExternalDir = BlackBoxCore.getContext().getExternalCacheDir().getParentFile();
    }

    public String getDexDumpDir() {
        File file = new File(this.mExternalDir, "dump");
        FileUtils.mkdirs(file);
        return file.getAbsolutePath();
    }
}
