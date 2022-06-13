package androidx.core.graphics;

import android.graphics.Typeface;
import com.google.android.exoplayer2.C;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public class TypefaceCompatApi28Impl extends TypefaceCompatApi26Impl {
    private static final String CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD = "createFromFamiliesWithDefault";
    private static final String DEFAULT_FAMILY = "sans-serif";
    private static final int RESOLVE_BY_FONT_TABLE = -1;

    @Override // androidx.core.graphics.TypefaceCompatApi26Impl
    protected Typeface createFromFamiliesWithDefault(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.mFontFamily, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.mCreateFromFamiliesWithDefault.invoke(null, newInstance, C.SANS_SERIF_NAME, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatApi26Impl
    protected Method obtainCreateFromFamiliesWithDefaultMethod(Class<?> cls) throws NoSuchMethodException {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), String.class, Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
