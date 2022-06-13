package reflection.android.content;

import android.content.pm.ProviderInfo;
import android.os.IInterface;
import com.umeng.analytics.pro.c;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class ContentProviderHolderOreo {
    public static final MirrorReflection REF;
    public static MirrorReflection.FieldWrapper<ProviderInfo> info;
    public static MirrorReflection.FieldWrapper<IInterface> provider;

    static {
        MirrorReflection on = MirrorReflection.on("android.app.ContentProviderHolder");
        REF = on;
        info = on.field("info");
        provider = on.field(c.M);
    }
}
