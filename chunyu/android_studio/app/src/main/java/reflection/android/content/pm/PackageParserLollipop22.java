package reflection.android.content.pm;

import android.content.pm.PackageParser;
import java.io.File;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class PackageParserLollipop22 {
    public static final MirrorReflection REF;
    public static MirrorReflection.MethodWrapper<Void> collectCertificates;
    public static MirrorReflection.ConstructorWrapper<PackageParser> constructor;
    public static MirrorReflection.MethodWrapper<PackageParser.Package> parsePackage;

    static {
        MirrorReflection on = MirrorReflection.on(PackageParser.class);
        REF = on;
        collectCertificates = on.method("collectCertificates", PackageParser.Package.class, Integer.TYPE);
        constructor = on.constructor(new Class[0]);
        parsePackage = on.method("parsePackage", File.class, Integer.TYPE);
    }
}
