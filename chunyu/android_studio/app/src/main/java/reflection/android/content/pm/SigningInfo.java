package reflection.android.content.pm;

import android.content.pm.PackageParser;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class SigningInfo {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<PackageParser.SigningDetails> mSigningDetails;

    static {
        MirrorReflection on = MirrorReflection.on("android.content.pm.SigningInfo");
        REF = on;
        mSigningDetails = on.field("mSigningDetails");
    }
}
