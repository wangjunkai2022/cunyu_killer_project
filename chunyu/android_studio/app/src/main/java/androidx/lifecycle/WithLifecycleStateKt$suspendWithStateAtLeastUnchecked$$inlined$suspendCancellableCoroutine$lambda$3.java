package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: WithLifecycleState.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "R", "it", "", "invoke", "androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2"}, k = 3, mv = {1, 4, 1})
/* loaded from: classes3.dex */
final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$3 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ Function0 $block$inlined;
    final /* synthetic */ boolean $dispatchNeeded$inlined;
    final /* synthetic */ CoroutineDispatcher $lifecycleDispatcher$inlined;
    final /* synthetic */ WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1 $observer;
    final /* synthetic */ Lifecycle.State $state$inlined;
    final /* synthetic */ Lifecycle $this_suspendWithStateAtLeastUnchecked$inlined;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$3(WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1 withLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1, Lifecycle lifecycle, Lifecycle.State state, Function0 function0, boolean z, CoroutineDispatcher coroutineDispatcher) {
        super(1);
        this.$observer = withLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1;
        this.$this_suspendWithStateAtLeastUnchecked$inlined = lifecycle;
        this.$state$inlined = state;
        this.$block$inlined = function0;
        this.$dispatchNeeded$inlined = z;
        this.$lifecycleDispatcher$inlined = coroutineDispatcher;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        if (this.$lifecycleDispatcher$inlined.isDispatchNeeded(EmptyCoroutineContext.INSTANCE)) {
            this.$lifecycleDispatcher$inlined.dispatch(EmptyCoroutineContext.INSTANCE, new Runnable() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$3.1
                @Override // java.lang.Runnable
                public final void run() {
                    WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$3.this.$this_suspendWithStateAtLeastUnchecked$inlined.removeObserver(WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$3.this.$observer);
                }
            });
        } else {
            this.$this_suspendWithStateAtLeastUnchecked$inlined.removeObserver(this.$observer);
        }
    }
}
