package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: Transform.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u001aM\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012$\b\u0004\u0010\u0003\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\b\u001a\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\u0006\b\u0000\u0010\n\u0018\u0001*\u0006\u0012\u0002\b\u00030\u0001H\u0086\b\u001aM\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012$\b\u0004\u0010\u0003\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\b\u001a\"\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0007*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\u001ab\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u0002H\u00020\u000123\b\u0004\u0010\u000e\u001a-\b\u0001\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\b\u001ah\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\n*\u00020\u0007*\b\u0012\u0004\u0012\u0002H\u00020\u000125\b\u0004\u0010\u000e\u001a/\b\u0001\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\n0\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\b\u001aH\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\"\u0010\u0014\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004ø\u0001\u0000¢\u0006\u0002\u0010\b\u001an\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012F\u0010\u0017\u001aB\b\u0001\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0018H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u001a~\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u001c\u001a\u0002H\n2H\b\u0001\u0010\u0017\u001aB\b\u0001\u0012\u0013\u0012\u0011H\n¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0018H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001d\u001a\"\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u001f0\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"filter", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "filterIsInstance", "R", "filterNot", "filterNotNull", "map", "transform", "Lkotlin/ParameterName;", "name", "value", "mapNotNull", "onEach", "action", "", "runningReduce", "operation", "Lkotlin/Function3;", "accumulator", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "scan", "initial", "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "withIndex", "Lkotlin/collections/IndexedValue;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 4, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
final /* synthetic */ class FlowKt__TransformKt {
    public static final <T> Flow<T> filter(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__TransformKt$filter$$inlined$unsafeTransform$1(flow, function2);
    }

    public static final <T> Flow<T> filterNot(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1(flow, function2);
    }

    public static final <T> Flow<T> filterNotNull(Flow<? extends T> flow) {
        return new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(flow);
    }

    public static final <T, R> Flow<R> map(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return new FlowKt__TransformKt$map$$inlined$unsafeTransform$1(flow, function2);
    }

    public static final <T, R> Flow<R> mapNotNull(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return new FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1(flow, function2);
    }

    public static final <T> Flow<IndexedValue<T>> withIndex(Flow<? extends T> flow) {
        return new Flow<IndexedValue<? extends T>>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, Continuation continuation) {
                Ref.IntRef intRef = new Ref.IntRef();
                intRef.element = 0;
                Object collect = Flow.this.collect(
                /*  JADX ERROR: Method code generation error
                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0011: INVOKE  (r4v1 'collect' java.lang.Object) = 
                      (wrap: kotlinx.coroutines.flow.Flow : 0x0008: IGET  (r1v1 kotlinx.coroutines.flow.Flow A[REMOVE]) = (r3v0 'this' kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1 A[IMMUTABLE_TYPE, THIS]) kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1.$this_withIndex$inlined kotlinx.coroutines.flow.Flow)
                      (wrap: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1$lambda$1 : 0x000c: CONSTRUCTOR  (r2v0 kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1$lambda$1 A[REMOVE]) = (r4v0 'flowCollector' kotlinx.coroutines.flow.FlowCollector), (r0v0 'intRef' kotlin.jvm.internal.Ref$IntRef) call: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1$lambda$1.<init>(kotlinx.coroutines.flow.FlowCollector, kotlin.jvm.internal.Ref$IntRef):void type: CONSTRUCTOR)
                      (r5v0 'continuation' kotlin.coroutines.Continuation)
                     type: INTERFACE call: kotlinx.coroutines.flow.Flow.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object in method: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object, file: classes4.dex
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
                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1$lambda$1, state: NOT_LOADED
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
                    kotlin.jvm.internal.Ref$IntRef r0 = new kotlin.jvm.internal.Ref$IntRef
                    r0.<init>()
                    r1 = 0
                    r0.element = r1
                    kotlinx.coroutines.flow.Flow r1 = kotlinx.coroutines.flow.Flow.this
                    kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1$lambda$1 r2 = new kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1$lambda$1
                    r2.<init>(r4, r0)
                    kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2
                    java.lang.Object r4 = r1.collect(r2, r5)
                    java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    if (r4 != r5) goto L_0x001c
                    return r4
                L_0x001c:
                    kotlin.Unit r4 = kotlin.Unit.INSTANCE
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
            }
        };
    }

    public static final <T> Flow<T> onEach(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(flow, function2);
    }

    public static final <T, R> Flow<R> scan(Flow<? extends T> flow, R r, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return new FlowKt__TransformKt$scan$$inlined$unsafeFlow$1(flow, r, function3);
    }

    public static final <T> Flow<T> runningReduce(Flow<? extends T> flow, Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        return new FlowKt__TransformKt$runningReduce$$inlined$unsafeFlow$1(flow, function3);
    }
}
