package org.junit.internal.matchers;

import java.lang.Throwable;
import org.hamcrest.Description;
import org.hamcrest.Factory;
import org.hamcrest.Matcher;
import org.hamcrest.TypeSafeMatcher;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ThrowableCauseMatcher<T extends Throwable> extends TypeSafeMatcher<T> {
    private final Matcher<? extends Throwable> causeMatcher;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.hamcrest.TypeSafeMatcher
    protected /* bridge */ /* synthetic */ void describeMismatchSafely(Object obj, Description description) {
        describeMismatchSafely((ThrowableCauseMatcher<T>) ((Throwable) obj), description);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.hamcrest.TypeSafeMatcher
    protected /* bridge */ /* synthetic */ boolean matchesSafely(Object obj) {
        return matchesSafely((ThrowableCauseMatcher<T>) ((Throwable) obj));
    }

    public ThrowableCauseMatcher(Matcher<? extends Throwable> matcher) {
        this.causeMatcher = matcher;
    }

    @Override // org.hamcrest.SelfDescribing
    public void describeTo(Description description) {
        description.appendText("exception with cause ");
        description.appendDescriptionOf(this.causeMatcher);
    }

    protected boolean matchesSafely(T t) {
        return this.causeMatcher.matches(t.getCause());
    }

    protected void describeMismatchSafely(T t, Description description) {
        description.appendText("cause ");
        this.causeMatcher.describeMismatch(t.getCause(), description);
    }

    @Factory
    public static <T extends Throwable> Matcher<T> hasCause(Matcher<? extends Throwable> matcher) {
        return new ThrowableCauseMatcher(matcher);
    }
}
