package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: DebugProbesImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "invoke"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class DebugProbesImpl$dumpCoroutinesSynchronized$1$2 extends Lambda implements Function1<DebugProbesImpl.CoroutineOwner<?>, Boolean> {
    public static final DebugProbesImpl$dumpCoroutinesSynchronized$1$2 INSTANCE = new DebugProbesImpl$dumpCoroutinesSynchronized$1$2();

    DebugProbesImpl$dumpCoroutinesSynchronized$1$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
        return Boolean.valueOf(invoke2(coroutineOwner));
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final boolean invoke2(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
        return !DebugProbesImpl.INSTANCE.isFinished(coroutineOwner);
    }
}
