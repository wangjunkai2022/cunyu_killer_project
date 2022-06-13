package reflection.android.content.pm;

import android.content.pm.PackageParser;
import android.util.DisplayMetrics;
import java.io.File;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class PackageParser {
    public static final MirrorReflection REF;
    public static MirrorReflection.MethodWrapper<Void> collectCertificates;
    public static MirrorReflection.ConstructorWrapper<android.content.pm.PackageParser> constructor;
    public static MirrorReflection.MethodWrapper<PackageParser.Package> parsePackage;

    static {
        MirrorReflection on = MirrorReflection.on(android.content.pm.PackageParser.class);
        REF = on;
        collectCertificates = on.method("collectCertificates", PackageParser.Package.class, Integer.TYPE);
        constructor = on.constructor(String.class);
        parsePackage = on.method("parsePackage", File.class, String.class, DisplayMetrics.class, Integer.TYPE);
    }
}
