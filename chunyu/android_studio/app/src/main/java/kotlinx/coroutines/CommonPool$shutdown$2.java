package kotlinx.coroutines;

import com.tekartik.sqflite.Constant;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;

/* compiled from: CommonPool.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Ljava/lang/Runnable;", "kotlin.jvm.PlatformType", Constant.METHOD_EXECUTE}, k = 3, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class CommonPool$shutdown$2 implements Executor {
    public static final CommonPool$shutdown$2 INSTANCE = new CommonPool$shutdown$2();

    CommonPool$shutdown$2() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        throw new RejectedExecutionException("CommonPool was shutdown");
    }
}
