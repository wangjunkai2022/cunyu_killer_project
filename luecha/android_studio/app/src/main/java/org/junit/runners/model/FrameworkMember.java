package org.junit.runners.model;

import java.lang.reflect.Modifier;
import java.util.List;
import org.junit.runners.model.FrameworkMember;

/* loaded from: classes5.dex */
public abstract class FrameworkMember<T extends FrameworkMember<T>> implements Annotatable {
    public abstract Class<?> getDeclaringClass();

    protected abstract int getModifiers();

    public abstract String getName();

    public abstract Class<?> getType();

    abstract boolean isShadowedBy(T t);

    public boolean isShadowedBy(List<T> list) {
        for (T t : list) {
            if (isShadowedBy((FrameworkMember<T>) t)) {
                return true;
            }
        }
        return false;
    }

    public boolean isStatic() {
        return Modifier.isStatic(getModifiers());
    }

    public boolean isPublic() {
        return Modifier.isPublic(getModifiers());
    }
}
