package org.junit.rules;

import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.Statement;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface MethodRule {
    Statement apply(Statement statement, FrameworkMethod frameworkMethod, Object obj);
}
