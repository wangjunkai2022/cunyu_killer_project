package reflection.android.content.pm;

import android.os.Parcelable;
import java.util.List;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class ParceledListSliceJBMR2 {
    public static final MirrorReflection REF;
    public static MirrorReflection.ConstructorWrapper<Parcelable> constructor;

    static {
        MirrorReflection on = MirrorReflection.on("android.content.pm.ParceledListSlice");
        REF = on;
        constructor = on.constructor(List.class);
    }
}
