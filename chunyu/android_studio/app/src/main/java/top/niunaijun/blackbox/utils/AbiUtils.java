package top.niunaijun.blackbox.utils;

import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import top.niunaijun.blackbox.BlackBoxCore;

/* loaded from: classes3.dex */
public class AbiUtils {
    private static final Map<File, AbiUtils> sAbiUtilsMap = new HashMap();
    private final Set<String> mLibs;

    public static boolean isSupport(File file) {
        Map<File, AbiUtils> map = sAbiUtilsMap;
        AbiUtils abiUtils = map.get(file);
        if (abiUtils == null) {
            abiUtils = new AbiUtils(file);
            map.put(file, abiUtils);
        }
        if (abiUtils.isEmptyAib()) {
            return true;
        }
        if (BlackBoxCore.is64Bit()) {
            return abiUtils.is64Bit();
        }
        return abiUtils.is32Bit();
    }

    public AbiUtils(File file) {
        Throwable th;
        ZipFile zipFile;
        Exception e;
        ZipFile zipFile2;
        try {
            this.mLibs = new HashSet();
            zipFile = null;
            try {
                zipFile2 = new ZipFile(file);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            Enumeration<? extends ZipEntry> entries = zipFile2.entries();
            while (entries.hasMoreElements()) {
                String name = ((ZipEntry) entries.nextElement()).getName();
                if (name.startsWith("lib/arm64-v8a")) {
                    this.mLibs.add("arm64-v8a");
                } else if (name.startsWith("lib/armeabi")) {
                    this.mLibs.add("armeabi");
                } else if (name.startsWith("lib/armeabi-v7a")) {
                    this.mLibs.add("armeabi-v7a");
                }
            }
            CloseUtils.close(zipFile2);
        } catch (Exception e3) {
            e = e3;
            zipFile = zipFile2;
            e.printStackTrace();
            CloseUtils.close(zipFile);
        } catch (Throwable th3) {
            th = th3;
            zipFile = zipFile2;
            CloseUtils.close(zipFile);
            throw th;
        }
    }

    public boolean is64Bit() {
        return this.mLibs.contains("arm64-v8a");
    }

    public boolean is32Bit() {
        return this.mLibs.contains("armeabi") || this.mLibs.contains("armeabi-v7a");
    }

    public boolean isEmptyAib() {
        return this.mLibs.isEmpty();
    }
}
