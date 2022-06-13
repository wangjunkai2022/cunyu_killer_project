package reflection.libcore.io;

import com.umeng.analytics.pro.ai;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class Libcore {
    public static final String NAME = "libcore.io.Libcore";
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<Object> os;

    static {
        MirrorReflection on = MirrorReflection.on(NAME);
        REF = on;
        os = on.field(ai.x);
    }
}
