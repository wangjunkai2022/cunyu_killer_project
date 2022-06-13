package reflection.android.os;

import android.os.Handler;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class Handler {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<Handler.Callback> mCallback;

    static {
        MirrorReflection on = MirrorReflection.on(android.os.Handler.class);
        REF = on;
        mCallback = on.field("mCallback");
    }
}
