package org.junit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.junit.runners.MethodSorters;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes5.dex */
public @interface FixMethodOrder {
    MethodSorters value() default MethodSorters.DEFAULT;
}
