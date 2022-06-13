package reflection.android.os;

import android.os.Bundle;
import android.os.Parcel;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class BundleICS {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<Parcel> mParcelledData;

    static {
        MirrorReflection on = MirrorReflection.on(Bundle.class);
        REF = on;
        mParcelledData = on.field("mParcelledData");
    }
}
