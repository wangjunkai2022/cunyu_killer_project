package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.selects.SelectInstance;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003BB\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tø\u0001\u0000¢\u0006\u0002\u0010\fJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002R/\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tX\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/SelectAwaitOnCompletion;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/JobSupport;", "job", NotificationAction.ACTION_SELECT, "Lkotlinx/coroutines/selects/SelectInstance;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
final class SelectAwaitOnCompletion<T, R> extends JobNode<JobSupport> {
    private final Function2<T, Continuation<? super R>, Object> block;
    private final SelectInstance<R> select;

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SelectAwaitOnCompletion(JobSupport jobSupport, SelectInstance<? super R> selectInstance, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        super(jobSupport);
        this.select = selectInstance;
        this.block = function2;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        if (this.select.trySelect()) {
            ((JobSupport) this.job).selectAwaitCompletion$kotlinx_coroutines_core(this.select, this.block);
        }
    }
}
