package org.apache.commons.io.serialization;

import org.apache.commons.io.FilenameUtils;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
final class WildcardClassNameMatcher implements ClassNameMatcher {
    private final String pattern;

    public WildcardClassNameMatcher(String str) {
        this.pattern = str;
    }

    @Override // org.apache.commons.io.serialization.ClassNameMatcher
    public boolean matches(String str) {
        return FilenameUtils.wildcardMatch(str, this.pattern);
    }
}
