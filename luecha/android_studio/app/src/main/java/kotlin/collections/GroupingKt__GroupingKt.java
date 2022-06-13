package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: Grouping.kt */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u001a\u009e\u0001\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052b\u0010\u0006\u001a^\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0015\u0012\u0013\u0018\u0001H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002H\u00030\u0007H\u0087\bø\u0001\u0000\u001a·\u0001\u0010\u000f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102b\u0010\u0006\u001a^\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0015\u0012\u0013\u0018\u0001H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002H\u00030\u0007H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001aI\u0010\u0014\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0016\b\u0002\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00150\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u0010H\u0007¢\u0006\u0002\u0010\u0016\u001a¿\u0001\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u000526\u0010\u0018\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u00192K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u001aH\u0087\bø\u0001\u0000\u001a\u007f\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u001b\u001a\u0002H\u000326\u0010\u0006\u001a2\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u0019H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001aØ\u0001\u0010\u001d\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u001026\u0010\u0018\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u00192K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u001aH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u001e\u001a\u0093\u0001\u0010\u001d\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102\u0006\u0010\u001b\u001a\u0002H\u000326\u0010\u0006\u001a2\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u0019H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u001f\u001a\u008b\u0001\u0010 \u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H!0\u0001\"\u0004\b\u0000\u0010!\"\b\b\u0001\u0010\u0004*\u0002H!\"\u0004\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H!¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H!0\u001aH\u0087\bø\u0001\u0000\u001a¤\u0001\u0010\"\u001a\u0002H\u0010\"\u0004\b\u0000\u0010!\"\b\b\u0001\u0010\u0004*\u0002H!\"\u0004\b\u0002\u0010\u0002\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H!0\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H!¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H!0\u001aH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010#\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006$"}, d2 = {"aggregate", "", "K", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/collections/Grouping;", "operation", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "key", "accumulator", "element", "", "first", "aggregateTo", "M", "", "destination", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)Ljava/util/Map;", "eachCountTo", "", "(Lkotlin/collections/Grouping;Ljava/util/Map;)Ljava/util/Map;", "fold", "initialValueSelector", "Lkotlin/Function2;", "Lkotlin/Function3;", "initialValue", "(Lkotlin/collections/Grouping;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "foldTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "(Lkotlin/collections/Grouping;Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "reduce", ExifInterface.LATITUDE_SOUTH, "reduceTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xi = 1, xs = "kotlin/collections/GroupingKt")
/* loaded from: classes4.dex */
class GroupingKt__GroupingKt extends GroupingKt__GroupingJVMKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static final <T, K, R> java.util.Map<K, R> aggregate(kotlin.collections.Grouping<T, ? extends K> r6, kotlin.jvm.functions.Function4<? super K, ? super R, ? super T, ? super java.lang.Boolean, ? extends R> r7) {
        /*
            java.lang.String r0 = "$this$aggregate"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "operation"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Map r0 = (java.util.Map) r0
            java.util.Iterator r1 = r6.sourceIterator()
        L_0x0015:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x003e
            java.lang.Object r2 = r1.next()
            java.lang.Object r3 = r6.keyOf(r2)
            java.lang.Object r4 = r0.get(r3)
            if (r4 != 0) goto L_0x0031
            boolean r5 = r0.containsKey(r3)
            if (r5 != 0) goto L_0x0031
            r5 = 1
            goto L_0x0032
        L_0x0031:
            r5 = 0
        L_0x0032:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
            java.lang.Object r2 = r7.invoke(r3, r4, r2, r5)
            r0.put(r3, r2)
            goto L_0x0015
        L_0x003e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.aggregate(kotlin.collections.Grouping, kotlin.jvm.functions.Function4):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static final <T, K, R, M extends java.util.Map<? super K, R>> M aggregateTo(kotlin.collections.Grouping<T, ? extends K> r5, M r6, kotlin.jvm.functions.Function4<? super K, ? super R, ? super T, ? super java.lang.Boolean, ? extends R> r7) {
        /*
            java.lang.String r0 = "$this$aggregateTo"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "destination"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "operation"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.util.Iterator r0 = r5.sourceIterator()
        L_0x0013:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x003c
            java.lang.Object r1 = r0.next()
            java.lang.Object r2 = r5.keyOf(r1)
            java.lang.Object r3 = r6.get(r2)
            if (r3 != 0) goto L_0x002f
            boolean r4 = r6.containsKey(r2)
            if (r4 != 0) goto L_0x002f
            r4 = 1
            goto L_0x0030
        L_0x002f:
            r4 = 0
        L_0x0030:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            java.lang.Object r1 = r7.invoke(r2, r3, r1, r4)
            r6.put(r2, r1)
            goto L_0x0013
        L_0x003c:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.aggregateTo(kotlin.collections.Grouping, java.util.Map, kotlin.jvm.functions.Function4):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K, M extends Map<? super K, Integer>> M eachCountTo(Grouping<T, ? extends K> grouping, M m) {
        Intrinsics.checkNotNullParameter(grouping, "$this$eachCountTo");
        Intrinsics.checkNotNullParameter(m, "destination");
        Iterator<T> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            Object keyOf = grouping.keyOf(sourceIterator.next());
            Object obj = m.get(keyOf);
            if (obj == null && !m.containsKey(keyOf)) {
                obj = 0;
            }
            m.put(keyOf, Integer.valueOf(((Number) obj).intValue() + 1));
        }
        return m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static final <T, K, R> java.util.Map<K, R> fold(kotlin.collections.Grouping<T, ? extends K> r6, kotlin.jvm.functions.Function2<? super K, ? super T, ? extends R> r7, kotlin.jvm.functions.Function3<? super K, ? super R, ? super T, ? extends R> r8) {
        /*
            java.lang.String r0 = "$this$fold"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "initialValueSelector"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "operation"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Map r0 = (java.util.Map) r0
            java.util.Iterator r1 = r6.sourceIterator()
        L_0x001a:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0045
            java.lang.Object r2 = r1.next()
            java.lang.Object r3 = r6.keyOf(r2)
            java.lang.Object r4 = r0.get(r3)
            if (r4 != 0) goto L_0x0036
            boolean r5 = r0.containsKey(r3)
            if (r5 != 0) goto L_0x0036
            r5 = 1
            goto L_0x0037
        L_0x0036:
            r5 = 0
        L_0x0037:
            if (r5 == 0) goto L_0x003d
            java.lang.Object r4 = r7.invoke(r3, r2)
        L_0x003d:
            java.lang.Object r2 = r8.invoke(r3, r4, r2)
            r0.put(r3, r2)
            goto L_0x001a
        L_0x0045:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.fold(kotlin.collections.Grouping, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static final <T, K, R, M extends java.util.Map<? super K, R>> M foldTo(kotlin.collections.Grouping<T, ? extends K> r5, M r6, kotlin.jvm.functions.Function2<? super K, ? super T, ? extends R> r7, kotlin.jvm.functions.Function3<? super K, ? super R, ? super T, ? extends R> r8) {
        /*
            java.lang.String r0 = "$this$foldTo"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "destination"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "initialValueSelector"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "operation"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.util.Iterator r0 = r5.sourceIterator()
        L_0x0018:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0043
            java.lang.Object r1 = r0.next()
            java.lang.Object r2 = r5.keyOf(r1)
            java.lang.Object r3 = r6.get(r2)
            if (r3 != 0) goto L_0x0034
            boolean r4 = r6.containsKey(r2)
            if (r4 != 0) goto L_0x0034
            r4 = 1
            goto L_0x0035
        L_0x0034:
            r4 = 0
        L_0x0035:
            if (r4 == 0) goto L_0x003b
            java.lang.Object r3 = r7.invoke(r2, r1)
        L_0x003b:
            java.lang.Object r1 = r8.invoke(r2, r3, r1)
            r6.put(r2, r1)
            goto L_0x0018
        L_0x0043:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.foldTo(kotlin.collections.Grouping, java.util.Map, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static final <T, K, R> java.util.Map<K, R> fold(kotlin.collections.Grouping<T, ? extends K> r6, R r7, kotlin.jvm.functions.Function2<? super R, ? super T, ? extends R> r8) {
        /*
            java.lang.String r0 = "$this$fold"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "operation"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Map r0 = (java.util.Map) r0
            java.util.Iterator r1 = r6.sourceIterator()
        L_0x0015:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x003d
            java.lang.Object r2 = r1.next()
            java.lang.Object r3 = r6.keyOf(r2)
            java.lang.Object r4 = r0.get(r3)
            if (r4 != 0) goto L_0x0031
            boolean r5 = r0.containsKey(r3)
            if (r5 != 0) goto L_0x0031
            r5 = 1
            goto L_0x0032
        L_0x0031:
            r5 = 0
        L_0x0032:
            if (r5 == 0) goto L_0x0035
            r4 = r7
        L_0x0035:
            java.lang.Object r2 = r8.invoke(r4, r2)
            r0.put(r3, r2)
            goto L_0x0015
        L_0x003d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.fold(kotlin.collections.Grouping, java.lang.Object, kotlin.jvm.functions.Function2):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static final <T, K, R, M extends java.util.Map<? super K, R>> M foldTo(kotlin.collections.Grouping<T, ? extends K> r5, M r6, R r7, kotlin.jvm.functions.Function2<? super R, ? super T, ? extends R> r8) {
        /*
            java.lang.String r0 = "$this$foldTo"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "destination"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "operation"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.util.Iterator r0 = r5.sourceIterator()
        L_0x0013:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x003b
            java.lang.Object r1 = r0.next()
            java.lang.Object r2 = r5.keyOf(r1)
            java.lang.Object r3 = r6.get(r2)
            if (r3 != 0) goto L_0x002f
            boolean r4 = r6.containsKey(r2)
            if (r4 != 0) goto L_0x002f
            r4 = 1
            goto L_0x0030
        L_0x002f:
            r4 = 0
        L_0x0030:
            if (r4 == 0) goto L_0x0033
            r3 = r7
        L_0x0033:
            java.lang.Object r1 = r8.invoke(r3, r1)
            r6.put(r2, r1)
            goto L_0x0013
        L_0x003b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.foldTo(kotlin.collections.Grouping, java.util.Map, java.lang.Object, kotlin.jvm.functions.Function2):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <S, T extends S, K> Map<K, S> reduce(Grouping<T, ? extends K> grouping, Function3<? super K, ? super S, ? super T, ? extends S> function3) {
        Intrinsics.checkNotNullParameter(grouping, "$this$reduce");
        Intrinsics.checkNotNullParameter(function3, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            Object obj = (Object) sourceIterator.next();
            Object obj2 = (Object) grouping.keyOf(obj);
            Object obj3 = (Object) linkedHashMap.get(obj2);
            if (!(obj3 == 0 && !linkedHashMap.containsKey(obj2))) {
                obj = (Object) function3.invoke(obj2, obj3, obj);
            }
            linkedHashMap.put(obj2, obj);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <S, T extends S, K, M extends Map<? super K, S>> M reduceTo(Grouping<T, ? extends K> grouping, M m, Function3<? super K, ? super S, ? super T, ? extends S> function3) {
        Intrinsics.checkNotNullParameter(grouping, "$this$reduceTo");
        Intrinsics.checkNotNullParameter(m, "destination");
        Intrinsics.checkNotNullParameter(function3, "operation");
        Iterator sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            Object obj = (Object) sourceIterator.next();
            Object obj2 = (Object) grouping.keyOf(obj);
            Object obj3 = (Object) m.get(obj2);
            if (!(obj3 == 0 && !m.containsKey(obj2))) {
                obj = (Object) function3.invoke(obj2, obj3, obj);
            }
            m.put(obj2, obj);
        }
        return m;
    }
}
