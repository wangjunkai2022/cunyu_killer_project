package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: MutableCollections.kt */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001f\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\t\u001a-\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a&\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\u001a&\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\b\u001a9\u0010\t\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\f2\u0006\u0010\r\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\u000e\u001a9\u0010\t\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\f2\u0006\u0010\r\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\u000e\u001a(\u0010\u0010\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\u0006\u0010\u0012\u001a\u0002H\u0002H\u0087\n¢\u0006\u0002\u0010\u0013\u001a.\u0010\u0010\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0087\n¢\u0006\u0002\u0010\u0014\u001a)\u0010\u0010\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007H\u0087\n\u001a)\u0010\u0010\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\bH\u0087\n\u001a(\u0010\u0015\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\u0006\u0010\u0012\u001a\u0002H\u0002H\u0087\n¢\u0006\u0002\u0010\u0013\u001a.\u0010\u0015\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0087\n¢\u0006\u0002\u0010\u0014\u001a)\u0010\u0015\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007H\u0087\n\u001a)\u0010\u0015\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\bH\u0087\n\u001a-\u0010\u0016\u001a\u00020\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0017*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00032\u0006\u0010\u0012\u001a\u0002H\u0002H\u0087\b¢\u0006\u0002\u0010\u0018\u001a&\u0010\u0016\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0087\b¢\u0006\u0002\u0010\u001b\u001a-\u0010\u001c\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a&\u0010\u001c\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\u001a&\u0010\u001c\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\b\u001a.\u0010\u001c\u001a\u00020\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0017*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u001dH\u0087\b\u001a*\u0010\u001c\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\f\u001a*\u0010\u001c\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\f\u001a\u001d\u0010\u001e\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000fH\u0007¢\u0006\u0002\u0010\u001f\u001a\u001f\u0010 \u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000fH\u0007¢\u0006\u0002\u0010\u001f\u001a\u001d\u0010!\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000fH\u0007¢\u0006\u0002\u0010\u001f\u001a\u001f\u0010\"\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000fH\u0007¢\u0006\u0002\u0010\u001f\u001a-\u0010#\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a&\u0010#\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\u001a&\u0010#\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\b\u001a.\u0010#\u001a\u00020\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0017*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u001dH\u0087\b\u001a*\u0010#\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\f\u001a*\u0010#\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\f\u001a\u0015\u0010$\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0003H\u0002¢\u0006\u0002\b%¨\u0006&"}, d2 = {"addAll", "", ExifInterface.GPS_DIRECTION_TRUE, "", "elements", "", "(Ljava/util/Collection;[Ljava/lang/Object;)Z", "", "Lkotlin/sequences/Sequence;", "filterInPlace", "", "predicate", "Lkotlin/Function1;", "predicateResultToRemove", "filterInPlace$CollectionsKt__MutableCollectionsKt", "", "minusAssign", "", "element", "(Ljava/util/Collection;Ljava/lang/Object;)V", "(Ljava/util/Collection;[Ljava/lang/Object;)V", "plusAssign", "remove", "Lkotlin/internal/OnlyInputTypes;", "(Ljava/util/Collection;Ljava/lang/Object;)Z", "index", "", "(Ljava/util/List;I)Ljava/lang/Object;", "removeAll", "", "removeFirst", "(Ljava/util/List;)Ljava/lang/Object;", "removeFirstOrNull", "removeLast", "removeLastOrNull", "retainAll", "retainNothing", "retainNothing$CollectionsKt__MutableCollectionsKt", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xi = 1, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes4.dex */
class CollectionsKt__MutableCollectionsKt extends CollectionsKt__MutableCollectionsJVMKt {
    private static final <T> boolean remove(Collection<? extends T> collection, T t) {
        Objects.requireNonNull(collection, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        return TypeIntrinsics.asMutableCollection(collection).remove(t);
    }

    private static final <T> boolean removeAll(Collection<? extends T> collection, Collection<? extends T> collection2) {
        Objects.requireNonNull(collection, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        return TypeIntrinsics.asMutableCollection(collection).removeAll(collection2);
    }

    private static final <T> boolean retainAll(Collection<? extends T> collection, Collection<? extends T> collection2) {
        Objects.requireNonNull(collection, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        return TypeIntrinsics.asMutableCollection(collection).retainAll(collection2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> void plusAssign(Collection<? super T> collection, T t) {
        Intrinsics.checkNotNullParameter(collection, "$this$plusAssign");
        collection.add(t);
    }

    private static final <T> void plusAssign(Collection<? super T> collection, Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(collection, "$this$plusAssign");
        CollectionsKt.addAll(collection, iterable);
    }

    private static final <T> void plusAssign(Collection<? super T> collection, T[] tArr) {
        Intrinsics.checkNotNullParameter(collection, "$this$plusAssign");
        CollectionsKt.addAll(collection, tArr);
    }

    private static final <T> void plusAssign(Collection<? super T> collection, Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(collection, "$this$plusAssign");
        CollectionsKt.addAll(collection, sequence);
    }

    private static final <T> void minusAssign(Collection<? super T> collection, T t) {
        Intrinsics.checkNotNullParameter(collection, "$this$minusAssign");
        collection.remove(t);
    }

    private static final <T> void minusAssign(Collection<? super T> collection, Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(collection, "$this$minusAssign");
        CollectionsKt.removeAll(collection, iterable);
    }

    private static final <T> void minusAssign(Collection<? super T> collection, T[] tArr) {
        Intrinsics.checkNotNullParameter(collection, "$this$minusAssign");
        CollectionsKt.removeAll(collection, tArr);
    }

    private static final <T> void minusAssign(Collection<? super T> collection, Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(collection, "$this$minusAssign");
        CollectionsKt.removeAll(collection, sequence);
    }

    public static final <T> boolean addAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(collection, "$this$addAll");
        Intrinsics.checkNotNullParameter(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z = false;
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (collection.add((Object) it.next())) {
                z = true;
            }
        }
        return z;
    }

    public static final <T> boolean addAll(Collection<? super T> collection, Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(collection, "$this$addAll");
        Intrinsics.checkNotNullParameter(sequence, "elements");
        Iterator<? extends T> it = sequence.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.add((Object) it.next())) {
                z = true;
            }
        }
        return z;
    }

    public static final <T> boolean addAll(Collection<? super T> collection, T[] tArr) {
        Intrinsics.checkNotNullParameter(collection, "$this$addAll");
        Intrinsics.checkNotNullParameter(tArr, "elements");
        return collection.addAll(ArraysKt.asList(tArr));
    }

    public static final <T> boolean removeAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(collection, "$this$removeAll");
        Intrinsics.checkNotNullParameter(iterable, "elements");
        return TypeIntrinsics.asMutableCollection(collection).removeAll(CollectionsKt.convertToSetForSetOperationWith(iterable, collection));
    }

    public static final <T> boolean removeAll(Collection<? super T> collection, Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(collection, "$this$removeAll");
        Intrinsics.checkNotNullParameter(sequence, "elements");
        HashSet hashSet = SequencesKt.toHashSet(sequence);
        return (hashSet.isEmpty() ^ true) && collection.removeAll(hashSet);
    }

    public static final <T> boolean removeAll(Collection<? super T> collection, T[] tArr) {
        Intrinsics.checkNotNullParameter(collection, "$this$removeAll");
        Intrinsics.checkNotNullParameter(tArr, "elements");
        return ((tArr.length == 0) ^ true) && collection.removeAll(ArraysKt.toHashSet(tArr));
    }

    public static final <T> boolean retainAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(collection, "$this$retainAll");
        Intrinsics.checkNotNullParameter(iterable, "elements");
        return TypeIntrinsics.asMutableCollection(collection).retainAll(CollectionsKt.convertToSetForSetOperationWith(iterable, collection));
    }

    public static final <T> boolean retainAll(Collection<? super T> collection, T[] tArr) {
        Intrinsics.checkNotNullParameter(collection, "$this$retainAll");
        Intrinsics.checkNotNullParameter(tArr, "elements");
        if (!(tArr.length == 0)) {
            return collection.retainAll(ArraysKt.toHashSet(tArr));
        }
        return retainNothing$CollectionsKt__MutableCollectionsKt(collection);
    }

    public static final <T> boolean retainAll(Collection<? super T> collection, Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(collection, "$this$retainAll");
        Intrinsics.checkNotNullParameter(sequence, "elements");
        HashSet hashSet = SequencesKt.toHashSet(sequence);
        if (!hashSet.isEmpty()) {
            return collection.retainAll(hashSet);
        }
        return retainNothing$CollectionsKt__MutableCollectionsKt(collection);
    }

    private static final boolean retainNothing$CollectionsKt__MutableCollectionsKt(Collection<?> collection) {
        boolean z = !collection.isEmpty();
        collection.clear();
        return z;
    }

    public static final <T> boolean removeAll(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkNotNullParameter(iterable, "$this$removeAll");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        return filterInPlace$CollectionsKt__MutableCollectionsKt((Iterable) iterable, (Function1) function1, true);
    }

    public static final <T> boolean retainAll(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkNotNullParameter(iterable, "$this$retainAll");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        return filterInPlace$CollectionsKt__MutableCollectionsKt((Iterable) iterable, (Function1) function1, false);
    }

    private static final <T> boolean filterInPlace$CollectionsKt__MutableCollectionsKt(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1, boolean z) {
        Iterator<? extends T> it = iterable.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (function1.invoke((Object) it.next()).booleanValue() == z) {
                it.remove();
                z2 = true;
            }
        }
        return z2;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use removeAt(index) instead.", replaceWith = @ReplaceWith(expression = "removeAt(index)", imports = {}))
    private static final <T> T remove(List<T> list, int i) {
        return list.remove(i);
    }

    public static final <T> T removeFirst(List<T> list) {
        Intrinsics.checkNotNullParameter(list, "$this$removeFirst");
        if (!list.isEmpty()) {
            return list.remove(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static final <T> T removeFirstOrNull(List<T> list) {
        Intrinsics.checkNotNullParameter(list, "$this$removeFirstOrNull");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(0);
    }

    public static final <T> T removeLast(List<T> list) {
        Intrinsics.checkNotNullParameter(list, "$this$removeLast");
        if (!list.isEmpty()) {
            return list.remove(CollectionsKt.getLastIndex(list));
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static final <T> T removeLastOrNull(List<T> list) {
        Intrinsics.checkNotNullParameter(list, "$this$removeLastOrNull");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(CollectionsKt.getLastIndex(list));
    }

    public static final <T> boolean removeAll(List<T> list, Function1<? super T, Boolean> function1) {
        Intrinsics.checkNotNullParameter(list, "$this$removeAll");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        return filterInPlace$CollectionsKt__MutableCollectionsKt((List) list, (Function1) function1, true);
    }

    public static final <T> boolean retainAll(List<T> list, Function1<? super T, Boolean> function1) {
        Intrinsics.checkNotNullParameter(list, "$this$retainAll");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        return filterInPlace$CollectionsKt__MutableCollectionsKt((List) list, (Function1) function1, false);
    }

    private static final <T> boolean filterInPlace$CollectionsKt__MutableCollectionsKt(List<T> list, Function1<? super T, Boolean> function1, boolean z) {
        int i;
        if (!(list instanceof RandomAccess)) {
            Objects.requireNonNull(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T>");
            return filterInPlace$CollectionsKt__MutableCollectionsKt(TypeIntrinsics.asMutableIterable(list), function1, z);
        }
        int lastIndex = CollectionsKt.getLastIndex(list);
        if (lastIndex >= 0) {
            int i2 = 0;
            i = 0;
            while (true) {
                T t = list.get(i2);
                if (function1.invoke(t).booleanValue() != z) {
                    if (i != i2) {
                        list.set(i, t);
                    }
                    i++;
                }
                if (i2 == lastIndex) {
                    break;
                }
                i2++;
            }
        } else {
            i = 0;
        }
        if (i >= list.size()) {
            return false;
        }
        int lastIndex2 = CollectionsKt.getLastIndex(list);
        if (lastIndex2 < i) {
            return true;
        }
        while (true) {
            list.remove(lastIndex2);
            if (lastIndex2 == i) {
                return true;
            }
            lastIndex2--;
        }
    }
}
