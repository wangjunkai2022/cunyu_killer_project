package org.junit.rules;

import org.junit.runner.Description;
import org.junit.runners.model.Statement;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TestRule {
    Statement apply(Statement statement, Description description);
}
