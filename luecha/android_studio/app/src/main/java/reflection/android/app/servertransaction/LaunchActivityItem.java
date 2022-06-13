package reflection.android.app.servertransaction;

import android.content.Intent;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class LaunchActivityItem {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<Intent> mIntent;

    static {
        MirrorReflection on = MirrorReflection.on("android.app.servertransaction.LaunchActivityItem");
        REF = on;
        mIntent = on.field("mIntent");
    }
}
