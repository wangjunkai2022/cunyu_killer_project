package com.google.errorprone.annotations;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.lang.model.element.Modifier;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
@Target({ElementType.ANNOTATION_TYPE})
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes5.dex */
public @interface RequiredModifiers {
    Modifier[] value();
}
