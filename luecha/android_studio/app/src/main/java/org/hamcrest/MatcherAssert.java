package org.hamcrest;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class MatcherAssert {
    public static <T> void assertThat(T t, Matcher<? super T> matcher) {
        assertThat("", t, matcher);
    }

    public static <T> void assertThat(String str, T t, Matcher<? super T> matcher) {
        if (!matcher.matches(t)) {
            StringDescription stringDescription = new StringDescription();
            stringDescription.appendText(str).appendText("\nExpected: ").appendDescriptionOf(matcher).appendText("\n     but: ");
            matcher.describeMismatch(t, stringDescription);
            throw new AssertionError(stringDescription.toString());
        }
    }

    public static void assertThat(String str, boolean z) {
        if (!z) {
            throw new AssertionError(str);
        }
    }
}
