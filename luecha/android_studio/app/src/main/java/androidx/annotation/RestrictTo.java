package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes4.dex */
public @interface RestrictTo {

    /* JADX WARN: Classes with same name are omitted:
      classes2.dex
     */
    /* loaded from: classes4.dex */
    public enum Scope {
        LIBRARY,
        LIBRARY_GROUP,
        LIBRARY_GROUP_PREFIX,
        GROUP_ID,
        TESTS,
        SUBCLASSES
    }

    Scope[] value();
}
