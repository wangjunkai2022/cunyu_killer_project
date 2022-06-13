package com.google.thirdparty.publicsuffix;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public enum PublicSuffixType {
    PRIVATE(':', ','),
    REGISTRY('!', '?');
    
    private final char innerNodeCode;
    private final char leafNodeCode;

    PublicSuffixType(char c, char c2) {
        this.innerNodeCode = c;
        this.leafNodeCode = c2;
    }

    char getLeafNodeCode() {
        return this.leafNodeCode;
    }

    char getInnerNodeCode() {
        return this.innerNodeCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PublicSuffixType fromCode(char c) {
        PublicSuffixType[] values = values();
        for (PublicSuffixType publicSuffixType : values) {
            if (publicSuffixType.getInnerNodeCode() == c || publicSuffixType.getLeafNodeCode() == c) {
                return publicSuffixType;
            }
        }
        throw new IllegalArgumentException("No enum corresponding to given code: " + c);
    }

    static PublicSuffixType fromIsPrivate(boolean z) {
        return z ? PRIVATE : REGISTRY;
    }
}
