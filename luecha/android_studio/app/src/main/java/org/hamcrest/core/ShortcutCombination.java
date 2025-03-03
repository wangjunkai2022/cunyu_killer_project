package org.hamcrest.core;

import org.hamcrest.BaseMatcher;
import org.hamcrest.Description;
import org.hamcrest.Matcher;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
abstract class ShortcutCombination<T> extends BaseMatcher<T> {
    private final Iterable<Matcher<? super T>> matchers;

    @Override // org.hamcrest.SelfDescribing
    public abstract void describeTo(Description description);

    @Override // org.hamcrest.Matcher
    public abstract boolean matches(Object obj);

    public ShortcutCombination(Iterable<Matcher<? super T>> iterable) {
        this.matchers = iterable;
    }

    protected boolean matches(Object obj, boolean z) {
        for (Matcher<? super T> matcher : this.matchers) {
            if (matcher.matches(obj) == z) {
                return z;
            }
        }
        return !z;
    }

    public void describeTo(Description description, String str) {
        description.appendList("(", " " + str + " ", ")", this.matchers);
    }
}
