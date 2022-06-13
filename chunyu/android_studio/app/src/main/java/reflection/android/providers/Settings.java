package reflection.android.providers;

import android.os.IInterface;
import android.provider.Settings;
import reflection.MirrorReflection;

/* loaded from: classes3.dex */
public class Settings {

    /* loaded from: classes3.dex */
    public static class Global {
        public static final MirrorReflection REF;
        public static MirrorReflection.FieldWrapper<Object> sNameValueCache;

        static {
            MirrorReflection on = MirrorReflection.on(Settings.Global.class);
            REF = on;
            sNameValueCache = on.field("sNameValueCache");
        }
    }

    /* loaded from: classes3.dex */
    public static class NameValueCache {
        public static final MirrorReflection REF;
        public static MirrorReflection.FieldWrapper<Object> mContentProvider;

        static {
            MirrorReflection on = MirrorReflection.on("android.provider.Settings$NameValueCache");
            REF = on;
            mContentProvider = on.field("mContentProvider");
        }
    }

    /* loaded from: classes3.dex */
    public static class NameValueCacheOreo {
        public static final MirrorReflection REF;
        public static MirrorReflection.FieldWrapper<Object> mProviderHolder;

        static {
            MirrorReflection on = MirrorReflection.on("android.provider.Settings$NameValueCache");
            REF = on;
            mProviderHolder = on.field("mProviderHolder");
        }
    }

    /* loaded from: classes3.dex */
    public static class ContentProviderHolder {
        public static final MirrorReflection REF;
        public static MirrorReflection.FieldWrapper<IInterface> mContentProvider;

        static {
            MirrorReflection on = MirrorReflection.on("android.provider.Settings$ContentProviderHolder");
            REF = on;
            mContentProvider = on.field("mContentProvider");
        }
    }

    /* loaded from: classes3.dex */
    public static class Secure {
        public static final MirrorReflection REF;
        public static MirrorReflection.FieldWrapper<Object> sNameValueCache;

        static {
            MirrorReflection on = MirrorReflection.on(Settings.Secure.class);
            REF = on;
            sNameValueCache = on.field("sNameValueCache");
        }
    }

    /* loaded from: classes3.dex */
    public static class System {
        public static final MirrorReflection REF;
        public static MirrorReflection.FieldWrapper<Object> sNameValueCache;

        static {
            MirrorReflection on = MirrorReflection.on(Settings.System.class);
            REF = on;
            sNameValueCache = on.field("sNameValueCache");
        }
    }
}
