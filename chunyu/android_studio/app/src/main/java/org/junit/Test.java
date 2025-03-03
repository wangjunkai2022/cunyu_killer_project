package org.junit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2.dex */
public @interface Test {
    Class<? extends Throwable> expected() default None.class;

    long timeout() default 0;

    /* loaded from: classes2.dex */
    public static class None extends Throwable {
        private static final long serialVersionUID = 1;

        private None() {
        }
    }
}
