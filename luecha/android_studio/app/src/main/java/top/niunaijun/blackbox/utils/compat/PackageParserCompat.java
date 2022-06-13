package top.niunaijun.blackbox.utils.compat;

import android.content.pm.PackageParser;
import android.util.DisplayMetrics;
import java.io.File;
import reflection.android.content.pm.PackageParserLollipop;
import reflection.android.content.pm.PackageParserLollipop22;
import reflection.android.content.pm.PackageParserMarshmallow;
import reflection.android.content.pm.PackageParserNougat;
import reflection.android.content.pm.PackageParserPie;

/* loaded from: classes4.dex */
public class PackageParserCompat {
    public static PackageParser createParser(File file) {
        if (BuildCompat.isM()) {
            return PackageParserMarshmallow.constructor.newInstance(new Object[0]);
        }
        if (BuildCompat.isL_MR1()) {
            return PackageParserLollipop22.constructor.newInstance(new Object[0]);
        }
        if (BuildCompat.isL()) {
            return PackageParserLollipop.constructor.newInstance(new Object[0]);
        }
        return reflection.android.content.pm.PackageParser.constructor.newInstance(file.getAbsolutePath());
    }

    public static PackageParser.Package parsePackage(PackageParser packageParser, File file, int i) throws Throwable {
        if (BuildCompat.isM()) {
            return PackageParserMarshmallow.parsePackage.callWithException(packageParser, file, Integer.valueOf(i));
        }
        if (BuildCompat.isL_MR1()) {
            return PackageParserLollipop22.parsePackage.callWithException(packageParser, file, Integer.valueOf(i));
        }
        if (BuildCompat.isL()) {
            return PackageParserLollipop.parsePackage.callWithException(packageParser, file, Integer.valueOf(i));
        }
        return reflection.android.content.pm.PackageParser.parsePackage.callWithException(packageParser, file, null, new DisplayMetrics(), Integer.valueOf(i));
    }

    public static void collectCertificates(PackageParser packageParser, PackageParser.Package r5, int i) throws Throwable {
        if (BuildCompat.isPie()) {
            PackageParserPie.collectCertificates.callWithException(r5, true);
        } else if (BuildCompat.isN()) {
            PackageParserNougat.collectCertificates.callWithException(r5, Integer.valueOf(i));
        } else if (BuildCompat.isM()) {
            PackageParserMarshmallow.collectCertificates.callWithException(packageParser, r5, Integer.valueOf(i));
        } else if (BuildCompat.isL_MR1()) {
            PackageParserLollipop22.collectCertificates.callWithException(packageParser, r5, Integer.valueOf(i));
        } else if (BuildCompat.isL()) {
            PackageParserLollipop.collectCertificates.callWithException(packageParser, r5, Integer.valueOf(i));
        } else {
            reflection.android.content.pm.PackageParser.collectCertificates.call(packageParser, r5, Integer.valueOf(i));
        }
    }
}
