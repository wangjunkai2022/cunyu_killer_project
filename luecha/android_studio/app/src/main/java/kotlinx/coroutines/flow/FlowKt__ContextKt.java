package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.c;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.FusibleFlow;

/* compiled from: Context.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¢\u0006\u0002\b\u0004\u001a(\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tH\u0007\u001a0\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b\u001a\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u0006\u001a\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u0006\u001a$\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u0002\u001a\u00020\u0003\u001a[\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00100\u0006\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\t2#\u0010\u0013\u001a\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00070\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00100\u00060\u0014¢\u0006\u0002\b\u0015H\u0007¨\u0006\u0016"}, d2 = {"checkFlowContext", "", c.R, "Lkotlin/coroutines/CoroutineContext;", "checkFlowContext$FlowKt__ContextKt", "buffer", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "capacity", "", "onBufferOverflow", "Lkotlinx/coroutines/channels/BufferOverflow;", "cancellable", "conflate", "flowOn", "flowWith", "R", "flowContext", "bufferSize", "builder", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 4, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class FlowKt__ContextKt {
    public static /* synthetic */ Flow buffer$default(Flow flow, int i, BufferOverflow bufferOverflow, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -2;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return FlowKt.buffer(flow, i, bufferOverflow);
    }

    public static final <T> Flow<T> buffer(Flow<? extends T> flow, int i, BufferOverflow bufferOverflow) {
        BufferOverflow bufferOverflow2;
        int i2;
        boolean z = true;
        if (i >= 0 || i == -2 || i == -1) {
            if (i == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
                z = false;
            }
            if (z) {
                if (i == -1) {
                    bufferOverflow2 = BufferOverflow.DROP_OLDEST;
                    i2 = 0;
                } else {
                    i2 = i;
                    bufferOverflow2 = bufferOverflow;
                }
                if (flow instanceof FusibleFlow) {
                    return FusibleFlow.DefaultImpls.fuse$default((FusibleFlow) flow, null, i2, bufferOverflow2, 1, null);
                }
                return new ChannelFlowOperatorImpl(flow, null, i2, bufferOverflow2, 2, null);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i).toString());
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.4.0, binary compatibility with earlier versions")
    public static final /* synthetic */ <T> Flow<T> buffer(Flow<? extends T> flow, int i) {
        return buffer$default(flow, i, null, 2, null);
    }

    public static /* synthetic */ Flow buffer$default(Flow flow, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -2;
        }
        return buffer(flow, i);
    }

    public static final <T> Flow<T> conflate(Flow<? extends T> flow) {
        return buffer$default(flow, -1, null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Flow<T> flowOn(Flow<? extends T> flow, CoroutineContext coroutineContext) {
        checkFlowContext$FlowKt__ContextKt(coroutineContext);
        if (Intrinsics.areEqual(coroutineContext, EmptyCoroutineContext.INSTANCE)) {
            return flow;
        }
        if (flow instanceof FusibleFlow) {
            return FusibleFlow.DefaultImpls.fuse$default((FusibleFlow) flow, coroutineContext, 0, null, 6, null);
        }
        return new ChannelFlowOperatorImpl(flow, coroutineContext, 0, null, 12, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Flow<T> cancellable(Flow<? extends T> flow) {
        return flow instanceof CancellableFlow ? flow : new CancellableFlowImpl(flow);
    }

    public static /* synthetic */ Flow flowWith$default(Flow flow, CoroutineContext coroutineContext, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -2;
        }
        return FlowKt.flowWith(flow, coroutineContext, i, function1);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "flowWith is deprecated without replacement, please refer to its KDoc for an explanation")
    public static final <T, R> Flow<R> flowWith(Flow<? extends T> flow, CoroutineContext coroutineContext, int i, Function1<? super Flow<? extends T>, ? extends Flow<? extends R>> function1) {
        checkFlowContext$FlowKt__ContextKt(coroutineContext);
        return new Flow<R>(i, function1, coroutineContext) { // from class: kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1
            final /* synthetic */ int $bufferSize$inlined;
            final /* synthetic */ Function1 $builder$inlined;
            final /* synthetic */ CoroutineContext $flowContext$inlined;

            {
                this.$bufferSize$inlined = r2;
                this.$builder$inlined = r3;
                this.$flowContext$inlined = r4;
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = FlowKt__ContextKt.buffer$default(FlowKt.flowOn((Flow) this.$builder$inlined.invoke(FlowKt__ContextKt.buffer$default(FlowKt.flowOn(Flow.this, continuation.getContext().minusKey(Job.Key)), this.$bufferSize$inlined, null, 2, null)), this.$flowContext$inlined), this.$bufferSize$inlined, null, 2, null).collect(
                /*  JADX ERROR: Method code generation error
                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0035: INVOKE  (r5v1 'collect' java.lang.Object) = 
                      (wrap: kotlinx.coroutines.flow.Flow : 0x002a: ONE_ARG  (r0v7 kotlinx.coroutines.flow.Flow A[REMOVE]) = 
                      (wrap: kotlinx.coroutines.flow.Flow : 0x0000: INVOKE  
                      (wrap: kotlinx.coroutines.flow.Flow : 0x0024: INVOKE  (r0v6 kotlinx.coroutines.flow.Flow A[REMOVE]) = 
                      (wrap: kotlinx.coroutines.flow.Flow : 0x0020: CHECK_CAST (r0v5 kotlinx.coroutines.flow.Flow A[REMOVE]) = (kotlinx.coroutines.flow.Flow) (wrap: java.lang.Object : 0x001c: INVOKE  (r0v4 java.lang.Object A[REMOVE]) = 
                      (wrap: kotlin.jvm.functions.Function1 : 0x001a: IGET  (r1v4 kotlin.jvm.functions.Function1 A[REMOVE]) = (r4v0 'this' kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1 A[IMMUTABLE_TYPE, THIS]) kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1.$builder$inlined kotlin.jvm.functions.Function1)
                      (wrap: kotlinx.coroutines.flow.Flow : 0x0016: ONE_ARG  (r0v3 kotlinx.coroutines.flow.Flow A[REMOVE]) = 
                      (wrap: kotlinx.coroutines.flow.Flow : 0x0000: INVOKE  
                      (wrap: kotlinx.coroutines.flow.Flow : 0x000e: INVOKE  (r0v2 kotlinx.coroutines.flow.Flow A[REMOVE]) = 
                      (wrap: kotlinx.coroutines.flow.Flow : 0x000c: IGET  (r1v2 kotlinx.coroutines.flow.Flow A[REMOVE]) = (r4v0 'this' kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1 A[IMMUTABLE_TYPE, THIS]) kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1.$source$inlined kotlinx.coroutines.flow.Flow)
                      (wrap: kotlin.coroutines.CoroutineContext : 0x0008: INVOKE  (r0v1 kotlin.coroutines.CoroutineContext A[REMOVE]) = 
                      (wrap: kotlin.coroutines.CoroutineContext : 0x0000: INVOKE  (r0v0 kotlin.coroutines.CoroutineContext A[REMOVE]) = (r6v0 'continuation' kotlin.coroutines.Continuation) type: INTERFACE call: kotlin.coroutines.Continuation.getContext():kotlin.coroutines.CoroutineContext)
                      (wrap: kotlinx.coroutines.Job$Key : 0x0004: SGET  (r1v0 kotlinx.coroutines.Job$Key A[REMOVE]) =  kotlinx.coroutines.Job.Key kotlinx.coroutines.Job$Key)
                     type: INTERFACE call: kotlin.coroutines.CoroutineContext.minusKey(kotlin.coroutines.CoroutineContext$Key):kotlin.coroutines.CoroutineContext)
                     type: STATIC call: kotlinx.coroutines.flow.FlowKt.flowOn(kotlinx.coroutines.flow.Flow, kotlin.coroutines.CoroutineContext):kotlinx.coroutines.flow.Flow)
                      (wrap: int : 0x0012: IGET  (r1v3 int A[REMOVE]) = (r4v0 'this' kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1 A[IMMUTABLE_TYPE, THIS]) kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1.$bufferSize$inlined int)
                      (null kotlinx.coroutines.channels.BufferOverflow)
                      (2 int)
                      (null java.lang.Object)
                     type: STATIC call: kotlinx.coroutines.flow.FlowKt__ContextKt.buffer$default(kotlinx.coroutines.flow.Flow, int, kotlinx.coroutines.channels.BufferOverflow, int, java.lang.Object):kotlinx.coroutines.flow.Flow)
                    )
                     type: INTERFACE call: kotlin.jvm.functions.Function1.invoke(java.lang.Object):java.lang.Object))
                      (wrap: kotlin.coroutines.CoroutineContext : 0x0022: IGET  (r1v5 kotlin.coroutines.CoroutineContext A[REMOVE]) = (r4v0 'this' kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1 A[IMMUTABLE_TYPE, THIS]) kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1.$flowContext$inlined kotlin.coroutines.CoroutineContext)
                     type: STATIC call: kotlinx.coroutines.flow.FlowKt.flowOn(kotlinx.coroutines.flow.Flow, kotlin.coroutines.CoroutineContext):kotlinx.coroutines.flow.Flow)
                      (wrap: int : 0x0028: IGET  (r1v6 int A[REMOVE]) = (r4v0 'this' kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1 A[IMMUTABLE_TYPE, THIS]) kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1.$bufferSize$inlined int)
                      (null kotlinx.coroutines.channels.BufferOverflow)
                      (2 int)
                      (null java.lang.Object)
                     type: STATIC call: kotlinx.coroutines.flow.FlowKt__ContextKt.buffer$default(kotlinx.coroutines.flow.Flow, int, kotlinx.coroutines.channels.BufferOverflow, int, java.lang.Object):kotlinx.coroutines.flow.Flow)
                    )
                      (wrap: kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1 : 0x0030: CONSTRUCTOR  (r1v7 kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1 A[REMOVE]) = (r5v0 'flowCollector' kotlinx.coroutines.flow.FlowCollector) call: kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1.<init>(kotlinx.coroutines.flow.FlowCollector):void type: CONSTRUCTOR)
                      (r6v0 'continuation' kotlin.coroutines.Continuation)
                     type: INTERFACE call: kotlinx.coroutines.flow.Flow.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object in method: kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object, file: classes4.dex
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:270)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:233)
                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:90)
                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:255)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:248)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:369)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:304)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:270)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1, state: NOT_LOADED
                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:290)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:668)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:378)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:132)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:117)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:104)
                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:974)
                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:799)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:382)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:263)
                    	... 15 more
                    */
                /*
                    this = this;
                    kotlin.coroutines.CoroutineContext r0 = r6.getContext()
                    kotlinx.coroutines.Job$Key r1 = kotlinx.coroutines.Job.Key
                    kotlin.coroutines.CoroutineContext$Key r1 = (kotlin.coroutines.CoroutineContext.Key) r1
                    kotlin.coroutines.CoroutineContext r0 = r0.minusKey(r1)
                    kotlinx.coroutines.flow.Flow r1 = kotlinx.coroutines.flow.Flow.this
                    kotlinx.coroutines.flow.Flow r0 = kotlinx.coroutines.flow.FlowKt.flowOn(r1, r0)
                    int r1 = r4.$bufferSize$inlined
                    r2 = 0
                    r3 = 2
                    kotlinx.coroutines.flow.Flow r0 = kotlinx.coroutines.flow.FlowKt.buffer$default(r0, r1, r2, r3, r2)
                    kotlin.jvm.functions.Function1 r1 = r4.$builder$inlined
                    java.lang.Object r0 = r1.invoke(r0)
                    kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
                    kotlin.coroutines.CoroutineContext r1 = r4.$flowContext$inlined
                    kotlinx.coroutines.flow.Flow r0 = kotlinx.coroutines.flow.FlowKt.flowOn(r0, r1)
                    int r1 = r4.$bufferSize$inlined
                    kotlinx.coroutines.flow.Flow r0 = kotlinx.coroutines.flow.FlowKt.buffer$default(r0, r1, r2, r3, r2)
                    kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1 r1 = new kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1
                    r1.<init>(r5)
                    kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                    java.lang.Object r5 = r0.collect(r1, r6)
                    java.lang.Object r6 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    if (r5 != r6) goto L_0x0040
                    return r5
                L_0x0040:
                    kotlin.Unit r5 = kotlin.Unit.INSTANCE
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
            }
        };
    }

    private static final void checkFlowContext$FlowKt__ContextKt(CoroutineContext coroutineContext) {
        if (!(coroutineContext.get(Job.Key) == null)) {
            throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + coroutineContext).toString());
        }
    }
}
