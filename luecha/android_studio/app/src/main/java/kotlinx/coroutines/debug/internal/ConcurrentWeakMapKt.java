package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: ConcurrentWeakMap.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a\b\u0010\b\u001a\u00020\tH\u0002\u001a\u000e\u0010\n\u001a\u00020\u0003*\u0004\u0018\u00010\u000bH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"MAGIC", "", "MARKED_NULL", "Lkotlinx/coroutines/debug/internal/Marked;", "MARKED_TRUE", "MIN_CAPACITY", "REHASH", "Lkotlinx/coroutines/internal/Symbol;", "noImpl", "", "mark", "", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class ConcurrentWeakMapKt {
    private static final int MAGIC = -1640531527;
    private static final int MIN_CAPACITY = 16;
    private static final Symbol REHASH = new Symbol("REHASH");
    private static final Marked MARKED_NULL = new Marked(null);
    private static final Marked MARKED_TRUE = new Marked(true);

    public static final /* synthetic */ Symbol access$getREHASH$p() {
        return REHASH;
    }

    public static final /* synthetic */ Marked access$mark(Object obj) {
        return mark(obj);
    }

    public static final /* synthetic */ Void access$noImpl() {
        return noImpl();
    }

    public static final Marked mark(Object obj) {
        if (obj == null) {
            return MARKED_NULL;
        }
        if (Intrinsics.areEqual(obj, (Object) true)) {
            return MARKED_TRUE;
        }
        return new Marked(obj);
    }

    public static final Void noImpl() {
        throw new UnsupportedOperationException("not implemented");
    }
}
