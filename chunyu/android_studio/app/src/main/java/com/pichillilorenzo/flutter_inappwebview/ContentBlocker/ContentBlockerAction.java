package com.pichillilorenzo.flutter_inappwebview.ContentBlocker;

import java.util.Map;

/* loaded from: classes2.dex */
public class ContentBlockerAction {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    String selector;
    ContentBlockerActionType type;

    ContentBlockerAction(ContentBlockerActionType contentBlockerActionType, String str) {
        this.type = contentBlockerActionType;
        this.type.equals(ContentBlockerActionType.CSS_DISPLAY_NONE);
        this.selector = str;
    }

    public static ContentBlockerAction fromMap(Map<String, Object> map) {
        return new ContentBlockerAction(ContentBlockerActionType.fromValue((String) map.get("type")), (String) map.get("selector"));
    }
}
