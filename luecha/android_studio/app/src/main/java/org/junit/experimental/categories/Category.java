package org.junit.experimental.categories;

import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.junit.validator.ValidateWith;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
@Inherited
@Retention(RetentionPolicy.RUNTIME)
@ValidateWith(CategoryValidator.class)
/* loaded from: classes5.dex */
public @interface Category {
    Class<?>[] value();
}
