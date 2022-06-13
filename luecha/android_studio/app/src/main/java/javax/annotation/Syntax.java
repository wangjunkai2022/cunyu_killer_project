package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.TypeQualifier;
import javax.annotation.meta.When;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
@TypeQualifier(applicableTo = CharSequence.class)
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes5.dex */
public @interface Syntax {
    String value();

    When when() default When.ALWAYS;
}
