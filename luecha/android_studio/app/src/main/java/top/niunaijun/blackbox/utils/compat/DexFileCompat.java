package top.niunaijun.blackbox.utils.compat;

import dalvik.system.DexFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import top.niunaijun.blackbox.utils.Reflector;

/* loaded from: classes4.dex */
public class DexFileCompat {
    public static final String TAG = "DexFileCompat";

    public static List<String> getClassNameList(ClassLoader classLoader) {
        ArrayList arrayList = new ArrayList();
        try {
            for (DexFile dexFile : getDexFiles(classLoader)) {
                arrayList.addAll(Arrays.asList(getClassNameList(Reflector.with(dexFile).field("mCookie").get())));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    private static String[] getClassNameList(Object obj) {
        try {
            if (BuildCompat.isM()) {
                return (String[]) Reflector.on(DexFile.class).method("getClassNameList", Object.class).call(obj);
            }
            return (String[]) Reflector.on(DexFile.class).method("getClassNameList", Long.TYPE).call(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<Long> getCookies(ClassLoader classLoader) {
        ArrayList arrayList = new ArrayList();
        for (DexFile dexFile : getDexFiles(classLoader)) {
            arrayList.addAll(getCookies(dexFile));
        }
        return arrayList;
    }

    public static List<Long> getCookies(DexFile dexFile) {
        ArrayList arrayList = new ArrayList();
        if (dexFile == null) {
            return arrayList;
        }
        try {
            Object obj = Reflector.with(dexFile).field("mCookie").get();
            if (BuildCompat.isM()) {
                for (long j : (long[]) obj) {
                    arrayList.add(Long.valueOf(j));
                }
            } else {
                arrayList.add(Long.valueOf(((Long) obj).longValue()));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    private static List<DexFile> getDexFiles(ClassLoader classLoader) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : getDexElements(classLoader)) {
            try {
                arrayList.add(Reflector.with(obj).field("dexFile").get());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    private static Object[] getDexElements(ClassLoader classLoader) {
        Object dexPathList = getDexPathList(classLoader);
        if (dexPathList == null) {
            return new Object[0];
        }
        try {
            return (Object[]) Reflector.with(dexPathList).field("dexElements").get();
        } catch (Exception e) {
            e.printStackTrace();
            return new Object[0];
        }
    }

    private static Object getDexPathList(ClassLoader classLoader) {
        try {
            return Reflector.on("dalvik.system.BaseDexClassLoader").field("pathList").get(classLoader);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
