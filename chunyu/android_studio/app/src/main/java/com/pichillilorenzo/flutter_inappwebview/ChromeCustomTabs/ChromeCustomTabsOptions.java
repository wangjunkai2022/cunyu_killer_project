package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.content.Intent;
import com.pichillilorenzo.flutter_inappwebview.Options;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class ChromeCustomTabsOptions implements Options<ChromeCustomTabsActivity> {
    static final String LOG_TAG = "ChromeCustomTabsOptions";
    public String packageName;
    public Boolean addDefaultShareMenuItem = true;
    public Boolean showTitle = true;
    public String toolbarBackgroundColor = "";
    public Boolean enableUrlBarHiding = false;
    public Boolean instantAppsEnabled = false;
    public Boolean keepAliveEnabled = false;

    @Override // com.pichillilorenzo.flutter_inappwebview.Options
    public ChromeCustomTabsOptions parse(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                char c = 65535;
                switch (key.hashCode()) {
                    case -2112880751:
                        if (key.equals("addDefaultShareMenuItem")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1913803429:
                        if (key.equals("showTitle")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -227713574:
                        if (key.equals("toolbarBackgroundColor")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 137483238:
                        if (key.equals("enableUrlBarHiding")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 472764366:
                        if (key.equals("instantAppsEnabled")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 908759025:
                        if (key.equals("packageName")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 2126240217:
                        if (key.equals("keepAliveEnabled")) {
                            c = 6;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        this.addDefaultShareMenuItem = Boolean.valueOf(((Boolean) value).booleanValue());
                        continue;
                    case 1:
                        this.showTitle = Boolean.valueOf(((Boolean) value).booleanValue());
                        continue;
                    case 2:
                        this.toolbarBackgroundColor = (String) value;
                        continue;
                    case 3:
                        this.enableUrlBarHiding = Boolean.valueOf(((Boolean) value).booleanValue());
                        continue;
                    case 4:
                        this.instantAppsEnabled = Boolean.valueOf(((Boolean) value).booleanValue());
                        continue;
                    case 5:
                        this.packageName = (String) value;
                        continue;
                    case 6:
                        this.keepAliveEnabled = Boolean.valueOf(((Boolean) value).booleanValue());
                        continue;
                }
            }
        }
        return this;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.Options
    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("addDefaultShareMenuItem", this.addDefaultShareMenuItem);
        hashMap.put("showTitle", this.showTitle);
        hashMap.put("toolbarBackgroundColor", this.toolbarBackgroundColor);
        hashMap.put("enableUrlBarHiding", this.enableUrlBarHiding);
        hashMap.put("instantAppsEnabled", this.instantAppsEnabled);
        hashMap.put("packageName", this.packageName);
        hashMap.put("keepAliveEnabled", this.keepAliveEnabled);
        return hashMap;
    }

    public Map<String, Object> getRealOptions(ChromeCustomTabsActivity chromeCustomTabsActivity) {
        Intent intent;
        Map<String, Object> map = toMap();
        if (!(chromeCustomTabsActivity == null || (intent = chromeCustomTabsActivity.getIntent()) == null)) {
            map.put("packageName", intent.getPackage());
            map.put("keepAliveEnabled", Boolean.valueOf(intent.hasExtra("android.support.customtabs.extra.KEEP_ALIVE")));
        }
        return map;
    }
}
