package reflection.android.content.pm;

import android.content.pm.ApplicationInfo;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class ApplicationInfoN {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<String> credentialEncryptedDataDir;
    public static MirrorReflection.FieldWrapper<String> credentialProtectedDataDir;
    public static MirrorReflection.FieldWrapper<String> deviceEncryptedDataDir;
    public static MirrorReflection.FieldWrapper<String> deviceProtectedDataDir;

    static {
        MirrorReflection on = MirrorReflection.on(ApplicationInfo.class);
        REF = on;
        deviceProtectedDataDir = on.field("deviceProtectedDataDir");
        deviceEncryptedDataDir = on.field("deviceEncryptedDataDir");
        credentialProtectedDataDir = on.field("credentialProtectedDataDir");
        credentialEncryptedDataDir = on.field("credentialEncryptedDataDir");
    }
}
