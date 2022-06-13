package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class TPLoadLibFromApk {
    private static final HashMap<String, WeakReference<ClassLoader>> mLoadedLibs = new HashMap<>();
    private static Context mContext = null;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class LibraryBrokenHandler implements Thread.UncaughtExceptionHandler {
        private Thread.UncaughtExceptionHandler mParent;

        LibraryBrokenHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.mParent = uncaughtExceptionHandler;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            boolean z = false;
            if ((th instanceof UnsatisfiedLinkError) || ((th instanceof NoSuchMethodError) && th.getMessage().matches(".*sig(nature)?[=:].*"))) {
                try {
                    TPLoadLibFromApk.extractAllLibraries(TPLoadLibFromApk.mContext);
                    z = true;
                } catch (Exception unused) {
                }
            }
            if (z) {
                th = new UnsatisfiedLinkError("Invalid so detected and recovered.").initCause(th);
            }
            this.mParent.uncaughtException(thread, th);
        }
    }

    private TPLoadLibFromApk() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void extractAllLibraries(Context context) {
        if (context != null) {
            List<String> generateAbiList = generateAbiList();
            File dir = context.getDir("recover_lib", 0);
            ZipFile zipFile = new ZipFile(context.getApplicationInfo().sourceDir);
            try {
                HashSet hashSet = new HashSet();
                Pattern compile = Pattern.compile("lib/[A-Za-z0-9-_=]+/lib([A-Za-z0-9-_=]+)\\.so");
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry zipEntry = (ZipEntry) entries.nextElement();
                    String name = zipEntry.getName();
                    if (!TextUtils.isEmpty(name) && name.contains("../")) {
                        throw new Exception("contain ../, throw err");
                    }
                    Matcher matcher = compile.matcher(zipEntry.getName());
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        if (!hashSet.contains(group)) {
                            extractLibrary(zipFile, group, generateAbiList, new File(dir, "lib" + group + ".so"));
                            hashSet.add(group);
                        }
                    }
                }
            } finally {
                zipFile.close();
            }
        }
    }

    private static boolean extractLibrary(ZipFile zipFile, String str, List<String> list, File file) {
        if (file.isFile()) {
            return true;
        }
        Iterator<String> it = list.iterator();
        if (!it.hasNext()) {
            return false;
        }
        ZipEntry entry = zipFile.getEntry("lib/" + it.next() + "/lib" + str + ".so");
        if (entry == null) {
            return false;
        }
        String name = entry.getName();
        if (!TextUtils.isEmpty(name) && name.contains("../")) {
            return false;
        }
        InputStream inputStream = zipFile.getInputStream(entry);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[2048];
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, bArr.length);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        file.setReadOnly();
                        return true;
                    } catch (Throwable unused) {
                        return false;
                    }
                }
            } finally {
                inputStream.close();
                fileOutputStream.close();
            }
        }
    }

    public static String find(String str, Context context) {
        String str2 = null;
        if (context == null) {
            return null;
        }
        try {
            ClassLoader classLoader = TPLoadLibFromApk.class.getClassLoader();
            Method declaredMethod = ClassLoader.class.getDeclaredMethod("findLibrary", String.class);
            declaredMethod.setAccessible(true);
            str2 = (String) declaredMethod.invoke(classLoader, str);
        } catch (Exception unused) {
        }
        if (str2 != null) {
            return str2;
        }
        File dir = context.getDir("recover_lib", 0);
        File file = new File(dir, "lib" + str + ".so");
        return file.canRead() ? file.getAbsolutePath() : str2;
    }

    private static List<String> generateAbiList() {
        ArrayList arrayList = new ArrayList(3);
        Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
        String str = (String) method.invoke(null, "ro.product.cpu.abi");
        if (str != null && str.length() > 0) {
            arrayList.add(str);
        }
        String str2 = (String) method.invoke(null, "ro.product.cpu.abi2");
        if (str2 != null && str2.length() > 0) {
            arrayList.add(str2);
        }
        arrayList.add("armeabi");
        return arrayList;
    }

    public static boolean load(String str, ClassLoader classLoader, Context context) {
        if (str == null || str.length() == 0 || classLoader == null) {
            return false;
        }
        mContext = context;
        synchronized (mLoadedLibs) {
            ClassLoader classLoader2 = null;
            WeakReference<ClassLoader> weakReference = mLoadedLibs.get(str);
            if (weakReference != null) {
                classLoader2 = weakReference.get();
            }
            if (classLoader2 != null) {
                if (classLoader2 == classLoader) {
                    TPNativeLog.printLog(2, "callerClassLoader has already load ! name=" + str);
                    return true;
                }
                throw new UnsatisfiedLinkError("Library '" + str + "' was loaded by a different ClassLoader.");
            } else if (context == null) {
                try {
                    TPNativeLog.printLog(2, "context is null,load by System.loadLibrary,name= " + str);
                    reflectSystemLoadLibrary(str, classLoader);
                    synchronized (mLoadedLibs) {
                        mLoadedLibs.put(str, new WeakReference<>(classLoader));
                    }
                    return true;
                } catch (InvocationTargetException e) {
                    throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed loading library: " + str).initCause(e.getCause()));
                } catch (Exception e2) {
                    throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed loading library: " + str).initCause(e2));
                }
            } else {
                File dir = context.getDir("recover_lib", 0);
                File file = new File(dir, "lib" + str + ".so");
                UnsatisfiedLinkError loadFromRecovery = loadFromRecovery(str, classLoader, context, file);
                if (loadFromRecovery == null) {
                    return true;
                }
                return loadFromApk(str, classLoader, context, file, loadFromRecovery);
            }
        }
    }

    private static boolean loadFromApk(String str, ClassLoader classLoader, Context context, File file, UnsatisfiedLinkError unsatisfiedLinkError) {
        Throwable th;
        Exception e;
        String str2;
        ZipFile zipFile = null;
        try {
            try {
                str2 = context.getApplicationInfo().sourceDir;
                zipFile = new ZipFile(str2);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            TPNativeLog.printLog(2, "unzip apk,name= " + str + "apkPath=" + str2);
            if (extractLibrary(zipFile, str, generateAbiList(), file)) {
                try {
                    zipFile.close();
                    try {
                        TPNativeLog.printLog(2, "load from unzip apk,name= " + str);
                        reflectSystemLoad(file.getAbsolutePath(), classLoader);
                        synchronized (mLoadedLibs) {
                            mLoadedLibs.put(str, new WeakReference<>(classLoader));
                        }
                        return true;
                    } catch (InvocationTargetException e3) {
                        if (unsatisfiedLinkError == null) {
                            throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed recovering native library: " + str).initCause(e3.getCause()));
                        }
                        throw unsatisfiedLinkError;
                    } catch (Exception e4) {
                        if (unsatisfiedLinkError == null) {
                            throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed recovering native library.").initCause(e4));
                        }
                        throw unsatisfiedLinkError;
                    }
                } catch (IOException unused) {
                    return false;
                }
            } else {
                throw new RuntimeException("Can't find recover library: " + str);
            }
        } catch (Exception e5) {
            e = e5;
            zipFile = zipFile;
            throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed recovering native library.").initCause(e));
        } catch (Throwable th3) {
            th = th3;
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (IOException unused2) {
                    return false;
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private static java.lang.UnsatisfiedLinkError loadFromRecovery(java.lang.String r4, java.lang.ClassLoader r5, android.content.Context r6, java.io.File r7) {
        /*
        // Method dump skipped, instructions count: 294
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPLoadLibFromApk.loadFromRecovery(java.lang.String, java.lang.ClassLoader, android.content.Context, java.io.File):java.lang.UnsatisfiedLinkError");
    }

    private static void reflectSystemLoad(String str, ClassLoader classLoader) {
        Runtime runtime = Runtime.getRuntime();
        Method declaredMethod = runtime.getClass().getDeclaredMethod("load", String.class, ClassLoader.class);
        declaredMethod.setAccessible(true);
        declaredMethod.invoke(runtime, str, classLoader);
    }

    private static void reflectSystemLoadLibrary(String str, ClassLoader classLoader) {
        Runtime runtime = Runtime.getRuntime();
        Method declaredMethod = runtime.getClass().getDeclaredMethod("loadLibrary", String.class, ClassLoader.class);
        declaredMethod.setAccessible(true);
        declaredMethod.invoke(runtime, str, classLoader);
    }

    public static void setupBrokenLibraryHandler() {
        Thread.setDefaultUncaughtExceptionHandler(new LibraryBrokenHandler(Thread.getDefaultUncaughtExceptionHandler()));
    }
}
