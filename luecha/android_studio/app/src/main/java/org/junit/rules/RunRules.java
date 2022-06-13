package org.junit.rules;

import org.junit.runner.Description;
import org.junit.runners.model.Statement;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class RunRules extends Statement {
    private final Statement statement;

    public RunRules(Statement statement, Iterable<TestRule> iterable, Description description) {
        this.statement = applyAll(statement, iterable, description);
    }

    @Override // org.junit.runners.model.Statement
    public void evaluate() throws Throwable {
        this.statement.evaluate();
    }

    private static Statement applyAll(Statement statement, Iterable<TestRule> iterable, Description description) {
        for (TestRule testRule : iterable) {
            statement = testRule.apply(statement, description);
        }
        return statement;
    }
}
