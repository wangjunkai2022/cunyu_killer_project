package kotlinx.coroutines.test;

import kotlin.Metadata;
import kotlin.Unit;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.test.TestCoroutineContext;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: Runnable.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "", "run", "kotlinx/coroutines/RunnableKt$Runnable$1"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1 implements Runnable {
    final /* synthetic */ CancellableContinuation $continuation$inlined;
    final /* synthetic */ TestCoroutineContext.Dispatcher this$0;

    public TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1(TestCoroutineContext.Dispatcher dispatcher, CancellableContinuation cancellableContinuation) {
        this.this$0 = dispatcher;
        this.$continuation$inlined = cancellableContinuation;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$continuation$inlined.resumeUndispatched(this.this$0, Unit.INSTANCE);
    }
}
