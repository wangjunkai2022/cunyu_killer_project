package org.hamcrest.core;

import org.hamcrest.Description;
import org.hamcrest.TypeSafeMatcher;

/* loaded from: classes5.dex */
public abstract class SubstringMatcher extends TypeSafeMatcher<String> {
    protected final String substring;

    protected abstract boolean evalSubstringOf(String str);

    protected abstract String relationship();

    public SubstringMatcher(String str) {
        this.substring = str;
    }

    public boolean matchesSafely(String str) {
        return evalSubstringOf(str);
    }

    public void describeMismatchSafely(String str, Description description) {
        description.appendText("was \"").appendText(str).appendText("\"");
    }

    @Override // org.hamcrest.SelfDescribing
    public void describeTo(Description description) {
        description.appendText("a string ").appendText(relationship()).appendText(" ").appendValue(this.substring);
    }
}
