package androidx.core.os;

import android.content.res.Configuration;
import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public final class ConfigurationCompat {
    private ConfigurationCompat() {
    }

    public static LocaleListCompat getLocales(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 24) {
            return LocaleListCompat.wrap(configuration.getLocales());
        }
        return LocaleListCompat.create(configuration.locale);
    }
}
