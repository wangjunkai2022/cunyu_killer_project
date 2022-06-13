package kotlin.streams.jdk8;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: Streams.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\u001a\u0012\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0007\u001a\u0012\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0005H\u0007\u001a\u0012\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001*\u00020\u0007H\u0007\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\b0\u0001\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\tH\u0007\u001a\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\t\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u0001H\u0007\u001a\u0012\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\f*\u00020\u0003H\u0007\u001a\u0012\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\f*\u00020\u0005H\u0007\u001a\u0012\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\f*\u00020\u0007H\u0007\u001a\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\f\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\tH\u0007¨\u0006\r"}, d2 = {"asSequence", "Lkotlin/sequences/Sequence;", "", "Ljava/util/stream/DoubleStream;", "", "Ljava/util/stream/IntStream;", "", "Ljava/util/stream/LongStream;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/stream/Stream;", "asStream", "toList", "", "kotlin-stdlib-jdk8"}, k = 2, mv = {1, 1, 15}, pn = "kotlin.streams")
/* loaded from: classes4.dex */
public final class StreamsKt {
    public static final <T> Sequence<T> asSequence(Stream<T> stream) {
        Intrinsics.checkParameterIsNotNull(stream, "$this$asSequence");
        return new Sequence<T>(stream) { // from class: kotlin.streams.jdk8.StreamsKt$asSequence$$inlined$Sequence$1
            final /* synthetic */ Stream $this_asSequence$inlined;

            {
                this.$this_asSequence$inlined = r1;
            }

            @Override // kotlin.sequences.Sequence
            public Iterator<T> iterator() {
                return this.$this_asSequence$inlined.iterator();
            }
        };
    }

    public static final Sequence<Integer> asSequence(IntStream intStream) {
        Intrinsics.checkParameterIsNotNull(intStream, "$this$asSequence");
        return new Sequence<Integer>(intStream) { // from class: kotlin.streams.jdk8.StreamsKt$asSequence$$inlined$Sequence$2
            final /* synthetic */ IntStream $this_asSequence$inlined;

            {
                this.$this_asSequence$inlined = r1;
            }

            @Override // kotlin.sequences.Sequence
            public Iterator<Integer> iterator() {
                return this.$this_asSequence$inlined.iterator();
            }
        };
    }

    public static final Sequence<Long> asSequence(LongStream longStream) {
        Intrinsics.checkParameterIsNotNull(longStream, "$this$asSequence");
        return new Sequence<Long>(longStream) { // from class: kotlin.streams.jdk8.StreamsKt$asSequence$$inlined$Sequence$3
            final /* synthetic */ LongStream $this_asSequence$inlined;

            {
                this.$this_asSequence$inlined = r1;
            }

            @Override // kotlin.sequences.Sequence
            public Iterator<Long> iterator() {
                return this.$this_asSequence$inlined.iterator();
            }
        };
    }

    public static final Sequence<Double> asSequence(DoubleStream doubleStream) {
        Intrinsics.checkParameterIsNotNull(doubleStream, "$this$asSequence");
        return new Sequence<Double>(doubleStream) { // from class: kotlin.streams.jdk8.StreamsKt$asSequence$$inlined$Sequence$4
            final /* synthetic */ DoubleStream $this_asSequence$inlined;

            {
                this.$this_asSequence$inlined = r1;
            }

            @Override // kotlin.sequences.Sequence
            public Iterator<Double> iterator() {
                return this.$this_asSequence$inlined.iterator();
            }
        };
    }

    public static final <T> Stream<T> asStream(Sequence<? extends T> sequence) {
        Intrinsics.checkParameterIsNotNull(sequence, "$this$asStream");
        Stream<T> stream = StreamSupport.stream(new Supplier<Spliterator<T>>() { // from class: kotlin.streams.jdk8.StreamsKt$asStream$1
            @Override // java.util.function.Supplier
            public final Spliterator<T> get() {
                return Spliterators.spliteratorUnknownSize(Sequence.this.iterator(), 16);
            }
        }, 16, false);
        Intrinsics.checkExpressionValueIsNotNull(stream, "StreamSupport.stream({ S…literator.ORDERED, false)");
        return stream;
    }

    public static final <T> List<T> toList(Stream<T> stream) {
        Intrinsics.checkParameterIsNotNull(stream, "$this$toList");
        Object collect = stream.collect(Collectors.toList());
        Intrinsics.checkExpressionValueIsNotNull(collect, "collect(Collectors.toList<T>())");
        return (List) collect;
    }

    public static final List<Integer> toList(IntStream intStream) {
        Intrinsics.checkParameterIsNotNull(intStream, "$this$toList");
        int[] array = intStream.toArray();
        Intrinsics.checkExpressionValueIsNotNull(array, "toArray()");
        return ArraysKt.asList(array);
    }

    public static final List<Long> toList(LongStream longStream) {
        Intrinsics.checkParameterIsNotNull(longStream, "$this$toList");
        long[] array = longStream.toArray();
        Intrinsics.checkExpressionValueIsNotNull(array, "toArray()");
        return ArraysKt.asList(array);
    }

    public static final List<Double> toList(DoubleStream doubleStream) {
        Intrinsics.checkParameterIsNotNull(doubleStream, "$this$toList");
        double[] array = doubleStream.toArray();
        Intrinsics.checkExpressionValueIsNotNull(array, "toArray()");
        return ArraysKt.asList(array);
    }
}
