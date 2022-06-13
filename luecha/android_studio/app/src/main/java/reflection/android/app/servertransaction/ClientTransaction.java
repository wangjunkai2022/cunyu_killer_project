package reflection.android.app.servertransaction;

import java.util.List;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class ClientTransaction {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<List<Object>> mActivityCallbacks;

    static {
        MirrorReflection on = MirrorReflection.on("android.app.servertransaction.ClientTransaction");
        REF = on;
        mActivityCallbacks = on.field("mActivityCallbacks");
    }
}
