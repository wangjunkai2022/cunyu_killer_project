package kotlin.coroutines.intrinsics;

import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: IntrinsicsJvm.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aF\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b\u0000\u0010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u00012\u001c\b\u0004\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0083\b¢\u0006\u0002\b\b\u001aD\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b\u0000\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\n\u001a]\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007\u001aA\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b\u0000\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001aZ\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001an\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0014\"\u0004\b\u0002\u0010\u0003*)\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0015¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0006\u0010\u0016\u001a\u0002H\u00142\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0081\bø\u0001\u0000¢\u0006\u0002\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"createCoroutineFromSuspendFunction", "Lkotlin/coroutines/Continuation;", "", ExifInterface.GPS_DIRECTION_TRUE, "completion", "block", "Lkotlin/Function1;", "", "createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt", "createCoroutineUnintercepted", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "intercepted", "startCoroutineUninterceptedOrReturn", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "P", "Lkotlin/Function3;", "param", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xi = 1, xs = "kotlin/coroutines/intrinsics/IntrinsicsKt")
/* loaded from: classes4.dex */
class IntrinsicsKt__IntrinsicsJvmKt {
    private static final <T> Object startCoroutineUninterceptedOrReturn(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(continuation);
    }

    private static final <R, T> Object startCoroutineUninterceptedOrReturn(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation) {
        Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, continuation);
    }

    private static final <R, P, T> Object startCoroutineUninterceptedOrReturn(Function3<? super R, ? super P, ? super Continuation<? super T>, ? extends Object> function3, R r, P p, Continuation<? super T> continuation) {
        Objects.requireNonNull(function3, "null cannot be cast to non-null type (R, P, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        return ((Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function3, 3)).invoke(r, p, continuation);
    }

    public static final <T> Continuation<Unit> createCoroutineUnintercepted(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        Intrinsics.checkNotNullParameter(function1, "$this$createCoroutineUnintercepted");
        Intrinsics.checkNotNullParameter(continuation, "completion");
        Continuation<?> probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        if (function1 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function1).create(probeCoroutineCreated);
        }
        CoroutineContext context = probeCoroutineCreated.getContext();
        if (context == EmptyCoroutineContext.INSTANCE) {
            Objects.requireNonNull(probeCoroutineCreated, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            return new RestrictedContinuationImpl(probeCoroutineCreated, function1) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1
                final /* synthetic */ Function1 $this_createCoroutineUnintercepted$inlined;
                private int label;

                {
                    this.$this_createCoroutineUnintercepted$inlined = r3;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                protected Object invokeSuspend(Object obj) {
                    int i = this.label;
                    if (i == 0) {
                        this.label = 1;
                        ResultKt.throwOnFailure(obj);
                        Function1 function12 = this.$this_createCoroutineUnintercepted$inlined;
                        Objects.requireNonNull(function12, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                        return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function12, 1)).invoke(this);
                    } else if (i == 1) {
                        this.label = 2;
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    } else {
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                }
            };
        }
        Objects.requireNonNull(probeCoroutineCreated, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        return new ContinuationImpl(context, probeCoroutineCreated, context, function1) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2
            final /* synthetic */ CoroutineContext $context;
            final /* synthetic */ Function1 $this_createCoroutineUnintercepted$inlined;
            private int label;

            {
                this.$context = r2;
                this.$this_createCoroutineUnintercepted$inlined = r5;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            protected Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i == 0) {
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    Function1 function12 = this.$this_createCoroutineUnintercepted$inlined;
                    Objects.requireNonNull(function12, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                    return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function12, 1)).invoke(this);
                } else if (i == 1) {
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                } else {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
            }
        };
    }

    public static final <R, T> Continuation<Unit> createCoroutineUnintercepted(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation) {
        Intrinsics.checkNotNullParameter(function2, "$this$createCoroutineUnintercepted");
        Intrinsics.checkNotNullParameter(continuation, "completion");
        Continuation<?> probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).create(r, probeCoroutineCreated);
        }
        CoroutineContext context = probeCoroutineCreated.getContext();
        if (context == EmptyCoroutineContext.INSTANCE) {
            Objects.requireNonNull(probeCoroutineCreated, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            return new RestrictedContinuationImpl(probeCoroutineCreated, function2, r) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
                final /* synthetic */ Object $receiver$inlined;
                final /* synthetic */ Function2 $this_createCoroutineUnintercepted$inlined;
                private int label;

                {
                    this.$this_createCoroutineUnintercepted$inlined = r3;
                    this.$receiver$inlined = r4;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                protected Object invokeSuspend(Object obj) {
                    int i = this.label;
                    if (i == 0) {
                        this.label = 1;
                        ResultKt.throwOnFailure(obj);
                        Function2 function22 = this.$this_createCoroutineUnintercepted$inlined;
                        Objects.requireNonNull(function22, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                        return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function22, 2)).invoke(this.$receiver$inlined, this);
                    } else if (i == 1) {
                        this.label = 2;
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    } else {
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                }
            };
        }
        Objects.requireNonNull(probeCoroutineCreated, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        return new ContinuationImpl(context, probeCoroutineCreated, context, function2, r) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
            final /* synthetic */ CoroutineContext $context;
            final /* synthetic */ Object $receiver$inlined;
            final /* synthetic */ Function2 $this_createCoroutineUnintercepted$inlined;
            private int label;

            {
                this.$context = r2;
                this.$this_createCoroutineUnintercepted$inlined = r5;
                this.$receiver$inlined = r6;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            protected Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i == 0) {
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    Function2 function22 = this.$this_createCoroutineUnintercepted$inlined;
                    Objects.requireNonNull(function22, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                    return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function22, 2)).invoke(this.$receiver$inlined, this);
                } else if (i == 1) {
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                } else {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Continuation<T> intercepted(Continuation<? super T> continuation) {
        Continuation<T> continuation2;
        Intrinsics.checkNotNullParameter(continuation, "$this$intercepted");
        ContinuationImpl continuationImpl = !(continuation instanceof ContinuationImpl) ? null : continuation;
        return (continuationImpl == null || (continuation2 = (Continuation<T>) continuationImpl.intercepted()) == null) ? continuation : continuation2;
    }

    private static final <T> Continuation<Unit> createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt(Continuation<? super T> continuation, Function1<? super Continuation<? super T>, ? extends Object> function1) {
        CoroutineContext context = continuation.getContext();
        if (context == EmptyCoroutineContext.INSTANCE) {
            Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            return new RestrictedContinuationImpl(continuation, continuation) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1
                final /* synthetic */ Continuation $completion;
                private int label;

                {
                    this.$completion = r2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                protected Object invokeSuspend(Object obj) {
                    int i = this.label;
                    if (i == 0) {
                        this.label = 1;
                        ResultKt.throwOnFailure(obj);
                        return Function1.this.invoke(this);
                    } else if (i == 1) {
                        this.label = 2;
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    } else {
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                }
            };
        }
        Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        return new ContinuationImpl(continuation, context, continuation, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2
            final /* synthetic */ Continuation $completion;
            final /* synthetic */ CoroutineContext $context;
            private int label;

            {
                this.$completion = r2;
                this.$context = r3;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            protected Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i == 0) {
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    return Function1.this.invoke(this);
                } else if (i == 1) {
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                } else {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
            }
        };
    }
}
