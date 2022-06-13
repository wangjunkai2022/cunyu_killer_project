package org.junit.experimental.theories.suppliers;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.junit.experimental.theories.ParametersSuppliedBy;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
@Target({ElementType.PARAMETER})
@ParametersSuppliedBy(TestedOnSupplier.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes5.dex */
public @interface TestedOn {
    int[] ints();
}
