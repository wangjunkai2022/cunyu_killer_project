package kotlin;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: UShort.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\n\n\u0002\b\t\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001tB\u0014\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0000H\u0097\nø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u0005J\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u0010J\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u0013J\u001b\u0010\u001b\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b \u0010\u0018J\u001a\u0010!\u001a\u00020\"2\b\u0010\t\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b$\u0010%J\u001b\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\bø\u0001\u0000¢\u0006\u0004\b'\u0010\u0010J\u001b\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\b(\u0010\u0013J\u001b\u0010&\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b)\u0010\u001fJ\u001b\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b*\u0010\u0018J\u0010\u0010+\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b,\u0010-J\u0016\u0010.\u001a\u00020\u0000H\u0087\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b/\u0010\u0005J\u0016\u00100\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b1\u0010\u0005J\u001b\u00102\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001\u0000¢\u0006\u0004\b3\u0010\u0010J\u001b\u00102\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\b4\u0010\u0013J\u001b\u00102\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\b5\u0010\u001fJ\u001b\u00102\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b6\u0010\u0018J\u001b\u00107\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u000eH\u0087\bø\u0001\u0000¢\u0006\u0004\b8\u00109J\u001b\u00107\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\b:\u0010\u0013J\u001b\u00107\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b;\u0010\u001fJ\u001b\u00107\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b<\u0010\u000bJ\u001b\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\b>\u0010\u000bJ\u001b\u0010?\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001\u0000¢\u0006\u0004\b@\u0010\u0010J\u001b\u0010?\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\bA\u0010\u0013J\u001b\u0010?\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\bB\u0010\u001fJ\u001b\u0010?\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bC\u0010\u0018J\u001b\u0010D\u001a\u00020E2\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bF\u0010GJ\u001b\u0010H\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001\u0000¢\u0006\u0004\bI\u0010\u0010J\u001b\u0010H\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\bJ\u0010\u0013J\u001b\u0010H\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\bK\u0010\u001fJ\u001b\u0010H\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bL\u0010\u0018J\u001b\u0010M\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001\u0000¢\u0006\u0004\bN\u0010\u0010J\u001b\u0010M\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001\u0000¢\u0006\u0004\bO\u0010\u0013J\u001b\u0010M\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001\u0000¢\u0006\u0004\bP\u0010\u001fJ\u001b\u0010M\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\bQ\u0010\u0018J\u0010\u0010R\u001a\u00020SH\u0087\b¢\u0006\u0004\bT\u0010UJ\u0010\u0010V\u001a\u00020WH\u0087\b¢\u0006\u0004\bX\u0010YJ\u0010\u0010Z\u001a\u00020[H\u0087\b¢\u0006\u0004\b\\\u0010]J\u0010\u0010^\u001a\u00020\rH\u0087\b¢\u0006\u0004\b_\u0010-J\u0010\u0010`\u001a\u00020aH\u0087\b¢\u0006\u0004\bb\u0010cJ\u0010\u0010d\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\be\u0010\u0005J\u000f\u0010f\u001a\u00020gH\u0016¢\u0006\u0004\bh\u0010iJ\u0016\u0010j\u001a\u00020\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bk\u0010UJ\u0016\u0010l\u001a\u00020\u0011H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bm\u0010-J\u0016\u0010n\u001a\u00020\u0014H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bo\u0010cJ\u0016\u0010p\u001a\u00020\u0000H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bq\u0010\u0005J\u001b\u0010r\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\fø\u0001\u0000¢\u0006\u0004\bs\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006u"}, d2 = {"Lkotlin/UShort;", "", "data", "", "constructor-impl", "(S)S", "getData$annotations", "()V", "and", "other", "and-xj2QHRw", "(SS)S", "compareTo", "", "Lkotlin/UByte;", "compareTo-7apg3OU", "(SB)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(SI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(SJ)I", "compareTo-xj2QHRw", "(SS)I", "dec", "dec-Mh2AYeg", TtmlNode.TAG_DIV, "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(SJ)J", "div-xj2QHRw", "equals", "", "", "equals-impl", "(SLjava/lang/Object;)Z", "floorDiv", "floorDiv-7apg3OU", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "floorDiv-xj2QHRw", "hashCode", "hashCode-impl", "(S)I", "inc", "inc-Mh2AYeg", "inv", "inv-Mh2AYeg", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "mod", "mod-7apg3OU", "(SB)B", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "mod-xj2QHRw", "or", "or-xj2QHRw", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-xj2QHRw", "(SS)Lkotlin/ranges/UIntRange;", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "", "toByte-impl", "(S)B", "toDouble", "", "toDouble-impl", "(S)D", "toFloat", "", "toFloat-impl", "(S)F", "toInt", "toInt-impl", "toLong", "", "toLong-impl", "(S)J", "toShort", "toShort-impl", "toString", "", "toString-impl", "(S)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-xj2QHRw", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 6, 0}, xi = 48)
@JvmInline
/* loaded from: classes2.dex */
public final class UShort implements Comparable<UShort> {
    public static final Companion Companion = new Companion(null);
    public static final short MAX_VALUE = -1;
    public static final short MIN_VALUE = 0;
    public static final int SIZE_BITS = 16;
    public static final int SIZE_BYTES = 2;
    private final short data;

    /* renamed from: box-impl */
    public static final /* synthetic */ UShort m315boximpl(short s) {
        return new UShort(s);
    }

    /* renamed from: constructor-impl */
    public static short m321constructorimpl(short s) {
        return s;
    }

    /* renamed from: equals-impl */
    public static boolean m327equalsimpl(short s, Object obj) {
        return (obj instanceof UShort) && s == ((UShort) obj).m370unboximpl();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m328equalsimpl0(short s, short s2) {
        return s == s2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m333hashCodeimpl(short s) {
        return s;
    }

    /* renamed from: toByte-impl */
    private static final byte m358toByteimpl(short s) {
        return (byte) s;
    }

    /* renamed from: toDouble-impl */
    private static final double m359toDoubleimpl(short s) {
        return (double) (s & 65535);
    }

    /* renamed from: toFloat-impl */
    private static final float m360toFloatimpl(short s) {
        return (float) (s & 65535);
    }

    /* renamed from: toInt-impl */
    private static final int m361toIntimpl(short s) {
        return s & 65535;
    }

    /* renamed from: toLong-impl */
    private static final long m362toLongimpl(short s) {
        return ((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
    }

    /* renamed from: toShort-impl */
    private static final short m363toShortimpl(short s) {
        return s;
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m368toUShortMh2AYeg(short s) {
        return s;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        return m327equalsimpl(this.data, obj);
    }

    @Override // java.lang.Object
    public int hashCode() {
        return m333hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ short m370unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return Intrinsics.compare(m370unboximpl() & 65535, uShort.m370unboximpl() & 65535);
    }

    private /* synthetic */ UShort(short s) {
        this.data = s;
    }

    /* compiled from: UShort.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u0004X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\u00020\u0004X\u0086Tø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\n"}, d2 = {"Lkotlin/UShort$Companion;", "", "()V", "MAX_VALUE", "Lkotlin/UShort;", ExifInterface.LATITUDE_SOUTH, "MIN_VALUE", "SIZE_BITS", "", "SIZE_BYTES", "kotlin-stdlib"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: compareTo-7apg3OU */
    private static final int m316compareTo7apg3OU(short s, byte b) {
        return Intrinsics.compare(s & 65535, b & 255);
    }

    /* renamed from: compareTo-xj2QHRw */
    private int m319compareToxj2QHRw(short s) {
        return Intrinsics.compare(m370unboximpl() & 65535, s & 65535);
    }

    /* renamed from: compareTo-xj2QHRw */
    private static int m320compareToxj2QHRw(short s, short s2) {
        return Intrinsics.compare(s & 65535, s2 & 65535);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static final int m318compareToWZ4Q5Ns(short s, int i) {
        return UnsignedKt.uintCompare(UInt.m137constructorimpl(s & 65535), i);
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static final int m317compareToVKZWuLQ(short s, long j) {
        return UnsignedKt.ulongCompare(ULong.m215constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: plus-7apg3OU */
    private static final int m345plus7apg3OU(short s, byte b) {
        return UInt.m137constructorimpl(UInt.m137constructorimpl(s & 65535) + UInt.m137constructorimpl(b & 255));
    }

    /* renamed from: plus-xj2QHRw */
    private static final int m348plusxj2QHRw(short s, short s2) {
        return UInt.m137constructorimpl(UInt.m137constructorimpl(s & 65535) + UInt.m137constructorimpl(s2 & 65535));
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final int m347plusWZ4Q5Ns(short s, int i) {
        return UInt.m137constructorimpl(UInt.m137constructorimpl(s & 65535) + i);
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m346plusVKZWuLQ(short s, long j) {
        return ULong.m215constructorimpl(ULong.m215constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX) + j);
    }

    /* renamed from: minus-7apg3OU */
    private static final int m336minus7apg3OU(short s, byte b) {
        return UInt.m137constructorimpl(UInt.m137constructorimpl(s & 65535) - UInt.m137constructorimpl(b & 255));
    }

    /* renamed from: minus-xj2QHRw */
    private static final int m339minusxj2QHRw(short s, short s2) {
        return UInt.m137constructorimpl(UInt.m137constructorimpl(s & 65535) - UInt.m137constructorimpl(s2 & 65535));
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final int m338minusWZ4Q5Ns(short s, int i) {
        return UInt.m137constructorimpl(UInt.m137constructorimpl(s & 65535) - i);
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m337minusVKZWuLQ(short s, long j) {
        return ULong.m215constructorimpl(ULong.m215constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX) - j);
    }

    /* renamed from: times-7apg3OU */
    private static final int m354times7apg3OU(short s, byte b) {
        return UInt.m137constructorimpl(UInt.m137constructorimpl(s & 65535) * UInt.m137constructorimpl(b & 255));
    }

    /* renamed from: times-xj2QHRw */
    private static final int m357timesxj2QHRw(short s, short s2) {
        return UInt.m137constructorimpl(UInt.m137constructorimpl(s & 65535) * UInt.m137constructorimpl(s2 & 65535));
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final int m356timesWZ4Q5Ns(short s, int i) {
        return UInt.m137constructorimpl(UInt.m137constructorimpl(s & 65535) * i);
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m355timesVKZWuLQ(short s, long j) {
        return ULong.m215constructorimpl(ULong.m215constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX) * j);
    }

    /* renamed from: div-7apg3OU */
    private static final int m323div7apg3OU(short s, byte b) {
        return UnsignedKt.m390uintDivideJ1ME1BU(UInt.m137constructorimpl(s & 65535), UInt.m137constructorimpl(b & 255));
    }

    /* renamed from: div-xj2QHRw */
    private static final int m326divxj2QHRw(short s, short s2) {
        return UnsignedKt.m390uintDivideJ1ME1BU(UInt.m137constructorimpl(s & 65535), UInt.m137constructorimpl(s2 & 65535));
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final int m325divWZ4Q5Ns(short s, int i) {
        return UnsignedKt.m390uintDivideJ1ME1BU(UInt.m137constructorimpl(s & 65535), i);
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m324divVKZWuLQ(short s, long j) {
        return UnsignedKt.m392ulongDivideeb3DHEI(ULong.m215constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: rem-7apg3OU */
    private static final int m350rem7apg3OU(short s, byte b) {
        return UnsignedKt.m391uintRemainderJ1ME1BU(UInt.m137constructorimpl(s & 65535), UInt.m137constructorimpl(b & 255));
    }

    /* renamed from: rem-xj2QHRw */
    private static final int m353remxj2QHRw(short s, short s2) {
        return UnsignedKt.m391uintRemainderJ1ME1BU(UInt.m137constructorimpl(s & 65535), UInt.m137constructorimpl(s2 & 65535));
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final int m352remWZ4Q5Ns(short s, int i) {
        return UnsignedKt.m391uintRemainderJ1ME1BU(UInt.m137constructorimpl(s & 65535), i);
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m351remVKZWuLQ(short s, long j) {
        return UnsignedKt.m393ulongRemaindereb3DHEI(ULong.m215constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: floorDiv-7apg3OU */
    private static final int m329floorDiv7apg3OU(short s, byte b) {
        return UnsignedKt.m390uintDivideJ1ME1BU(UInt.m137constructorimpl(s & 65535), UInt.m137constructorimpl(b & 255));
    }

    /* renamed from: floorDiv-xj2QHRw */
    private static final int m332floorDivxj2QHRw(short s, short s2) {
        return UnsignedKt.m390uintDivideJ1ME1BU(UInt.m137constructorimpl(s & 65535), UInt.m137constructorimpl(s2 & 65535));
    }

    /* renamed from: floorDiv-WZ4Q5Ns */
    private static final int m331floorDivWZ4Q5Ns(short s, int i) {
        return UnsignedKt.m390uintDivideJ1ME1BU(UInt.m137constructorimpl(s & 65535), i);
    }

    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m330floorDivVKZWuLQ(short s, long j) {
        return UnsignedKt.m392ulongDivideeb3DHEI(ULong.m215constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: mod-7apg3OU */
    private static final byte m340mod7apg3OU(short s, byte b) {
        return UByte.m61constructorimpl((byte) UnsignedKt.m391uintRemainderJ1ME1BU(UInt.m137constructorimpl(s & 65535), UInt.m137constructorimpl(b & 255)));
    }

    /* renamed from: mod-xj2QHRw */
    private static final short m343modxj2QHRw(short s, short s2) {
        return m321constructorimpl((short) UnsignedKt.m391uintRemainderJ1ME1BU(UInt.m137constructorimpl(s & 65535), UInt.m137constructorimpl(s2 & 65535)));
    }

    /* renamed from: mod-WZ4Q5Ns */
    private static final int m342modWZ4Q5Ns(short s, int i) {
        return UnsignedKt.m391uintRemainderJ1ME1BU(UInt.m137constructorimpl(s & 65535), i);
    }

    /* renamed from: mod-VKZWuLQ */
    private static final long m341modVKZWuLQ(short s, long j) {
        return UnsignedKt.m393ulongRemaindereb3DHEI(ULong.m215constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: inc-Mh2AYeg */
    private static final short m334incMh2AYeg(short s) {
        return m321constructorimpl((short) (s + 1));
    }

    /* renamed from: dec-Mh2AYeg */
    private static final short m322decMh2AYeg(short s) {
        return m321constructorimpl((short) (s - 1));
    }

    /* renamed from: rangeTo-xj2QHRw */
    private static final UIntRange m349rangeToxj2QHRw(short s, short s2) {
        return new UIntRange(UInt.m137constructorimpl(s & 65535), UInt.m137constructorimpl(s2 & 65535), null);
    }

    /* renamed from: and-xj2QHRw */
    private static final short m314andxj2QHRw(short s, short s2) {
        return m321constructorimpl((short) (s & s2));
    }

    /* renamed from: or-xj2QHRw */
    private static final short m344orxj2QHRw(short s, short s2) {
        return m321constructorimpl((short) (s | s2));
    }

    /* renamed from: xor-xj2QHRw */
    private static final short m369xorxj2QHRw(short s, short s2) {
        return m321constructorimpl((short) (s ^ s2));
    }

    /* renamed from: inv-Mh2AYeg */
    private static final short m335invMh2AYeg(short s) {
        return m321constructorimpl((short) (~s));
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m365toUBytew2LRezQ(short s) {
        return UByte.m61constructorimpl((byte) s);
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m366toUIntpVg5ArA(short s) {
        return UInt.m137constructorimpl(s & 65535);
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m367toULongsVKNKU(short s) {
        return ULong.m215constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    /* renamed from: toString-impl */
    public static String m364toStringimpl(short s) {
        return String.valueOf(s & 65535);
    }

    @Override // java.lang.Object
    public String toString() {
        return m364toStringimpl(this.data);
    }
}
