package top.niunaijun.blackbox.core;

import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.app.BActivityThread;
import top.niunaijun.blackbox.core.env.BEnvironment;
import top.niunaijun.blackbox.entity.dump.DumpResult;
import top.niunaijun.blackbox.utils.DexUtils;
import top.niunaijun.blackbox.utils.FileUtils;
import top.niunaijun.blackbox.utils.compat.DexFileCompat;
import top.niunaijun.jnihook.MethodUtils;

/* loaded from: classes4.dex */
public class VMCore {
    public static final String TAG = "VMCoreJava";

    public static native void addIORule(String str, String str2);

    private static native void cookieDumpDex(long j, String str, boolean z);

    public static native void enableIO();

    public static int getCallingUid(int i) {
        return i;
    }

    public static native void hideXposed();

    private static native void hookDumpDex(String str);

    public static native void init(int i);

    static {
        new File("");
        System.loadLibrary("blackdex");
    }

    public static void cookieDumpDex(ClassLoader classLoader, String str) {
        int i;
        List<Long> cookies = DexFileCompat.getCookies(classLoader);
        File file = new File(BlackBoxCore.get().getDexDumpDir(), str);
        DumpResult dumpResult = new DumpResult();
        dumpResult.dir = file.getAbsolutePath();
        dumpResult.packageName = str;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int i2 = 1;
        if (availableProcessors <= 0) {
            availableProcessors = 1;
        }
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(availableProcessors);
        CountDownLatch countDownLatch = new CountDownLatch(cookies.size());
        AtomicInteger atomicInteger = new AtomicInteger(0);
        BlackBoxCore.getBDumpManager().noticeMonitor(dumpResult.dumpProcess(cookies.size(), atomicInteger.getAndIncrement()));
        int i3 = 0;
        while (i3 < cookies.size()) {
            long longValue = cookies.get(i3).longValue();
            if (longValue == 0) {
                countDownLatch.countDown();
                BlackBoxCore.getBDumpManager().noticeMonitor(dumpResult.dumpProcess(cookies.size(), atomicInteger.getAndIncrement()));
                i = i3;
            } else {
                FileUtils.mkdirs(file);
                if (atomicInteger.get() == i2) {
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException unused) {
                    }
                }
                i = i3;
                newFixedThreadPool.execute(new Runnable(longValue, file, dumpResult, cookies, atomicInteger, countDownLatch) { // from class: top.niunaijun.blackbox.core.-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI
                    public final /* synthetic */ long f$0;
                    public final /* synthetic */ File f$1;
                    public final /* synthetic */ DumpResult f$2;
                    public final /* synthetic */ List f$3;
                    public final /* synthetic */ AtomicInteger f$4;
                    public final /* synthetic */ CountDownLatch f$5;

                    {
                        this.f$0 = r1;
                        this.f$1 = r3;
                        this.f$2 = r4;
                        this.f$3 = r5;
                        this.f$4 = r6;
                        this.f$5 = r7;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        VMCore.lambda$cookieDumpDex$0(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5);
                    }
                });
            }
            i3 = i + 1;
            i2 = 1;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException unused2) {
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isFile() && file2.getAbsolutePath().endsWith(".dex")) {
                    DexUtils.fixDex(file2);
                }
            }
        }
    }

    public static /* synthetic */ void lambda$cookieDumpDex$0(long j, File file, DumpResult dumpResult, List list, AtomicInteger atomicInteger, CountDownLatch countDownLatch) {
        cookieDumpDex(j, file.getAbsolutePath(), BlackBoxCore.get().isFixCodeItem());
        BlackBoxCore.getBDumpManager().noticeMonitor(dumpResult.dumpProcess(list.size(), atomicInteger.getAndIncrement()));
        countDownLatch.countDown();
    }

    public static String redirectPath(String str) {
        return IOCore.get().redirectPath(str);
    }

    public static File redirectPath(File file) {
        return IOCore.get().redirectPath(file);
    }

    public static long[] loadEmptyDex() {
        try {
            List<Long> cookies = DexFileCompat.getCookies(new DexFile(BEnvironment.EMPTY_JAR));
            long[] jArr = new long[cookies.size()];
            for (int i = 0; i < cookies.size(); i++) {
                jArr[i] = cookies.get(i).longValue();
            }
            return jArr;
        } catch (Exception e) {
            e.printStackTrace();
            return new long[0];
        }
    }

    public static Object findMethod(String str, String str2, String str3) {
        try {
            String replace = str.replace("/", ".");
            if (replace.startsWith("L")) {
                replace = replace.substring(1);
            }
            if (replace.endsWith(";")) {
                replace = replace.substring(0, replace.length() - 1);
            }
            Class<?> cls = Class.forName(replace, false, BActivityThread.getApplication().getClassLoader());
            if ("<init>".equals(str2)) {
                Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
                for (Constructor<?> constructor : declaredConstructors) {
                    if (str3.equals(MethodUtils.getDesc(constructor))) {
                        return constructor;
                    }
                }
            }
            try {
                Method[] declaredMethods = cls.getDeclaredMethods();
                for (Method method : declaredMethods) {
                    if (method.getName().equals(str2) && MethodUtils.getDesc(method).equals(str3)) {
                        return method;
                    }
                }
            } catch (Throwable unused) {
            }
            Method[] methods = cls.getMethods();
            for (Method method2 : methods) {
                if (method2.getName().equals(str2) && MethodUtils.getDesc(method2).equals(str3)) {
                    return method2;
                }
            }
            return null;
        } catch (Throwable unused2) {
            return null;
        }
    }
}
