package org.hamcrest.core;

import org.hamcrest.Factory;
import org.hamcrest.Matcher;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class StringContains extends SubstringMatcher {
    @Override // org.hamcrest.core.SubstringMatcher
    protected String relationship() {
        return "containing";
    }

    public StringContains(String str) {
        super(str);
    }

    @Override // org.hamcrest.core.SubstringMatcher
    protected boolean evalSubstringOf(String str) {
        return str.indexOf(this.substring) >= 0;
    }

    @Factory
    public static Matcher<String> containsString(String str) {
        return new StringContains(str);
    }
}
