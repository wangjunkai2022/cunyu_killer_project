package org.junit.runners.model;

import java.lang.annotation.Annotation;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface Annotatable {
    <T extends Annotation> T getAnnotation(Class<T> cls);

    Annotation[] getAnnotations();
}
