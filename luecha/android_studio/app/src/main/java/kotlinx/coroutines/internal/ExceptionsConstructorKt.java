package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThrowable;

/* compiled from: ExceptionsConstructor.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a2\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\u0002`\u0007\"\b\b\u0000\u0010\b*\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\nH\u0002\u001a*\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u00072\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\rH\u0002\u001a1\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\u0002`\u00072\u0014\b\u0004\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u0082\b\u001a!\u0010\u0010\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\u00062\u0006\u0010\u0011\u001a\u0002H\bH\u0000¢\u0006\u0002\u0010\u0012\u001a\u001b\u0010\u0013\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\n2\b\b\u0002\u0010\u0014\u001a\u00020\u0003H\u0082\u0010\u001a\u0018\u0010\u0015\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\n2\u0006\u0010\u0016\u001a\u00020\u0003H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000*(\b\u0002\u0010\u0017\"\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¨\u0006\u0018"}, d2 = {"ctorCache", "Lkotlinx/coroutines/internal/CtorCache;", "throwableFields", "", "createConstructor", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/Ctor;", ExifInterface.LONGITUDE_EAST, "clz", "Ljava/lang/Class;", "createSafeConstructor", "constructor", "Ljava/lang/reflect/Constructor;", "safeCtor", "block", "tryCopyException", "exception", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "fieldsCount", "accumulator", "fieldsCountOrDefault", "defaultValue", "Ctor", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ExceptionsConstructorKt {
    private static final CtorCache ctorCache;
    private static final int throwableFields = fieldsCountOrDefault(Throwable.class, -1);

    static {
        WeakMapCtorCache weakMapCtorCache;
        try {
            if (FastServiceLoaderKt.getANDROID_DETECTED()) {
                weakMapCtorCache = WeakMapCtorCache.INSTANCE;
            } else {
                weakMapCtorCache = ClassValueCtorCache.INSTANCE;
            }
        } catch (Throwable unused) {
            weakMapCtorCache = WeakMapCtorCache.INSTANCE;
        }
        ctorCache = weakMapCtorCache;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E extends Throwable> E tryCopyException(E e) {
        Object obj;
        if (!(e instanceof CopyableThrowable)) {
            return (E) ctorCache.get(e.getClass()).invoke(e);
        }
        try {
            Result.Companion companion = Result.Companion;
            obj = Result.m44constructorimpl(((CopyableThrowable) e).createCopy());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.m44constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m50isFailureimpl(obj)) {
            obj = null;
        }
        return (E) ((Throwable) obj);
    }

    public static final <E extends Throwable> Function1<Throwable, Throwable> createConstructor(Class<E> cls) {
        ExceptionsConstructorKt$createConstructor$nullResult$1 exceptionsConstructorKt$createConstructor$nullResult$1 = ExceptionsConstructorKt$createConstructor$nullResult$1.INSTANCE;
        if (throwableFields != fieldsCountOrDefault(cls, 0)) {
            return exceptionsConstructorKt$createConstructor$nullResult$1;
        }
        for (Constructor constructor : ArraysKt.sortedWith(cls.getConstructors(), new Comparator() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((Constructor) t2).getParameterTypes().length), Integer.valueOf(((Constructor) t).getParameterTypes().length));
            }
        })) {
            Function1<Throwable, Throwable> createSafeConstructor = createSafeConstructor(constructor);
            if (createSafeConstructor != null) {
                return createSafeConstructor;
            }
        }
        return exceptionsConstructorKt$createConstructor$nullResult$1;
    }

    private static final Function1<Throwable, Throwable> createSafeConstructor(Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length == 0) {
            return new Function1<Throwable, Throwable>(constructor) { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$4
                final /* synthetic */ Constructor $constructor$inlined;

                {
                    this.$constructor$inlined = r1;
                }

                public final Throwable invoke(Throwable th) {
                    Object obj;
                    Object newInstance;
                    try {
                        Result.Companion companion = Result.Companion;
                        newInstance = this.$constructor$inlined.newInstance(new Object[0]);
                    } catch (Throwable th2) {
                        Result.Companion companion2 = Result.Companion;
                        obj = Result.m44constructorimpl(ResultKt.createFailure(th2));
                    }
                    if (newInstance != null) {
                        Throwable th3 = (Throwable) newInstance;
                        th3.initCause(th);
                        obj = Result.m44constructorimpl(th3);
                        if (Result.m50isFailureimpl(obj)) {
                            obj = null;
                        }
                        return (Throwable) obj;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                }
            };
        }
        if (length == 1) {
            Class<?> cls = parameterTypes[0];
            if (Intrinsics.areEqual(cls, Throwable.class)) {
                return new Function1<Throwable, Throwable>(constructor) { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$2
                    final /* synthetic */ Constructor $constructor$inlined;

                    {
                        this.$constructor$inlined = r1;
                    }

                    public final Throwable invoke(Throwable th) {
                        Object obj;
                        Object newInstance;
                        try {
                            Result.Companion companion = Result.Companion;
                            newInstance = this.$constructor$inlined.newInstance(th);
                        } catch (Throwable th2) {
                            Result.Companion companion2 = Result.Companion;
                            obj = Result.m44constructorimpl(ResultKt.createFailure(th2));
                        }
                        if (newInstance != null) {
                            obj = Result.m44constructorimpl((Throwable) newInstance);
                            if (Result.m50isFailureimpl(obj)) {
                                obj = null;
                            }
                            return (Throwable) obj;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                    }
                };
            }
            if (Intrinsics.areEqual(cls, String.class)) {
                return new Function1<Throwable, Throwable>(constructor) { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$3
                    final /* synthetic */ Constructor $constructor$inlined;

                    {
                        this.$constructor$inlined = r1;
                    }

                    public final Throwable invoke(Throwable th) {
                        Object obj;
                        Object newInstance;
                        try {
                            Result.Companion companion = Result.Companion;
                            newInstance = this.$constructor$inlined.newInstance(th.getMessage());
                        } catch (Throwable th2) {
                            Result.Companion companion2 = Result.Companion;
                            obj = Result.m44constructorimpl(ResultKt.createFailure(th2));
                        }
                        if (newInstance != null) {
                            Throwable th3 = (Throwable) newInstance;
                            th3.initCause(th);
                            obj = Result.m44constructorimpl(th3);
                            if (Result.m50isFailureimpl(obj)) {
                                obj = null;
                            }
                            return (Throwable) obj;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                    }
                };
            }
            return null;
        } else if (length == 2 && Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) {
            return new Function1<Throwable, Throwable>(constructor) { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$1
                final /* synthetic */ Constructor $constructor$inlined;

                {
                    this.$constructor$inlined = r1;
                }

                public final Throwable invoke(Throwable th) {
                    Object obj;
                    Object newInstance;
                    try {
                        Result.Companion companion = Result.Companion;
                        newInstance = this.$constructor$inlined.newInstance(th.getMessage(), th);
                    } catch (Throwable th2) {
                        Result.Companion companion2 = Result.Companion;
                        obj = Result.m44constructorimpl(ResultKt.createFailure(th2));
                    }
                    if (newInstance != null) {
                        obj = Result.m44constructorimpl((Throwable) newInstance);
                        if (Result.m50isFailureimpl(obj)) {
                            obj = null;
                        }
                        return (Throwable) obj;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                }
            };
        } else {
            return null;
        }
    }

    private static final Function1<Throwable, Throwable> safeCtor(Function1<? super Throwable, ? extends Throwable> function1) {
        return new Function1<Throwable, Throwable>(function1) { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$safeCtor$1
            final /* synthetic */ Function1<Throwable, Throwable> $block;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.$block = r1;
            }

            public final Throwable invoke(Throwable th) {
                Object obj;
                Function1<Throwable, Throwable> function12 = this.$block;
                try {
                    Result.Companion companion = Result.Companion;
                    obj = Result.m44constructorimpl(function12.invoke(th));
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.Companion;
                    obj = Result.m44constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m50isFailureimpl(obj)) {
                    obj = null;
                }
                return (Throwable) obj;
            }
        };
    }

    private static final int fieldsCountOrDefault(Class<?> cls, int i) {
        Object obj;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.Companion;
            obj = Result.m44constructorimpl(Integer.valueOf(fieldsCount$default(cls, 0, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.m44constructorimpl(ResultKt.createFailure(th));
        }
        obj = Integer.valueOf(i);
        if (Result.m50isFailureimpl(obj)) {
        }
        return ((Number) obj).intValue();
    }

    static /* synthetic */ int fieldsCount$default(Class cls, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return fieldsCount(cls, i);
    }

    private static final int fieldsCount(Class<?> cls, int i) {
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                Field field = declaredFields[i2];
                i2++;
                if (!Modifier.isStatic(field.getModifiers())) {
                    i3++;
                }
            }
            i += i3;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i;
    }
}
