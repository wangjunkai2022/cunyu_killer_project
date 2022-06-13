package kotlin;

import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.collections.UByteIterator;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: UByteArray.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0014\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006B\u0014\b\u0001\u0012\u0006\u0010\u0007\u001a\u00020\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\tJ\u001b\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0013\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u001e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0004H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b!\u0010\u000bJ\u000f\u0010\"\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010$J\u0019\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00020&H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b'\u0010(J#\u0010)\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020/HÖ\u0001¢\u0006\u0004\b0\u00101R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\r\u0088\u0001\u0007\u0092\u0001\u00020\bø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u00063"}, d2 = {"Lkotlin/UByteArray;", "", "Lkotlin/UByte;", "size", "", "constructor-impl", "(I)[B", "storage", "", "([B)[B", "getSize-impl", "([B)I", "getStorage$annotations", "()V", "contains", "", "element", "contains-7apg3OU", "([BB)Z", "containsAll", "elements", "containsAll-impl", "([BLjava/util/Collection;)Z", "equals", "other", "", "equals-impl", "([BLjava/lang/Object;)Z", "get", "index", "get-w2LRezQ", "([BI)B", "hashCode", "hashCode-impl", "isEmpty", "isEmpty-impl", "([B)Z", "iterator", "", "iterator-impl", "([B)Ljava/util/Iterator;", "set", "", "value", "set-VurrAj0", "([BIB)V", "toString", "", "toString-impl", "([B)Ljava/lang/String;", "Iterator", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@JvmInline
/* loaded from: classes4.dex */
public final class UByteArray implements Collection<UByte>, KMappedMarker {
    private final byte[] storage;

    /* renamed from: constructor-impl */
    public static byte[] m114constructorimpl(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "storage");
        return bArr;
    }

    /* renamed from: equals-impl */
    public static boolean m117equalsimpl(byte[] bArr, Object obj) {
        return (obj instanceof UByteArray) && Intrinsics.areEqual(bArr, ((UByteArray) obj).m128unboximpl());
    }

    /* renamed from: equals-impl0 */
    public static final boolean m118equalsimpl0(byte[] bArr, byte[] bArr2) {
        return Intrinsics.areEqual(bArr, bArr2);
    }

    public static /* synthetic */ void getStorage$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m121hashCodeimpl(byte[] bArr) {
        if (bArr != null) {
            return Arrays.hashCode(bArr);
        }
        return 0;
    }

    /* renamed from: toString-impl */
    public static String m125toStringimpl(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ")";
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(UByte uByte) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-7apg3OU */
    public boolean m126add7apg3OU(byte b) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UByte> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: contains-7apg3OU */
    public boolean m127contains7apg3OU(byte b) {
        return m115contains7apg3OU(this.storage, b);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        return m116containsAllimpl(this.storage, collection);
    }

    @Override // java.util.Collection, java.lang.Object
    public boolean equals(Object obj) {
        return m117equalsimpl(this.storage, obj);
    }

    public int getSize() {
        return m120getSizeimpl(this.storage);
    }

    @Override // java.util.Collection, java.lang.Object
    public int hashCode() {
        return m121hashCodeimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m122isEmptyimpl(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public java.util.Iterator<UByte> iterator() {
        return m123iteratorimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    @Override // java.lang.Object
    public String toString() {
        return m125toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ byte[] m128unboximpl() {
        return this.storage;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UByte) {
            return m127contains7apg3OU(((UByte) obj).m111unboximpl());
        }
        return false;
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    private /* synthetic */ UByteArray(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "storage");
        this.storage = bArr;
    }

    /* renamed from: constructor-impl */
    public static byte[] m113constructorimpl(int i) {
        return m114constructorimpl(new byte[i]);
    }

    /* renamed from: get-w2LRezQ */
    public static final byte m119getw2LRezQ(byte[] bArr, int i) {
        return UByte.m62constructorimpl(bArr[i]);
    }

    /* renamed from: set-VurrAj0 */
    public static final void m124setVurrAj0(byte[] bArr, int i, byte b) {
        bArr[i] = b;
    }

    /* renamed from: getSize-impl */
    public static int m120getSizeimpl(byte[] bArr) {
        return bArr.length;
    }

    /* renamed from: iterator-impl */
    public static java.util.Iterator<UByte> m123iteratorimpl(byte[] bArr) {
        return new Iterator(bArr);
    }

    /* compiled from: UByteArray.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\bH\u0096\u0002J\u0015\u0010\t\u001a\u00020\nH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\r"}, d2 = {"Lkotlin/UByteArray$Iterator;", "Lkotlin/collections/UByteIterator;", "array", "", "([B)V", "index", "", "hasNext", "", "nextUByte", "Lkotlin/UByte;", "nextUByte-w2LRezQ", "()B", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes4.dex */
    public static final class Iterator extends UByteIterator {
        private final byte[] array;
        private int index;

        public Iterator(byte[] bArr) {
            Intrinsics.checkNotNullParameter(bArr, "array");
            this.array = bArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // kotlin.collections.UByteIterator
        /* renamed from: nextUByte-w2LRezQ */
        public byte mo129nextUBytew2LRezQ() {
            int i = this.index;
            byte[] bArr = this.array;
            if (i < bArr.length) {
                this.index = i + 1;
                return UByte.m62constructorimpl(bArr[i]);
            }
            throw new NoSuchElementException(String.valueOf(this.index));
        }
    }

    /* renamed from: contains-7apg3OU */
    public static boolean m115contains7apg3OU(byte[] bArr, byte b) {
        return ArraysKt.contains(bArr, b);
    }

    /* renamed from: containsAll-impl */
    public static boolean m116containsAllimpl(byte[] bArr, Collection<UByte> collection) {
        boolean z;
        Intrinsics.checkNotNullParameter(collection, "elements");
        Collection<UByte> collection2 = collection;
        if (!collection2.isEmpty()) {
            for (Object obj : collection2) {
                if (!(obj instanceof UByte) || !ArraysKt.contains(bArr, ((UByte) obj).m111unboximpl())) {
                    z = false;
                    continue;
                } else {
                    z = true;
                    continue;
                }
                if (!z) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: isEmpty-impl */
    public static boolean m122isEmptyimpl(byte[] bArr) {
        return bArr.length == 0;
    }
}
