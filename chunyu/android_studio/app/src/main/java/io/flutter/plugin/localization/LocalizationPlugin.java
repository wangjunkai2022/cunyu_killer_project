package io.flutter.plugin.localization;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import io.flutter.embedding.engine.systemchannels.LocalizationChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class LocalizationPlugin {
    private final Context context;
    private final LocalizationChannel localizationChannel;
    final LocalizationChannel.LocalizationMessageHandler localizationMessageHandler = new LocalizationChannel.LocalizationMessageHandler() { // from class: io.flutter.plugin.localization.LocalizationPlugin.1
        /* JADX WARN: Removed duplicated region for block: B:11:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x006a  */
        @Override // io.flutter.embedding.engine.systemchannels.LocalizationChannel.LocalizationMessageHandler
        /* Code decompiled incorrectly, please refer to instructions dump */
        public java.lang.String getStringResource(java.lang.String r8, java.lang.String r9) {
            /*
                r7 = this;
                io.flutter.plugin.localization.LocalizationPlugin r0 = io.flutter.plugin.localization.LocalizationPlugin.this
                android.content.Context r0 = io.flutter.plugin.localization.LocalizationPlugin.access$000(r0)
                r1 = 17
                r2 = 0
                if (r9 == 0) goto L_0x004a
                java.util.Locale r3 = io.flutter.plugin.localization.LocalizationPlugin.localeFromString(r9)
                int r4 = android.os.Build.VERSION.SDK_INT
                if (r4 < r1) goto L_0x0034
                android.content.res.Configuration r0 = new android.content.res.Configuration
                io.flutter.plugin.localization.LocalizationPlugin r4 = io.flutter.plugin.localization.LocalizationPlugin.this
                android.content.Context r4 = io.flutter.plugin.localization.LocalizationPlugin.access$000(r4)
                android.content.res.Resources r4 = r4.getResources()
                android.content.res.Configuration r4 = r4.getConfiguration()
                r0.<init>(r4)
                r0.setLocale(r3)
                io.flutter.plugin.localization.LocalizationPlugin r3 = io.flutter.plugin.localization.LocalizationPlugin.this
                android.content.Context r3 = io.flutter.plugin.localization.LocalizationPlugin.access$000(r3)
                android.content.Context r0 = r3.createConfigurationContext(r0)
                goto L_0x004a
            L_0x0034:
                io.flutter.plugin.localization.LocalizationPlugin r4 = io.flutter.plugin.localization.LocalizationPlugin.this
                android.content.Context r4 = io.flutter.plugin.localization.LocalizationPlugin.access$000(r4)
                android.content.res.Resources r4 = r4.getResources()
                android.content.res.Configuration r5 = r4.getConfiguration()
                java.util.Locale r6 = r5.locale
                r5.locale = r3
                r4.updateConfiguration(r5, r2)
                goto L_0x004b
            L_0x004a:
                r6 = r2
            L_0x004b:
                io.flutter.plugin.localization.LocalizationPlugin r3 = io.flutter.plugin.localization.LocalizationPlugin.this
                android.content.Context r3 = io.flutter.plugin.localization.LocalizationPlugin.access$000(r3)
                java.lang.String r3 = r3.getPackageName()
                android.content.res.Resources r4 = r0.getResources()
                java.lang.String r5 = "string"
                int r8 = r4.getIdentifier(r8, r5, r3)
                if (r8 == 0) goto L_0x006a
                android.content.res.Resources r0 = r0.getResources()
                java.lang.String r8 = r0.getString(r8)
                goto L_0x006b
            L_0x006a:
                r8 = r2
            L_0x006b:
                if (r9 == 0) goto L_0x0084
                int r9 = android.os.Build.VERSION.SDK_INT
                if (r9 >= r1) goto L_0x0084
                io.flutter.plugin.localization.LocalizationPlugin r9 = io.flutter.plugin.localization.LocalizationPlugin.this
                android.content.Context r9 = io.flutter.plugin.localization.LocalizationPlugin.access$000(r9)
                android.content.res.Resources r9 = r9.getResources()
                android.content.res.Configuration r0 = r9.getConfiguration()
                r0.locale = r6
                r9.updateConfiguration(r0, r2)
            L_0x0084:
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugin.localization.LocalizationPlugin.AnonymousClass1.getStringResource(java.lang.String, java.lang.String):java.lang.String");
        }
    };

    public LocalizationPlugin(Context context, LocalizationChannel localizationChannel) {
        this.context = context;
        this.localizationChannel = localizationChannel;
        this.localizationChannel.setLocalizationMessageHandler(this.localizationMessageHandler);
    }

    public Locale resolveNativeLocale(List<Locale> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ArrayList arrayList = new ArrayList();
            LocaleList locales = this.context.getResources().getConfiguration().getLocales();
            int size = locales.size();
            for (int i = 0; i < size; i++) {
                Locale locale = locales.get(i);
                String language = locale.getLanguage();
                if (!locale.getScript().isEmpty()) {
                    language = language + "-" + locale.getScript();
                }
                if (!locale.getCountry().isEmpty()) {
                    language = language + "-" + locale.getCountry();
                }
                arrayList.add(new Locale.LanguageRange(language));
                arrayList.add(new Locale.LanguageRange(locale.getLanguage()));
                arrayList.add(new Locale.LanguageRange(locale.getLanguage() + "-*"));
            }
            Locale lookup = Locale.lookup(arrayList, list);
            if (lookup != null) {
                return lookup;
            }
            return list.get(0);
        } else if (Build.VERSION.SDK_INT >= 24) {
            LocaleList locales2 = this.context.getResources().getConfiguration().getLocales();
            for (int i2 = 0; i2 < locales2.size(); i2++) {
                Locale locale2 = locales2.get(i2);
                for (Locale locale3 : list) {
                    if (locale2.equals(locale3)) {
                        return locale3;
                    }
                }
                for (Locale locale4 : list) {
                    if (locale2.getLanguage().equals(locale4.toLanguageTag())) {
                        return locale4;
                    }
                }
                for (Locale locale5 : list) {
                    if (locale2.getLanguage().equals(locale5.getLanguage())) {
                        return locale5;
                    }
                }
            }
            return list.get(0);
        } else {
            Locale locale6 = this.context.getResources().getConfiguration().locale;
            if (locale6 != null) {
                for (Locale locale7 : list) {
                    if (locale6.equals(locale7)) {
                        return locale7;
                    }
                }
                for (Locale locale8 : list) {
                    if (locale6.getLanguage().equals(locale8.toString())) {
                        return locale8;
                    }
                }
            }
            return list.get(0);
        }
    }

    public void sendLocalesToFlutter(Configuration configuration) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList locales = configuration.getLocales();
            int size = locales.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(locales.get(i));
            }
        } else {
            arrayList.add(configuration.locale);
        }
        this.localizationChannel.sendLocales(arrayList);
    }

    public static Locale localeFromString(String str) {
        String str2;
        String[] split = str.replace('_', '-').split("-", -1);
        String str3 = split[0];
        String str4 = "";
        int i = 1;
        if (split.length <= 1 || split[1].length() != 4) {
            str2 = str4;
        } else {
            str2 = split[1];
            i = 2;
        }
        if (split.length > i && split[i].length() >= 2 && split[i].length() <= 3) {
            str4 = split[i];
        }
        return new Locale(str3, str4, str2);
    }
}
