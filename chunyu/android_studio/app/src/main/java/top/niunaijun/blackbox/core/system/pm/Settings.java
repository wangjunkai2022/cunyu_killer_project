package top.niunaijun.blackbox.core.system.pm;

import android.content.pm.PackageParser;
import android.os.Parcel;
import android.util.ArrayMap;
import android.util.AtomicFile;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.env.BEnvironment;
import top.niunaijun.blackbox.core.system.BProcessManager;
import top.niunaijun.blackbox.utils.FileUtils;
import top.niunaijun.blackbox.utils.Slog;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Settings {
    public static final String TAG = "Settings";
    private final Map<String, Integer> mAppIds = new HashMap();
    private int mCurrUid = 0;
    final ArrayMap<String, BPackageSettings> mPackages;

    public Settings() {
        ArrayMap<String, BPackageSettings> arrayMap = new ArrayMap<>();
        this.mPackages = arrayMap;
        synchronized (arrayMap) {
            loadUidLP();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BPackageSettings getPackageLPw(String str, PackageParser.Package r6) {
        BPackageSettings bPackageSettings = new BPackageSettings();
        bPackageSettings.pkg = new BPackage(r6);
        bPackageSettings.pkg.mExtras = bPackageSettings;
        bPackageSettings.pkg.applicationInfo = PackageManagerCompat.generateApplicationInfo(bPackageSettings.pkg, 0, BPackageUserState.create(), 0);
        synchronized (this.mPackages) {
            BPackageSettings bPackageSettings2 = this.mPackages.get(str);
            if (bPackageSettings2 != null) {
                bPackageSettings.appId = bPackageSettings2.appId;
                bPackageSettings.userState = bPackageSettings2.userState;
            } else if (!registerAppIdLPw(bPackageSettings)) {
                throw new RuntimeException("registerAppIdLPw err.");
            }
        }
        return bPackageSettings;
    }

    boolean registerAppIdLPw(BPackageSettings bPackageSettings) {
        boolean z;
        boolean z2 = false;
        if (bPackageSettings.appId == 0) {
            bPackageSettings.appId = acquireAndRegisterNewAppIdLPw(bPackageSettings);
            z = true;
        } else {
            z = false;
        }
        if (bPackageSettings.appId >= 0) {
            z2 = z;
        }
        saveUidLP();
        return z2;
    }

    private int acquireAndRegisterNewAppIdLPw(BPackageSettings bPackageSettings) {
        Integer num = this.mAppIds.get(bPackageSettings.pkg.packageName);
        if (num != null) {
            return num.intValue();
        }
        int i = this.mCurrUid;
        if (i >= 19999) {
            return -1;
        }
        this.mCurrUid = i + 1;
        this.mAppIds.put(bPackageSettings.pkg.packageName, Integer.valueOf(this.mCurrUid));
        return this.mCurrUid + 10000;
    }

    private void saveUidLP() {
        Parcel obtain;
        try {
            obtain = Parcel.obtain();
            AtomicFile atomicFile = new AtomicFile(BEnvironment.getUidConf());
            FileOutputStream fileOutputStream = null;
            try {
                Set<String> keySet = this.mPackages.keySet();
                Iterator it = new HashSet(this.mAppIds.keySet()).iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (!keySet.contains(str)) {
                        this.mAppIds.remove(str);
                    }
                }
                obtain.writeInt(this.mCurrUid);
                obtain.writeMap(this.mAppIds);
                fileOutputStream = atomicFile.startWrite();
                FileUtils.writeParcelToOutput(obtain, fileOutputStream);
                atomicFile.finishWrite(fileOutputStream);
            } catch (Exception e) {
                e.printStackTrace();
                atomicFile.failWrite(fileOutputStream);
            }
        } finally {
            obtain.recycle();
        }
    }

    private void loadUidLP() {
        Parcel obtain = Parcel.obtain();
        try {
            byte[] byteArray = FileUtils.toByteArray(BEnvironment.getUidConf());
            obtain.unmarshall(byteArray, 0, byteArray.length);
            obtain.setDataPosition(0);
            this.mCurrUid = obtain.readInt();
            HashMap readHashMap = obtain.readHashMap(HashMap.class.getClassLoader());
            synchronized (this.mAppIds) {
                this.mAppIds.clear();
                this.mAppIds.putAll(readHashMap);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
        obtain.recycle();
    }

    public void scanPackage() {
        synchronized (this.mPackages) {
            File appRootDir = BEnvironment.getAppRootDir();
            FileUtils.mkdirs(appRootDir);
            File[] listFiles = appRootDir.listFiles();
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    updatePackageLP(file);
                }
            }
        }
    }

    private void updatePackageLP(File file) {
        String name = file.getName();
        Parcel obtain = Parcel.obtain();
        try {
            byte[] byteArray = FileUtils.toByteArray(BEnvironment.getPackageConf(name));
            obtain.unmarshall(byteArray, 0, byteArray.length);
            obtain.setDataPosition(0);
            BPackageSettings bPackageSettings = new BPackageSettings(obtain);
            if (bPackageSettings.installOption.isFlag(1)) {
                String str = BlackBoxCore.getPackageManager().getPackageInfo(name, 128).applicationInfo.sourceDir;
                if (!str.equals(bPackageSettings.pkg.baseCodePath)) {
                    BProcessManager.get().killAllByPackageName(bPackageSettings.pkg.packageName);
                    bPackageSettings.pkg.baseCodePath = str;
                    BPackageInstallerService.get().updatePackage(bPackageSettings);
                }
            }
            bPackageSettings.pkg.mExtras = bPackageSettings;
            bPackageSettings.pkg.applicationInfo = PackageManagerCompat.generateApplicationInfo(bPackageSettings.pkg, 0, BPackageUserState.create(), 0);
            bPackageSettings.save();
            this.mPackages.put(bPackageSettings.pkg.packageName, bPackageSettings);
            Slog.d(TAG, "loaded Package: " + name);
        } finally {
            try {
            } finally {
            }
        }
    }
}
