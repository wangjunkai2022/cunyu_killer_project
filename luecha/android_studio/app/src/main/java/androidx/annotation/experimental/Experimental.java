package androidx.annotation.experimental;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes4.dex */
public @interface Experimental {

    /* JADX WARN: Classes with same name are omitted:
      classes2.dex
     */
    /* loaded from: classes4.dex */
    public enum Level {
        WARNING,
        ERROR
    }

    Level level() default Level.ERROR;
}
