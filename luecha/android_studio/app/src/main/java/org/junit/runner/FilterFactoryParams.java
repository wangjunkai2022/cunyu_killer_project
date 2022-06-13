package org.junit.runner;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class FilterFactoryParams {
    private final String args;
    private final Description topLevelDescription;

    public FilterFactoryParams(Description description, String str) {
        if (str == null || description == null) {
            throw new NullPointerException();
        }
        this.topLevelDescription = description;
        this.args = str;
    }

    public String getArgs() {
        return this.args;
    }

    public Description getTopLevelDescription() {
        return this.topLevelDescription;
    }
}
