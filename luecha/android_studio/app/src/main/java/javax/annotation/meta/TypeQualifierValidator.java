package javax.annotation.meta;

import java.lang.annotation.Annotation;
import javax.annotation.Nonnull;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TypeQualifierValidator<A extends Annotation> {
    @Nonnull
    When forConstantValue(@Nonnull A a, Object obj);
}
