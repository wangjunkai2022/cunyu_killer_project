package kotlin;

import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.c;
import java.util.Objects;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeepRecursive.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004BK\u00129\u0010\u0005\u001a5\b\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006¢\u0006\u0002\b\b\u0012\u0006\u0010\t\u001a\u00028\u0000ø\u0001\u0000¢\u0006\u0002\u0010\nJ\u0019\u0010\u0015\u001a\u00028\u00012\u0006\u0010\t\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016Jc\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000429\u0010\u0018\u001a5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006¢\u0006\u0002\b\b2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0002ø\u0001\u0000¢\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u001b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00010\u0013H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u001cJ\u000b\u0010\u001d\u001a\u00028\u0001¢\u0006\u0002\u0010\u001eJ5\u0010\u0015\u001a\u0002H\u001f\"\u0004\b\u0002\u0010 \"\u0004\b\u0003\u0010\u001f*\u000e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\u001f0!2\u0006\u0010\t\u001a\u0002H H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\"R\u0018\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fRF\u0010\u0010\u001a5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006¢\u0006\u0002\b\bX\u0082\u000eø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0011R\u001e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0013X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0014R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006#"}, d2 = {"Lkotlin/DeepRecursiveScopeImpl;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/DeepRecursiveScope;", "Lkotlin/coroutines/Continuation;", "block", "Lkotlin/Function3;", "", "Lkotlin/ExtensionFunctionType;", "value", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;)V", "cont", c.R, "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "function", "Lkotlin/jvm/functions/Function3;", "result", "Lkotlin/Result;", "Ljava/lang/Object;", "callRecursive", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "crossFunctionCompletion", "currentFunction", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "resumeWith", "", "(Ljava/lang/Object;)V", "runCallLoop", "()Ljava/lang/Object;", ExifInterface.LATITUDE_SOUTH, "U", "Lkotlin/DeepRecursiveFunction;", "(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes4.dex */
public final class DeepRecursiveScopeImpl<T, R> extends DeepRecursiveScope<T, R> implements Continuation<R> {
    private Function3<? super DeepRecursiveScope<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function;
    private Object value;
    private Continuation<Object> cont = this;
    private Object result = DeepRecursiveKt.UNDEFINED_RESULT;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DeepRecursiveScopeImpl(Function3<? super DeepRecursiveScope<T, R>, ? super T, ? super Continuation<? super R>, ? extends Object> function3, T t) {
        super(null);
        Intrinsics.checkNotNullParameter(function3, "block");
        this.function = function3;
        this.value = t;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        this.cont = null;
        this.result = obj;
    }

    @Override // kotlin.DeepRecursiveScope
    public Object callRecursive(T t, Continuation<? super R> continuation) {
        Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.cont = continuation;
        this.value = t;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return coroutine_suspended;
    }

    @Override // kotlin.DeepRecursiveScope
    public <U, S> Object callRecursive(DeepRecursiveFunction<U, S> deepRecursiveFunction, U u, Continuation<? super S> continuation) {
        Function3<DeepRecursiveScope<U, S>, U, Continuation<? super S>, Object> block$kotlin_stdlib = deepRecursiveFunction.getBlock$kotlin_stdlib();
        Objects.requireNonNull(block$kotlin_stdlib, "null cannot be cast to non-null type kotlin.DeepRecursiveFunctionBlock /* = suspend kotlin.DeepRecursiveScope<*, *>.(kotlin.Any?) -> kotlin.Any? */");
        DeepRecursiveScopeImpl<T, R> deepRecursiveScopeImpl = this;
        Function3<? super DeepRecursiveScope<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function3 = deepRecursiveScopeImpl.function;
        if (block$kotlin_stdlib != function3) {
            deepRecursiveScopeImpl.function = block$kotlin_stdlib;
            Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            deepRecursiveScopeImpl.cont = deepRecursiveScopeImpl.crossFunctionCompletion(function3, continuation);
        } else {
            Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            deepRecursiveScopeImpl.cont = continuation;
        }
        deepRecursiveScopeImpl.value = u;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return coroutine_suspended;
    }

    private final Continuation<Object> crossFunctionCompletion(Function3<? super DeepRecursiveScope<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function3, Continuation<Object> continuation) {
        return new Continuation<Object>(this, function3, continuation) { // from class: kotlin.DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1
            final /* synthetic */ Continuation $cont$inlined;
            final /* synthetic */ Function3 $currentFunction$inlined;
            final /* synthetic */ DeepRecursiveScopeImpl this$0;

            {
                this.this$0 = r2;
                this.$currentFunction$inlined = r3;
                this.$cont$inlined = r4;
            }

            @Override // kotlin.coroutines.Continuation
            public CoroutineContext getContext() {
                return CoroutineContext.this;
            }

            @Override // kotlin.coroutines.Continuation
            public void resumeWith(Object obj) {
                this.this$0.function = this.$currentFunction$inlined;
                this.this$0.cont = this.$cont$inlined;
                this.this$0.result = obj;
            }
        };
    }

    public final R runCallLoop() {
        while (true) {
            R r = (R) this.result;
            Continuation<Object> continuation = this.cont;
            if (continuation == null) {
                ResultKt.throwOnFailure(r);
                return r;
            } else if (Result.m46equalsimpl0(DeepRecursiveKt.UNDEFINED_RESULT, r)) {
                try {
                    Function3<? super DeepRecursiveScope<?, ?>, Object, ? super Continuation<Object>, ? extends Object> function3 = this.function;
                    Object obj = this.value;
                    if (function3 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type (R, P, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                        break;
                    }
                    Object invoke = ((Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function3, 3)).invoke(this, obj, continuation);
                    if (invoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        Result.Companion companion = Result.Companion;
                        continuation.resumeWith(Result.m44constructorimpl(invoke));
                    }
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    continuation.resumeWith(Result.m44constructorimpl(ResultKt.createFailure(th)));
                }
            } else {
                this.result = DeepRecursiveKt.UNDEFINED_RESULT;
                continuation.resumeWith(r);
            }
        }
    }
}
