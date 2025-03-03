package reflection.android.content.pm;

import android.content.pm.PackageParser;
import android.util.DisplayMetrics;
import java.io.File;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class PackageParserJellyBean17 {
    public static final MirrorReflection REF;
    public static MirrorReflection.MethodWrapper<Void> collectCertificates;
    public static MirrorReflection.ConstructorWrapper<PackageParser> constructor;
    public static MirrorReflection.MethodWrapper<PackageParser.Package> parsePackage;

    static {
        MirrorReflection on = MirrorReflection.on(PackageParser.class);
        REF = on;
        collectCertificates = on.method("collectCertificates", PackageParser.Package.class, Integer.TYPE);
        constructor = on.constructor(String.class);
        parsePackage = on.method("parsePackage", File.class, String.class, DisplayMetrics.class, Integer.TYPE);
    }
}
