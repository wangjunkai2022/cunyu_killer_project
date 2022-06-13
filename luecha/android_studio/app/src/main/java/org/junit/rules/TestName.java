package org.junit.rules;

import org.junit.runner.Description;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TestName extends TestWatcher {
    private String name;

    @Override // org.junit.rules.TestWatcher
    protected void starting(Description description) {
        this.name = description.getMethodName();
    }

    public String getMethodName() {
        return this.name;
    }
}
