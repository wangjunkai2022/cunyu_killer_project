package kotlin.collections.unsigned;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: _UArraysJvm.kt */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\n0\u0001*\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0001*\u00020\u000fH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a2\u0010\u0012\u001a\u00020\u0013*\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a2\u0010\u0012\u001a\u00020\u0013*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00062\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a2\u0010\u0012\u001a\u00020\u0013*\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\n2\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a2\u0010\u0012\u001a\u00020\u0013*\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000e2\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001f\u0010\u001f\u001a\u00020\u0002*\u00020\u00032\u0006\u0010 \u001a\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001a\u001f\u0010\u001f\u001a\u00020\u0006*\u00020\u00072\u0006\u0010 \u001a\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\u001f\u0010\u001f\u001a\u00020\n*\u00020\u000b2\u0006\u0010 \u001a\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a\u001f\u0010\u001f\u001a\u00020\u000e*\u00020\u000f2\u0006\u0010 \u001a\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001a.\u0010)\u001a\u00020**\u00020\u00032\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020*0,H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b-\u0010.\u001a.\u0010)\u001a\u00020/*\u00020\u00032\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020/0,H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101\u001a.\u0010)\u001a\u00020**\u00020\u00072\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020*0,H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b-\u00102\u001a.\u0010)\u001a\u00020/*\u00020\u00072\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020/0,H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00103\u001a.\u0010)\u001a\u00020**\u00020\u000b2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020*0,H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b-\u00104\u001a.\u0010)\u001a\u00020/*\u00020\u000b2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020/0,H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00105\u001a.\u0010)\u001a\u00020**\u00020\u000f2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020*0,H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b-\u00106\u001a.\u0010)\u001a\u00020/*\u00020\u000f2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020/0,H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00107\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u00068"}, d2 = {"asList", "", "Lkotlin/UByte;", "Lkotlin/UByteArray;", "asList-GBYM_sE", "([B)Ljava/util/List;", "Lkotlin/UInt;", "Lkotlin/UIntArray;", "asList--ajY-9A", "([I)Ljava/util/List;", "Lkotlin/ULong;", "Lkotlin/ULongArray;", "asList-QwZRm1k", "([J)Ljava/util/List;", "Lkotlin/UShort;", "Lkotlin/UShortArray;", "asList-rL5Bavg", "([S)Ljava/util/List;", "binarySearch", "", "element", "fromIndex", "toIndex", "binarySearch-WpHrYlw", "([BBII)I", "binarySearch-2fe2U9s", "([IIII)I", "binarySearch-K6DWlUc", "([JJII)I", "binarySearch-EtDCXyQ", "([SSII)I", "elementAt", "index", "elementAt-PpDY95g", "([BI)B", "elementAt-qFRl0hI", "([II)I", "elementAt-r7IrZao", "([JI)J", "elementAt-nggk6HY", "([SI)S", "sumOf", "Ljava/math/BigDecimal;", "selector", "Lkotlin/Function1;", "sumOfBigDecimal", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "Ljava/math/BigInteger;", "sumOfBigInteger", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, pn = "kotlin.collections", xi = 1, xs = "kotlin/collections/unsigned/UArraysKt")
/* loaded from: classes4.dex */
class UArraysKt___UArraysJvmKt {
    /* renamed from: elementAt-qFRl0hI  reason: not valid java name */
    private static final int m521elementAtqFRl0hI(int[] iArr, int i) {
        return UIntArray.m197getpVg5ArA(iArr, i);
    }

    /* renamed from: elementAt-r7IrZao  reason: not valid java name */
    private static final long m522elementAtr7IrZao(long[] jArr, int i) {
        return ULongArray.m275getsVKNKU(jArr, i);
    }

    /* renamed from: elementAt-PpDY95g  reason: not valid java name */
    private static final byte m519elementAtPpDY95g(byte[] bArr, int i) {
        return UByteArray.m119getw2LRezQ(bArr, i);
    }

    /* renamed from: elementAt-nggk6HY  reason: not valid java name */
    private static final short m520elementAtnggk6HY(short[] sArr, int i) {
        return UShortArray.m379getMh2AYeg(sArr, i);
    }

    /* renamed from: asList--ajY-9A  reason: not valid java name */
    public static final List<UInt> m507asListajY9A(int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "$this$asList");
        return new RandomAccess(iArr) { // from class: kotlin.collections.unsigned.UArraysKt___UArraysJvmKt$asList$1
            final /* synthetic */ int[] $this_asList;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$this_asList = r1;
            }

            @Override // kotlin.collections.AbstractCollection, java.util.Collection
            public final /* bridge */ boolean contains(Object obj) {
                if (obj instanceof UInt) {
                    return m523containsWZ4Q5Ns(((UInt) obj).m189unboximpl());
                }
                return false;
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public /* bridge */ /* synthetic */ Object get(int i) {
                return UInt.m132boximpl(m524getpVg5ArA(i));
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public final /* bridge */ int indexOf(Object obj) {
                if (obj instanceof UInt) {
                    return m525indexOfWZ4Q5Ns(((UInt) obj).m189unboximpl());
                }
                return -1;
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public final /* bridge */ int lastIndexOf(Object obj) {
                if (obj instanceof UInt) {
                    return m526lastIndexOfWZ4Q5Ns(((UInt) obj).m189unboximpl());
                }
                return -1;
            }

            @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
            public int getSize() {
                return UIntArray.m198getSizeimpl(this.$this_asList);
            }

            @Override // kotlin.collections.AbstractCollection, java.util.Collection
            public boolean isEmpty() {
                return UIntArray.m200isEmptyimpl(this.$this_asList);
            }

            /* renamed from: contains-WZ4Q5Ns  reason: not valid java name */
            public boolean m523containsWZ4Q5Ns(int i) {
                return UIntArray.m193containsWZ4Q5Ns(this.$this_asList, i);
            }

            /* renamed from: get-pVg5ArA  reason: not valid java name */
            public int m524getpVg5ArA(int i) {
                return UIntArray.m197getpVg5ArA(this.$this_asList, i);
            }

            /* renamed from: indexOf-WZ4Q5Ns  reason: not valid java name */
            public int m525indexOfWZ4Q5Ns(int i) {
                return ArraysKt.indexOf(this.$this_asList, i);
            }

            /* renamed from: lastIndexOf-WZ4Q5Ns  reason: not valid java name */
            public int m526lastIndexOfWZ4Q5Ns(int i) {
                return ArraysKt.lastIndexOf(this.$this_asList, i);
            }
        };
    }

    /* renamed from: asList-QwZRm1k  reason: not valid java name */
    public static final List<ULong> m509asListQwZRm1k(long[] jArr) {
        Intrinsics.checkNotNullParameter(jArr, "$this$asList");
        return new RandomAccess(jArr) { // from class: kotlin.collections.unsigned.UArraysKt___UArraysJvmKt$asList$2
            final /* synthetic */ long[] $this_asList;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$this_asList = r1;
            }

            @Override // kotlin.collections.AbstractCollection, java.util.Collection
            public final /* bridge */ boolean contains(Object obj) {
                if (obj instanceof ULong) {
                    return m527containsVKZWuLQ(((ULong) obj).m267unboximpl());
                }
                return false;
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public /* bridge */ /* synthetic */ Object get(int i) {
                return ULong.m210boximpl(m528getsVKNKU(i));
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public final /* bridge */ int indexOf(Object obj) {
                if (obj instanceof ULong) {
                    return m529indexOfVKZWuLQ(((ULong) obj).m267unboximpl());
                }
                return -1;
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public final /* bridge */ int lastIndexOf(Object obj) {
                if (obj instanceof ULong) {
                    return m530lastIndexOfVKZWuLQ(((ULong) obj).m267unboximpl());
                }
                return -1;
            }

            @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
            public int getSize() {
                return ULongArray.m276getSizeimpl(this.$this_asList);
            }

            @Override // kotlin.collections.AbstractCollection, java.util.Collection
            public boolean isEmpty() {
                return ULongArray.m278isEmptyimpl(this.$this_asList);
            }

            /* renamed from: contains-VKZWuLQ  reason: not valid java name */
            public boolean m527containsVKZWuLQ(long j) {
                return ULongArray.m271containsVKZWuLQ(this.$this_asList, j);
            }

            /* renamed from: get-s-VKNKU  reason: not valid java name */
            public long m528getsVKNKU(int i) {
                return ULongArray.m275getsVKNKU(this.$this_asList, i);
            }

            /* renamed from: indexOf-VKZWuLQ  reason: not valid java name */
            public int m529indexOfVKZWuLQ(long j) {
                return ArraysKt.indexOf(this.$this_asList, j);
            }

            /* renamed from: lastIndexOf-VKZWuLQ  reason: not valid java name */
            public int m530lastIndexOfVKZWuLQ(long j) {
                return ArraysKt.lastIndexOf(this.$this_asList, j);
            }
        };
    }

    /* renamed from: asList-GBYM_sE  reason: not valid java name */
    public static final List<UByte> m508asListGBYM_sE(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "$this$asList");
        return new RandomAccess(bArr) { // from class: kotlin.collections.unsigned.UArraysKt___UArraysJvmKt$asList$3
            final /* synthetic */ byte[] $this_asList;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$this_asList = r1;
            }

            @Override // kotlin.collections.AbstractCollection, java.util.Collection
            public final /* bridge */ boolean contains(Object obj) {
                if (obj instanceof UByte) {
                    return m531contains7apg3OU(((UByte) obj).m111unboximpl());
                }
                return false;
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public /* bridge */ /* synthetic */ Object get(int i) {
                return UByte.m56boximpl(m532getw2LRezQ(i));
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public final /* bridge */ int indexOf(Object obj) {
                if (obj instanceof UByte) {
                    return m533indexOf7apg3OU(((UByte) obj).m111unboximpl());
                }
                return -1;
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public final /* bridge */ int lastIndexOf(Object obj) {
                if (obj instanceof UByte) {
                    return m534lastIndexOf7apg3OU(((UByte) obj).m111unboximpl());
                }
                return -1;
            }

            @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
            public int getSize() {
                return UByteArray.m120getSizeimpl(this.$this_asList);
            }

            @Override // kotlin.collections.AbstractCollection, java.util.Collection
            public boolean isEmpty() {
                return UByteArray.m122isEmptyimpl(this.$this_asList);
            }

            /* renamed from: contains-7apg3OU  reason: not valid java name */
            public boolean m531contains7apg3OU(byte b) {
                return UByteArray.m115contains7apg3OU(this.$this_asList, b);
            }

            /* renamed from: get-w2LRezQ  reason: not valid java name */
            public byte m532getw2LRezQ(int i) {
                return UByteArray.m119getw2LRezQ(this.$this_asList, i);
            }

            /* renamed from: indexOf-7apg3OU  reason: not valid java name */
            public int m533indexOf7apg3OU(byte b) {
                return ArraysKt.indexOf(this.$this_asList, b);
            }

            /* renamed from: lastIndexOf-7apg3OU  reason: not valid java name */
            public int m534lastIndexOf7apg3OU(byte b) {
                return ArraysKt.lastIndexOf(this.$this_asList, b);
            }
        };
    }

    /* renamed from: asList-rL5Bavg  reason: not valid java name */
    public static final List<UShort> m510asListrL5Bavg(short[] sArr) {
        Intrinsics.checkNotNullParameter(sArr, "$this$asList");
        return new RandomAccess(sArr) { // from class: kotlin.collections.unsigned.UArraysKt___UArraysJvmKt$asList$4
            final /* synthetic */ short[] $this_asList;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$this_asList = r1;
            }

            @Override // kotlin.collections.AbstractCollection, java.util.Collection
            public final /* bridge */ boolean contains(Object obj) {
                if (obj instanceof UShort) {
                    return m535containsxj2QHRw(((UShort) obj).m371unboximpl());
                }
                return false;
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public /* bridge */ /* synthetic */ Object get(int i) {
                return UShort.m316boximpl(m536getMh2AYeg(i));
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public final /* bridge */ int indexOf(Object obj) {
                if (obj instanceof UShort) {
                    return m537indexOfxj2QHRw(((UShort) obj).m371unboximpl());
                }
                return -1;
            }

            @Override // kotlin.collections.AbstractList, java.util.List
            public final /* bridge */ int lastIndexOf(Object obj) {
                if (obj instanceof UShort) {
                    return m538lastIndexOfxj2QHRw(((UShort) obj).m371unboximpl());
                }
                return -1;
            }

            @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
            public int getSize() {
                return UShortArray.m380getSizeimpl(this.$this_asList);
            }

            @Override // kotlin.collections.AbstractCollection, java.util.Collection
            public boolean isEmpty() {
                return UShortArray.m382isEmptyimpl(this.$this_asList);
            }

            /* renamed from: contains-xj2QHRw  reason: not valid java name */
            public boolean m535containsxj2QHRw(short s) {
                return UShortArray.m375containsxj2QHRw(this.$this_asList, s);
            }

            /* renamed from: get-Mh2AYeg  reason: not valid java name */
            public short m536getMh2AYeg(int i) {
                return UShortArray.m379getMh2AYeg(this.$this_asList, i);
            }

            /* renamed from: indexOf-xj2QHRw  reason: not valid java name */
            public int m537indexOfxj2QHRw(short s) {
                return ArraysKt.indexOf(this.$this_asList, s);
            }

            /* renamed from: lastIndexOf-xj2QHRw  reason: not valid java name */
            public int m538lastIndexOfxj2QHRw(short s) {
                return ArraysKt.lastIndexOf(this.$this_asList, s);
            }
        };
    }

    /* renamed from: binarySearch-2fe2U9s$default  reason: not valid java name */
    public static /* synthetic */ int m512binarySearch2fe2U9s$default(int[] iArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = UIntArray.m198getSizeimpl(iArr);
        }
        return UArraysKt.m511binarySearch2fe2U9s(iArr, i, i2, i3);
    }

    /* renamed from: binarySearch-2fe2U9s  reason: not valid java name */
    public static final int m511binarySearch2fe2U9s(int[] iArr, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(iArr, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i2, i3, UIntArray.m198getSizeimpl(iArr));
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int uintCompare = UnsignedKt.uintCompare(iArr[i5], i);
            if (uintCompare < 0) {
                i2 = i5 + 1;
            } else if (uintCompare <= 0) {
                return i5;
            } else {
                i4 = i5 - 1;
            }
        }
        return -(i2 + 1);
    }

    /* renamed from: binarySearch-K6DWlUc$default  reason: not valid java name */
    public static /* synthetic */ int m516binarySearchK6DWlUc$default(long[] jArr, long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = ULongArray.m276getSizeimpl(jArr);
        }
        return UArraysKt.m515binarySearchK6DWlUc(jArr, j, i, i2);
    }

    /* renamed from: binarySearch-K6DWlUc  reason: not valid java name */
    public static final int m515binarySearchK6DWlUc(long[] jArr, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(jArr, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i, i2, ULongArray.m276getSizeimpl(jArr));
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) >>> 1;
            int ulongCompare = UnsignedKt.ulongCompare(jArr[i4], j);
            if (ulongCompare < 0) {
                i = i4 + 1;
            } else if (ulongCompare <= 0) {
                return i4;
            } else {
                i3 = i4 - 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: binarySearch-WpHrYlw$default  reason: not valid java name */
    public static /* synthetic */ int m518binarySearchWpHrYlw$default(byte[] bArr, byte b, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = UByteArray.m120getSizeimpl(bArr);
        }
        return UArraysKt.m517binarySearchWpHrYlw(bArr, b, i, i2);
    }

    /* renamed from: binarySearch-WpHrYlw  reason: not valid java name */
    public static final int m517binarySearchWpHrYlw(byte[] bArr, byte b, int i, int i2) {
        Intrinsics.checkNotNullParameter(bArr, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i, i2, UByteArray.m120getSizeimpl(bArr));
        int i3 = b & 255;
        int i4 = i2 - 1;
        while (i <= i4) {
            int i5 = (i + i4) >>> 1;
            int uintCompare = UnsignedKt.uintCompare(bArr[i5], i3);
            if (uintCompare < 0) {
                i = i5 + 1;
            } else if (uintCompare <= 0) {
                return i5;
            } else {
                i4 = i5 - 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: binarySearch-EtDCXyQ$default  reason: not valid java name */
    public static /* synthetic */ int m514binarySearchEtDCXyQ$default(short[] sArr, short s, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = UShortArray.m380getSizeimpl(sArr);
        }
        return UArraysKt.m513binarySearchEtDCXyQ(sArr, s, i, i2);
    }

    /* renamed from: binarySearch-EtDCXyQ  reason: not valid java name */
    public static final int m513binarySearchEtDCXyQ(short[] sArr, short s, int i, int i2) {
        Intrinsics.checkNotNullParameter(sArr, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i, i2, UShortArray.m380getSizeimpl(sArr));
        int i3 = s & 65535;
        int i4 = i2 - 1;
        while (i <= i4) {
            int i5 = (i + i4) >>> 1;
            int uintCompare = UnsignedKt.uintCompare(sArr[i5], i3);
            if (uintCompare < 0) {
                i = i5 + 1;
            } else if (uintCompare <= 0) {
                return i5;
            } else {
                i4 = i5 - 1;
            }
        }
        return -(i + 1);
    }

    private static final BigDecimal sumOfBigDecimal(int[] iArr, Function1<? super UInt, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf((long) 0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        for (int i : iArr) {
            valueOf = valueOf.add((BigDecimal) function1.invoke(UInt.m132boximpl(i)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    private static final BigDecimal sumOfBigDecimal(long[] jArr, Function1<? super ULong, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf((long) 0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        for (long j : jArr) {
            valueOf = valueOf.add((BigDecimal) function1.invoke(ULong.m210boximpl(j)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    private static final BigDecimal sumOfBigDecimal(byte[] bArr, Function1<? super UByte, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf((long) 0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        for (byte b : bArr) {
            valueOf = valueOf.add((BigDecimal) function1.invoke(UByte.m56boximpl(b)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    private static final BigDecimal sumOfBigDecimal(short[] sArr, Function1<? super UShort, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf((long) 0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        for (short s : sArr) {
            valueOf = valueOf.add((BigDecimal) function1.invoke(UShort.m316boximpl(s)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    private static final BigInteger sumOfBigInteger(int[] iArr, Function1<? super UInt, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf((long) 0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        for (int i : iArr) {
            valueOf = valueOf.add((BigInteger) function1.invoke(UInt.m132boximpl(i)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    private static final BigInteger sumOfBigInteger(long[] jArr, Function1<? super ULong, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf((long) 0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        for (long j : jArr) {
            valueOf = valueOf.add((BigInteger) function1.invoke(ULong.m210boximpl(j)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    private static final BigInteger sumOfBigInteger(byte[] bArr, Function1<? super UByte, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf((long) 0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        for (byte b : bArr) {
            valueOf = valueOf.add((BigInteger) function1.invoke(UByte.m56boximpl(b)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    private static final BigInteger sumOfBigInteger(short[] sArr, Function1<? super UShort, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf((long) 0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        for (short s : sArr) {
            valueOf = valueOf.add((BigInteger) function1.invoke(UShort.m316boximpl(s)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }
}
