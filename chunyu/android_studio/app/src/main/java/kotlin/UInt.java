package kotlin;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.UIntRange;

/* compiled from: UInt.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 y2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001yB\u0014\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0000H\u0097\nø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000bJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0005J\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u000fJ\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u000bJ\u001b\u0010\u0019\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0016J\u001a\u0010\u001f\u001a\u00020 2\b\u0010\t\u001a\u0004\u0018\u00010!HÖ\u0003¢\u0006\u0004\b\"\u0010#J\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b%\u0010\u000fJ\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b&\u0010\u000bJ\u001b\u0010$\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\b'\u0010\u001dJ\u001b\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b(\u0010\u0016J\u0010\u0010)\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b*\u0010\u0005J\u0016\u0010+\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b,\u0010\u0005J\u0016\u0010-\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b.\u0010\u0005J\u001b\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b0\u0010\u000fJ\u001b\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b1\u0010\u000bJ\u001b\u0010/\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b2\u0010\u001dJ\u001b\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\b3\u0010\u0016J\u001b\u00104\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b5\u00106J\u001b\u00104\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b7\u0010\u000bJ\u001b\u00104\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\b8\u0010\u001dJ\u001b\u00104\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b9\u0010:J\u001b\u0010;\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b<\u0010\u000bJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\b>\u0010\u000fJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b?\u0010\u000bJ\u001b\u0010=\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b@\u0010\u001dJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\bA\u0010\u0016J\u001b\u0010B\u001a\u00020C2\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bD\u0010EJ\u001b\u0010F\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\bG\u0010\u000fJ\u001b\u0010F\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bH\u0010\u000bJ\u001b\u0010F\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\bI\u0010\u001dJ\u001b\u0010F\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\bJ\u0010\u0016J\u001e\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u0003H\u0087\fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bM\u0010\u000bJ\u001e\u0010N\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u0003H\u0087\fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bO\u0010\u000bJ\u001b\u0010P\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001\u0000¢\u0006\u0004\bQ\u0010\u000fJ\u001b\u0010P\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bR\u0010\u000bJ\u001b\u0010P\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\bS\u0010\u001dJ\u001b\u0010P\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\bT\u0010\u0016J\u0010\u0010U\u001a\u00020VH\u0087\b¢\u0006\u0004\bW\u0010XJ\u0010\u0010Y\u001a\u00020ZH\u0087\b¢\u0006\u0004\b[\u0010\\J\u0010\u0010]\u001a\u00020^H\u0087\b¢\u0006\u0004\b_\u0010`J\u0010\u0010a\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bb\u0010\u0005J\u0010\u0010c\u001a\u00020dH\u0087\b¢\u0006\u0004\be\u0010fJ\u0010\u0010g\u001a\u00020hH\u0087\b¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020lH\u0016¢\u0006\u0004\bm\u0010nJ\u0016\u0010o\u001a\u00020\rH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bp\u0010XJ\u0016\u0010q\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\br\u0010\u0005J\u0016\u0010s\u001a\u00020\u0011H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bt\u0010fJ\u0016\u0010u\u001a\u00020\u0014H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bv\u0010jJ\u001b\u0010w\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bx\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006z"}, d2 = {"Lkotlin/UInt;", "", "data", "", "constructor-impl", "(I)I", "getData$annotations", "()V", "and", "other", "and-WZ4Q5Ns", "(II)I", "compareTo", "Lkotlin/UByte;", "compareTo-7apg3OU", "(IB)I", "compareTo-WZ4Q5Ns", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "dec", "dec-pVg5ArA", TtmlNode.TAG_DIV, "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(IJ)J", "div-xj2QHRw", "equals", "", "", "equals-impl", "(ILjava/lang/Object;)Z", "floorDiv", "floorDiv-7apg3OU", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "floorDiv-xj2QHRw", "hashCode", "hashCode-impl", "inc", "inc-pVg5ArA", "inv", "inv-pVg5ArA", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "mod", "mod-7apg3OU", "(IB)B", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "mod-xj2QHRw", "(IS)S", "or", "or-WZ4Q5Ns", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "shl", "bitCount", "shl-pVg5ArA", "shr", "shr-pVg5ArA", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "", "toByte-impl", "(I)B", "toDouble", "", "toDouble-impl", "(I)D", "toFloat", "", "toFloat-impl", "(I)F", "toInt", "toInt-impl", "toLong", "", "toLong-impl", "(I)J", "toShort", "", "toShort-impl", "(I)S", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-WZ4Q5Ns", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 6, 0}, xi = 48)
@JvmInline
/* loaded from: classes2.dex */
public final class UInt implements Comparable<UInt> {
    public static final Companion Companion = new Companion(null);
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    /* renamed from: box-impl */
    public static final /* synthetic */ UInt m131boximpl(int i) {
        return new UInt(i);
    }

    /* renamed from: constructor-impl */
    public static int m137constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl */
    public static boolean m143equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).m188unboximpl();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m144equalsimpl0(int i, int i2) {
        return i == i2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m149hashCodeimpl(int i) {
        return i;
    }

    /* renamed from: toByte-impl */
    private static final byte m176toByteimpl(int i) {
        return (byte) i;
    }

    /* renamed from: toInt-impl */
    private static final int m179toIntimpl(int i) {
        return i;
    }

    /* renamed from: toLong-impl */
    private static final long m180toLongimpl(int i) {
        return ((long) i) & 4294967295L;
    }

    /* renamed from: toShort-impl */
    private static final short m181toShortimpl(int i) {
        return (short) i;
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m184toUIntpVg5ArA(int i) {
        return i;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        return m143equalsimpl(this.data, obj);
    }

    @Override // java.lang.Object
    public int hashCode() {
        return m149hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ int m188unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return UnsignedKt.uintCompare(m188unboximpl(), uInt.m188unboximpl());
    }

    private /* synthetic */ UInt(int i) {
        this.data = i;
    }

    /* compiled from: UInt.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u0004X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\u00020\u0004X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\n"}, d2 = {"Lkotlin/UInt$Companion;", "", "()V", "MAX_VALUE", "Lkotlin/UInt;", "I", "MIN_VALUE", "SIZE_BITS", "", "SIZE_BYTES", "kotlin-stdlib"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: compareTo-7apg3OU */
    private static final int m132compareTo7apg3OU(int i, byte b) {
        return UnsignedKt.uintCompare(i, m137constructorimpl(b & 255));
    }

    /* renamed from: compareTo-xj2QHRw */
    private static final int m136compareToxj2QHRw(int i, short s) {
        return UnsignedKt.uintCompare(i, m137constructorimpl(s & 65535));
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private int m134compareToWZ4Q5Ns(int i) {
        return UnsignedKt.uintCompare(m188unboximpl(), i);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static int m135compareToWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.uintCompare(i, i2);
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static final int m133compareToVKZWuLQ(int i, long j) {
        return UnsignedKt.ulongCompare(ULong.m215constructorimpl(((long) i) & 4294967295L), j);
    }

    /* renamed from: plus-7apg3OU */
    private static final int m161plus7apg3OU(int i, byte b) {
        return m137constructorimpl(i + m137constructorimpl(b & 255));
    }

    /* renamed from: plus-xj2QHRw */
    private static final int m164plusxj2QHRw(int i, short s) {
        return m137constructorimpl(i + m137constructorimpl(s & 65535));
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final int m163plusWZ4Q5Ns(int i, int i2) {
        return m137constructorimpl(i + i2);
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m162plusVKZWuLQ(int i, long j) {
        return ULong.m215constructorimpl(ULong.m215constructorimpl(((long) i) & 4294967295L) + j);
    }

    /* renamed from: minus-7apg3OU */
    private static final int m152minus7apg3OU(int i, byte b) {
        return m137constructorimpl(i - m137constructorimpl(b & 255));
    }

    /* renamed from: minus-xj2QHRw */
    private static final int m155minusxj2QHRw(int i, short s) {
        return m137constructorimpl(i - m137constructorimpl(s & 65535));
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final int m154minusWZ4Q5Ns(int i, int i2) {
        return m137constructorimpl(i - i2);
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m153minusVKZWuLQ(int i, long j) {
        return ULong.m215constructorimpl(ULong.m215constructorimpl(((long) i) & 4294967295L) - j);
    }

    /* renamed from: times-7apg3OU */
    private static final int m172times7apg3OU(int i, byte b) {
        return m137constructorimpl(i * m137constructorimpl(b & 255));
    }

    /* renamed from: times-xj2QHRw */
    private static final int m175timesxj2QHRw(int i, short s) {
        return m137constructorimpl(i * m137constructorimpl(s & 65535));
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final int m174timesWZ4Q5Ns(int i, int i2) {
        return m137constructorimpl(i * i2);
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m173timesVKZWuLQ(int i, long j) {
        return ULong.m215constructorimpl(ULong.m215constructorimpl(((long) i) & 4294967295L) * j);
    }

    /* renamed from: div-7apg3OU */
    private static final int m139div7apg3OU(int i, byte b) {
        return UnsignedKt.m390uintDivideJ1ME1BU(i, m137constructorimpl(b & 255));
    }

    /* renamed from: div-xj2QHRw */
    private static final int m142divxj2QHRw(int i, short s) {
        return UnsignedKt.m390uintDivideJ1ME1BU(i, m137constructorimpl(s & 65535));
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final int m141divWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m390uintDivideJ1ME1BU(i, i2);
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m140divVKZWuLQ(int i, long j) {
        return UnsignedKt.m392ulongDivideeb3DHEI(ULong.m215constructorimpl(((long) i) & 4294967295L), j);
    }

    /* renamed from: rem-7apg3OU */
    private static final int m166rem7apg3OU(int i, byte b) {
        return UnsignedKt.m391uintRemainderJ1ME1BU(i, m137constructorimpl(b & 255));
    }

    /* renamed from: rem-xj2QHRw */
    private static final int m169remxj2QHRw(int i, short s) {
        return UnsignedKt.m391uintRemainderJ1ME1BU(i, m137constructorimpl(s & 65535));
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final int m168remWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m391uintRemainderJ1ME1BU(i, i2);
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m167remVKZWuLQ(int i, long j) {
        return UnsignedKt.m393ulongRemaindereb3DHEI(ULong.m215constructorimpl(((long) i) & 4294967295L), j);
    }

    /* renamed from: floorDiv-7apg3OU */
    private static final int m145floorDiv7apg3OU(int i, byte b) {
        return UnsignedKt.m390uintDivideJ1ME1BU(i, m137constructorimpl(b & 255));
    }

    /* renamed from: floorDiv-xj2QHRw */
    private static final int m148floorDivxj2QHRw(int i, short s) {
        return UnsignedKt.m390uintDivideJ1ME1BU(i, m137constructorimpl(s & 65535));
    }

    /* renamed from: floorDiv-WZ4Q5Ns */
    private static final int m147floorDivWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m390uintDivideJ1ME1BU(i, i2);
    }

    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m146floorDivVKZWuLQ(int i, long j) {
        return UnsignedKt.m392ulongDivideeb3DHEI(ULong.m215constructorimpl(((long) i) & 4294967295L), j);
    }

    /* renamed from: mod-7apg3OU */
    private static final byte m156mod7apg3OU(int i, byte b) {
        return UByte.m61constructorimpl((byte) UnsignedKt.m391uintRemainderJ1ME1BU(i, m137constructorimpl(b & 255)));
    }

    /* renamed from: mod-xj2QHRw */
    private static final short m159modxj2QHRw(int i, short s) {
        return UShort.m321constructorimpl((short) UnsignedKt.m391uintRemainderJ1ME1BU(i, m137constructorimpl(s & 65535)));
    }

    /* renamed from: mod-WZ4Q5Ns */
    private static final int m158modWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m391uintRemainderJ1ME1BU(i, i2);
    }

    /* renamed from: mod-VKZWuLQ */
    private static final long m157modVKZWuLQ(int i, long j) {
        return UnsignedKt.m393ulongRemaindereb3DHEI(ULong.m215constructorimpl(((long) i) & 4294967295L), j);
    }

    /* renamed from: inc-pVg5ArA */
    private static final int m150incpVg5ArA(int i) {
        return m137constructorimpl(i + 1);
    }

    /* renamed from: dec-pVg5ArA */
    private static final int m138decpVg5ArA(int i) {
        return m137constructorimpl(i - 1);
    }

    /* renamed from: rangeTo-WZ4Q5Ns */
    private static final UIntRange m165rangeToWZ4Q5Ns(int i, int i2) {
        return new UIntRange(i, i2, null);
    }

    /* renamed from: shl-pVg5ArA */
    private static final int m170shlpVg5ArA(int i, int i2) {
        return m137constructorimpl(i << i2);
    }

    /* renamed from: shr-pVg5ArA */
    private static final int m171shrpVg5ArA(int i, int i2) {
        return m137constructorimpl(i >>> i2);
    }

    /* renamed from: and-WZ4Q5Ns */
    private static final int m130andWZ4Q5Ns(int i, int i2) {
        return m137constructorimpl(i & i2);
    }

    /* renamed from: or-WZ4Q5Ns */
    private static final int m160orWZ4Q5Ns(int i, int i2) {
        return m137constructorimpl(i | i2);
    }

    /* renamed from: xor-WZ4Q5Ns */
    private static final int m187xorWZ4Q5Ns(int i, int i2) {
        return m137constructorimpl(i ^ i2);
    }

    /* renamed from: inv-pVg5ArA */
    private static final int m151invpVg5ArA(int i) {
        return m137constructorimpl(~i);
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m183toUBytew2LRezQ(int i) {
        return UByte.m61constructorimpl((byte) i);
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m186toUShortMh2AYeg(int i) {
        return UShort.m321constructorimpl((short) i);
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m185toULongsVKNKU(int i) {
        return ULong.m215constructorimpl(((long) i) & 4294967295L);
    }

    /* renamed from: toFloat-impl */
    private static final float m178toFloatimpl(int i) {
        return (float) UnsignedKt.uintToDouble(i);
    }

    /* renamed from: toDouble-impl */
    private static final double m177toDoubleimpl(int i) {
        return UnsignedKt.uintToDouble(i);
    }

    /* renamed from: toString-impl */
    public static String m182toStringimpl(int i) {
        return String.valueOf(((long) i) & 4294967295L);
    }

    @Override // java.lang.Object
    public String toString() {
        return m182toStringimpl(this.data);
    }
}
