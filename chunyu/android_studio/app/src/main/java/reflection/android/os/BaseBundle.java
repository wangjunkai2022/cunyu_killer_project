package reflection.android.os;

import android.os.Parcel;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class BaseBundle {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<Parcel> mParcelledData;

    static {
        MirrorReflection on = MirrorReflection.on("android.os.BaseBundle");
        REF = on;
        mParcelledData = on.field("mParcelledData");
    }
}
