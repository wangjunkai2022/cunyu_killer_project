package kotlinx.coroutines.sync;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: Mutex.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014\u001aB\u0010\u0015\u001a\u0002H\u0016\"\u0004\b\u0000\u0010\u0016*\u00020\u00122\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00160\u001aH\u0086Hø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u0010\u001b\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0003\"\u0016\u0010\t\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u0003\"\u0016\u0010\u000b\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\u0003\"\u0016\u0010\r\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u0003\"\u0016\u0010\u000f\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"EMPTY_LOCKED", "Lkotlinx/coroutines/sync/Empty;", "getEMPTY_LOCKED$annotations", "()V", "EMPTY_UNLOCKED", "getEMPTY_UNLOCKED$annotations", "LOCKED", "Lkotlinx/coroutines/internal/Symbol;", "getLOCKED$annotations", "LOCK_FAIL", "getLOCK_FAIL$annotations", "SELECT_SUCCESS", "getSELECT_SUCCESS$annotations", "UNLOCKED", "getUNLOCKED$annotations", "UNLOCK_FAIL", "getUNLOCK_FAIL$annotations", "Mutex", "Lkotlinx/coroutines/sync/Mutex;", "locked", "", "withLock", ExifInterface.GPS_DIRECTION_TRUE, "owner", "", "action", "Lkotlin/Function0;", "(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class MutexKt {
    private static final Empty EMPTY_LOCKED;
    private static final Empty EMPTY_UNLOCKED;
    private static final Symbol LOCKED;
    private static final Symbol UNLOCKED;
    private static final Symbol LOCK_FAIL = new Symbol("LOCK_FAIL");
    private static final Symbol UNLOCK_FAIL = new Symbol("UNLOCK_FAIL");
    private static final Symbol SELECT_SUCCESS = new Symbol("SELECT_SUCCESS");

    public static final /* synthetic */ Empty access$getEMPTY_LOCKED$p() {
        return EMPTY_LOCKED;
    }

    public static final /* synthetic */ Empty access$getEMPTY_UNLOCKED$p() {
        return EMPTY_UNLOCKED;
    }

    public static final /* synthetic */ Symbol access$getLOCKED$p() {
        return LOCKED;
    }

    public static final /* synthetic */ Symbol access$getLOCK_FAIL$p() {
        return LOCK_FAIL;
    }

    public static final /* synthetic */ Symbol access$getSELECT_SUCCESS$p() {
        return SELECT_SUCCESS;
    }

    public static final /* synthetic */ Symbol access$getUNLOCKED$p() {
        return UNLOCKED;
    }

    public static final /* synthetic */ Symbol access$getUNLOCK_FAIL$p() {
        return UNLOCK_FAIL;
    }

    private static /* synthetic */ void getEMPTY_LOCKED$annotations() {
    }

    private static /* synthetic */ void getEMPTY_UNLOCKED$annotations() {
    }

    private static /* synthetic */ void getLOCKED$annotations() {
    }

    private static /* synthetic */ void getLOCK_FAIL$annotations() {
    }

    private static /* synthetic */ void getSELECT_SUCCESS$annotations() {
    }

    private static /* synthetic */ void getUNLOCKED$annotations() {
    }

    private static /* synthetic */ void getUNLOCK_FAIL$annotations() {
    }

    public static /* synthetic */ Mutex Mutex$default(boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return Mutex(z);
    }

    public static final Mutex Mutex(boolean z) {
        return new MutexImpl(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static final <T> java.lang.Object withLock(kotlinx.coroutines.sync.Mutex r4, java.lang.Object r5, kotlin.jvm.functions.Function0<? extends T> r6, kotlin.coroutines.Continuation<? super T> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.sync.MutexKt$withLock$1
            if (r0 == 0) goto L_0x0014
            r0 = r7
            kotlinx.coroutines.sync.MutexKt$withLock$1 r0 = (kotlinx.coroutines.sync.MutexKt$withLock$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L_0x0014
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L_0x0019
        L_0x0014:
            kotlinx.coroutines.sync.MutexKt$withLock$1 r0 = new kotlinx.coroutines.sync.MutexKt$withLock$1
            r0.<init>(r7)
        L_0x0019:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x003d
            if (r2 != r3) goto L_0x0035
            java.lang.Object r4 = r0.L$2
            r6 = r4
            kotlin.jvm.functions.Function0 r6 = (kotlin.jvm.functions.Function0) r6
            java.lang.Object r5 = r0.L$1
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.sync.Mutex r4 = (kotlinx.coroutines.sync.Mutex) r4
            kotlin.ResultKt.throwOnFailure(r7)
            goto L_0x004f
        L_0x0035:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L_0x003d:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r4
            r0.L$1 = r5
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r7 = r4.lock(r5, r0)
            if (r7 != r1) goto L_0x004f
            return r1
        L_0x004f:
            java.lang.Object r6 = r6.invoke()     // Catch: all -> 0x005d
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.unlock(r5)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            return r6
        L_0x005d:
            r6 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.unlock(r5)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.MutexKt.withLock(kotlinx.coroutines.sync.Mutex, java.lang.Object, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final Object withLock$$forInline(Mutex mutex, Object obj, Function0 function0, Continuation continuation) {
        InlineMarker.mark(0);
        mutex.lock(obj, continuation);
        InlineMarker.mark(2);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            mutex.unlock(obj);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ Object withLock$default(Mutex mutex, Object obj, Function0 function0, Continuation continuation, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        InlineMarker.mark(0);
        mutex.lock(obj, continuation);
        InlineMarker.mark(2);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            mutex.unlock(obj);
            InlineMarker.finallyEnd(1);
        }
    }

    static {
        Symbol symbol = new Symbol("LOCKED");
        LOCKED = symbol;
        Symbol symbol2 = new Symbol("UNLOCKED");
        UNLOCKED = symbol2;
        EMPTY_LOCKED = new Empty(symbol);
        EMPTY_UNLOCKED = new Empty(symbol2);
    }
}
