package reflection.android.content.pm;

import android.content.pm.ApplicationInfo;
import reflection.MirrorReflection;

/* loaded from: classes4.dex */
public class ApplicationInfoL {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<String> primaryCpuAbi;
    public static MirrorReflection.FieldWrapper<String> scanPublicSourceDir;
    public static MirrorReflection.FieldWrapper<String> scanSourceDir;
    public static MirrorReflection.FieldWrapper<String> secondaryCpuAbi;
    public static MirrorReflection.FieldWrapper<String[]> splitPublicSourceDirs;

    static {
        MirrorReflection on = MirrorReflection.on(ApplicationInfo.class);
        REF = on;
        primaryCpuAbi = on.field("primaryCpuAbi");
        scanPublicSourceDir = on.field("scanPublicSourceDir");
        scanSourceDir = on.field("scanSourceDir");
        secondaryCpuAbi = on.field("secondaryCpuAbi");
        splitPublicSourceDirs = on.field("splitPublicSourceDirs");
    }
}
