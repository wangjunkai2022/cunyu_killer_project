package com.pichillilorenzo.flutter_inappwebview.InAppBrowser;

import com.pichillilorenzo.flutter_inappwebview.Options;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class InAppBrowserOptions implements Options<InAppBrowserActivity> {
    public static final String LOG_TAG = "InAppBrowserOptions";
    public Boolean hidden = false;
    public Boolean toolbarTop = true;
    public String toolbarTopBackgroundColor = "";
    public String toolbarTopFixedTitle = "";
    public Boolean hideUrlBar = false;
    public String faceOrientation = "";
    public Boolean hideTitleBar = false;
    public Boolean closeOnCannotGoBack = true;
    public Boolean progressBar = true;

    @Override // com.pichillilorenzo.flutter_inappwebview.Options
    public InAppBrowserOptions parse(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                char c = 65535;
                switch (key.hashCode()) {
                    case -1307803139:
                        if (key.equals("hideTitleBar")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -1244390605:
                        if (key.equals("faceOrientation")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -1217487446:
                        if (key.equals("hidden")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -118493506:
                        if (key.equals("toolbarTopFixedTitle")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 58574810:
                        if (key.equals("toolbarTop")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 90270825:
                        if (key.equals("closeOnCannotGoBack")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 406250502:
                        if (key.equals("hideUrlBar")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 1131509414:
                        if (key.equals("progressBar")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 2111633307:
                        if (key.equals("toolbarTopBackgroundColor")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        this.hidden = (Boolean) value;
                        continue;
                    case 1:
                        this.toolbarTop = (Boolean) value;
                        continue;
                    case 2:
                        this.toolbarTopBackgroundColor = (String) value;
                        continue;
                    case 3:
                        this.toolbarTopFixedTitle = (String) value;
                        continue;
                    case 4:
                        this.hideUrlBar = (Boolean) value;
                        continue;
                    case 5:
                        this.hideTitleBar = (Boolean) value;
                        continue;
                    case 6:
                        this.closeOnCannotGoBack = (Boolean) value;
                        continue;
                    case 7:
                        this.progressBar = (Boolean) value;
                        continue;
                    case '\b':
                        this.faceOrientation = (String) value;
                        continue;
                }
            }
        }
        return this;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.Options
    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("hidden", this.hidden);
        hashMap.put("toolbarTop", this.toolbarTop);
        hashMap.put("toolbarTopBackgroundColor", this.toolbarTopBackgroundColor);
        hashMap.put("toolbarTopFixedTitle", this.toolbarTopFixedTitle);
        hashMap.put("hideUrlBar", this.hideUrlBar);
        hashMap.put("hideTitleBar", this.hideTitleBar);
        hashMap.put("closeOnCannotGoBack", this.closeOnCannotGoBack);
        hashMap.put("progressBar", this.progressBar);
        hashMap.put("faceOrientation", this.faceOrientation);
        return hashMap;
    }

    public Map<String, Object> getRealOptions(InAppBrowserActivity inAppBrowserActivity) {
        return toMap();
    }
}
