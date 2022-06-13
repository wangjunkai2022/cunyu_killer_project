package org.junit.validator;

import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
@Inherited
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes5.dex */
public @interface ValidateWith {
    Class<? extends AnnotationValidator> value();
}
