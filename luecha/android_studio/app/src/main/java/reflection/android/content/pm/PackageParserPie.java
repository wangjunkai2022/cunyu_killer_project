package reflection.android.content.pm;

import android.content.pm.PackageParser;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class PackageParserPie {
    public static final MirrorReflection REF;
    public static MirrorReflection.StaticMethodWrapper<Void> collectCertificates;

    static {
        MirrorReflection on = MirrorReflection.on(PackageParser.class);
        REF = on;
        collectCertificates = on.staticMethod("collectCertificates", PackageParser.Package.class, Boolean.TYPE);
    }
}
