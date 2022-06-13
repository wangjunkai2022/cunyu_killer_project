package com.pichillilorenzo.flutter_inappwebview.ContentBlocker;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public enum ContentBlockerActionType {
    BLOCK("block"),
    CSS_DISPLAY_NONE("css-display-none"),
    MAKE_HTTPS("make-https");
    
    private final String value;

    ContentBlockerActionType(String str) {
        this.value = str;
    }

    public boolean equalsValue(String str) {
        return this.value.equals(str);
    }

    public static ContentBlockerActionType fromValue(String str) {
        ContentBlockerActionType[] values = values();
        for (ContentBlockerActionType contentBlockerActionType : values) {
            if (str.equals(contentBlockerActionType.value)) {
                return contentBlockerActionType;
            }
        }
        throw new IllegalArgumentException("No enum constant: " + str);
    }

    @Override // java.lang.Enum, java.lang.Object
    public String toString() {
        return this.value;
    }
}
