package top.niunaijun.blackbox.utils;

import android.os.Process;
import java.util.Arrays;
import java.util.HashSet;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.app.BActivityThread;

/* loaded from: classes3.dex */
public class MethodParameterUtils {
    public static String replaceFirstAppPkg(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        for (int i = 0; i < objArr.length; i++) {
            if (objArr[i] instanceof String) {
                String str = (String) objArr[i];
                if (BlackBoxCore.get().isInstalled(str)) {
                    objArr[i] = BlackBoxCore.getHostPkg();
                    return str;
                }
            }
        }
        return null;
    }

    public static void replaceLastUserId(Object[] objArr) {
        int indexOfLast = ArrayUtils.indexOfLast(objArr, Integer.class);
        if (indexOfLast != -1 && ((Integer) objArr[indexOfLast]).intValue() == BActivityThread.getUid()) {
            objArr[indexOfLast] = Integer.valueOf(Process.myUid());
        }
    }

    public static Class<?>[] getAllInterface(Class cls) {
        HashSet hashSet = new HashSet();
        getAllInterfaces(cls, hashSet);
        Class<?>[] clsArr = new Class[hashSet.size()];
        hashSet.toArray(clsArr);
        return clsArr;
    }

    public static void getAllInterfaces(Class cls, HashSet<Class<?>> hashSet) {
        Class<?>[] interfaces = cls.getInterfaces();
        if (interfaces.length != 0) {
            hashSet.addAll(Arrays.asList(interfaces));
        }
        if (cls.getSuperclass() != Object.class) {
            getAllInterfaces(cls.getSuperclass(), hashSet);
        }
    }
}
