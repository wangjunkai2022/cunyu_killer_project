package com.squareup.wire;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes5.dex */
public @interface WireField {
    String adapter();

    String keyAdapter() default "";

    Label label() default Label.OPTIONAL;

    boolean redacted() default false;

    int tag();

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum Label {
        REQUIRED,
        OPTIONAL,
        REPEATED,
        ONE_OF,
        PACKED;

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isRepeated() {
            return this == REPEATED || this == PACKED;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isPacked() {
            return this == PACKED;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isOneOf() {
            return this == ONE_OF;
        }
    }
}
