package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import com.pichillilorenzo.flutter_inappwebview.Options;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ContextMenuOptions implements Options<Object> {
    public static final String LOG_TAG = "ContextMenuOptions";
    public Boolean hideDefaultSystemContextMenuItems = false;

    @Override // com.pichillilorenzo.flutter_inappwebview.Options
    public ContextMenuOptions parse(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                char c = 65535;
                if (key.hashCode() == -1069507968 && key.equals("hideDefaultSystemContextMenuItems")) {
                    c = 0;
                }
                if (c == 0) {
                    this.hideDefaultSystemContextMenuItems = (Boolean) value;
                }
            }
        }
        return this;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.Options
    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("hideDefaultSystemContextMenuItems", this.hideDefaultSystemContextMenuItems);
        return hashMap;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.Options
    public Map<String, Object> getRealOptions(Object obj) {
        return toMap();
    }
}
