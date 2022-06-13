package org.hamcrest;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class CustomTypeSafeMatcher<T> extends TypeSafeMatcher<T> {
    private final String fixedDescription;

    public CustomTypeSafeMatcher(String str) {
        if (str != null) {
            this.fixedDescription = str;
            return;
        }
        throw new IllegalArgumentException("Description must be non null!");
    }

    @Override // org.hamcrest.SelfDescribing
    public final void describeTo(Description description) {
        description.appendText(this.fixedDescription);
    }
}
