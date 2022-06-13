package top.niunaijun.blackbox.utils.compat;

import android.os.Parcelable;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import reflection.android.content.pm.ParceledListSlice;
import reflection.android.content.pm.ParceledListSliceJBMR2;

/* loaded from: classes3.dex */
public class ParceledListSliceCompat {
    public static boolean isReturnParceledListSlice(Method method) {
        return method != null && method.getReturnType() == ParceledListSlice.REF.getClazz();
    }

    public static boolean isParceledListSlice(Object obj) {
        return obj != null && obj.getClass() == ParceledListSlice.REF.getClazz();
    }

    public static Object create(List<?> list) {
        if (ParceledListSliceJBMR2.constructor != null) {
            return ParceledListSliceJBMR2.constructor.newInstance(list);
        }
        Parcelable newInstance = ParceledListSlice.constructor.newInstance(new Object[0]);
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            ParceledListSlice.append.call(newInstance, it.next());
        }
        ParceledListSlice.setLastSlice.call(newInstance, true);
        return newInstance;
    }
}
