package kotlin.text;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.apache.commons.io.IOUtils;

/* compiled from: Strings.kt */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0019\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b!\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0000\u001a\u001c\u0010\f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u001c\u0010\u0011\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u001f\u0010\u0012\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0086\u0002\u001a\u001f\u0010\u0012\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0086\u0002\u001a\u0015\u0010\u0012\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0087\n\u001a\u0018\u0010\u0017\u001a\u00020\u0010*\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0000\u001a\u0018\u0010\u0018\u001a\u00020\u0010*\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0000\u001a\u001c\u0010\u0019\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u001c\u0010\u0019\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a:\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0018\u00010\u001c*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001aE\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0018\u00010\u001c*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0010H\u0002¢\u0006\u0002\b!\u001a:\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0018\u00010\u001c*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u0012\u0010#\u001a\u00020\u0010*\u00020\u00022\u0006\u0010$\u001a\u00020\u0006\u001a7\u0010%\u001a\u0002H&\"\f\b\u0000\u0010'*\u00020\u0002*\u0002H&\"\u0004\b\u0001\u0010&*\u0002H'2\f\u0010(\u001a\b\u0012\u0004\u0012\u0002H&0)H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010*\u001a7\u0010+\u001a\u0002H&\"\f\b\u0000\u0010'*\u00020\u0002*\u0002H&\"\u0004\b\u0001\u0010&*\u0002H'2\f\u0010(\u001a\b\u0012\u0004\u0012\u0002H&0)H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010*\u001a&\u0010,\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a;\u0010,\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010 \u001a\u00020\u0010H\u0002¢\u0006\u0002\b.\u001a&\u0010,\u001a\u00020\u0006*\u00020\u00022\u0006\u0010/\u001a\u00020\r2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a&\u00100\u001a\u00020\u0006*\u00020\u00022\u0006\u00101\u001a\u0002022\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a,\u00100\u001a\u00020\u0006*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\r\u00103\u001a\u00020\u0010*\u00020\u0002H\u0087\b\u001a\r\u00104\u001a\u00020\u0010*\u00020\u0002H\u0087\b\u001a\r\u00105\u001a\u00020\u0010*\u00020\u0002H\u0087\b\u001a \u00106\u001a\u00020\u0010*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a \u00107\u001a\u00020\u0010*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\r\u00108\u001a\u000209*\u00020\u0002H\u0086\u0002\u001a&\u0010:\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a&\u0010:\u001a\u00020\u0006*\u00020\u00022\u0006\u0010/\u001a\u00020\r2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a&\u0010;\u001a\u00020\u0006*\u00020\u00022\u0006\u00101\u001a\u0002022\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a,\u0010;\u001a\u00020\u0006*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u0010\u0010<\u001a\b\u0012\u0004\u0012\u00020\r0=*\u00020\u0002\u001a\u0010\u0010>\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u0002\u001a\u0015\u0010@\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0087\f\u001a\u000f\u0010A\u001a\u00020\r*\u0004\u0018\u00010\rH\u0087\b\u001a\u001c\u0010B\u001a\u00020\u0002*\u00020\u00022\u0006\u0010C\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0014\u001a\u001c\u0010B\u001a\u00020\r*\u00020\r2\u0006\u0010C\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0014\u001a\u001c\u0010E\u001a\u00020\u0002*\u00020\u00022\u0006\u0010C\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0014\u001a\u001c\u0010E\u001a\u00020\r*\u00020\r2\u0006\u0010C\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0014\u001aG\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00010=*\u00020\u00022\u000e\u0010G\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0H2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\bI\u0010J\u001a=\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00010=*\u00020\u00022\u0006\u0010G\u001a\u0002022\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0002\bI\u001a4\u0010K\u001a\u00020\u0010*\u00020\u00022\u0006\u0010L\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010M\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a\u0012\u0010N\u001a\u00020\u0002*\u00020\u00022\u0006\u0010O\u001a\u00020\u0002\u001a\u0012\u0010N\u001a\u00020\r*\u00020\r2\u0006\u0010O\u001a\u00020\u0002\u001a\u001a\u0010P\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006\u001a\u0012\u0010P\u001a\u00020\u0002*\u00020\u00022\u0006\u0010Q\u001a\u00020\u0001\u001a\u001d\u0010P\u001a\u00020\r*\u00020\r2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010P\u001a\u00020\r*\u00020\r2\u0006\u0010Q\u001a\u00020\u0001H\u0087\b\u001a\u0012\u0010R\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002\u001a\u0012\u0010R\u001a\u00020\r*\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0002\u001a\u0012\u0010S\u001a\u00020\u0002*\u00020\u00022\u0006\u0010T\u001a\u00020\u0002\u001a\u001a\u0010S\u001a\u00020\u0002*\u00020\u00022\u0006\u0010O\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002\u001a\u0012\u0010S\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u0002\u001a\u001a\u0010S\u001a\u00020\r*\u00020\r2\u0006\u0010O\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002\u001a.\u0010U\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0014\b\b\u0010V\u001a\u000e\u0012\u0004\u0012\u00020X\u0012\u0004\u0012\u00020\u00020WH\u0087\bø\u0001\u0000\u001a\u001d\u0010U\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020\rH\u0087\b\u001a$\u0010Z\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010Z\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010\\\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010\\\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010]\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010]\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010^\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010^\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001d\u0010_\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020\rH\u0087\b\u001a)\u0010`\u001a\u00020\r*\u00020\r2\u0012\u0010V\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140WH\u0087\bø\u0001\u0000¢\u0006\u0002\ba\u001a)\u0010`\u001a\u00020\r*\u00020\r2\u0012\u0010V\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00020WH\u0087\bø\u0001\u0000¢\u0006\u0002\bb\u001a\"\u0010c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\u0002\u001a\u001a\u0010c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010Y\u001a\u00020\u0002\u001a%\u0010c\u001a\u00020\r*\u00020\r2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\u0002H\u0087\b\u001a\u001d\u0010c\u001a\u00020\r*\u00020\r2\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010Y\u001a\u00020\u0002H\u0087\b\u001a=\u0010d\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u00022\u0012\u0010G\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0H\"\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006¢\u0006\u0002\u0010e\u001a0\u0010d\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u00022\n\u0010G\u001a\u000202\"\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u001a/\u0010d\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u00022\u0006\u0010T\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0002\bf\u001a%\u0010d\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u000b\u001a\u00020\u0006H\u0087\b\u001a=\u0010g\u001a\b\u0012\u0004\u0012\u00020\r0=*\u00020\u00022\u0012\u0010G\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0H\"\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006¢\u0006\u0002\u0010h\u001a0\u0010g\u001a\b\u0012\u0004\u0012\u00020\r0=*\u00020\u00022\n\u0010G\u001a\u000202\"\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u001a%\u0010g\u001a\b\u0012\u0004\u0012\u00020\r0=*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u000b\u001a\u00020\u0006H\u0087\b\u001a\u001c\u0010i\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u001c\u0010i\u001a\u00020\u0010*\u00020\u00022\u0006\u0010O\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a$\u0010i\u001a\u00020\u0010*\u00020\u00022\u0006\u0010O\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u0012\u0010j\u001a\u00020\u0002*\u00020\u00022\u0006\u0010Q\u001a\u00020\u0001\u001a\u001d\u0010j\u001a\u00020\u0002*\u00020\r2\u0006\u0010k\u001a\u00020\u00062\u0006\u0010l\u001a\u00020\u0006H\u0087\b\u001a\u001f\u0010m\u001a\u00020\r*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010-\u001a\u00020\u0006H\u0087\b\u001a\u0012\u0010m\u001a\u00020\r*\u00020\u00022\u0006\u0010Q\u001a\u00020\u0001\u001a\u0012\u0010m\u001a\u00020\r*\u00020\r2\u0006\u0010Q\u001a\u00020\u0001\u001a\u001c\u0010n\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010n\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010o\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010o\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010p\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010p\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010q\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010q\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\f\u0010r\u001a\u00020\u0010*\u00020\rH\u0007\u001a\u0013\u0010s\u001a\u0004\u0018\u00010\u0010*\u00020\rH\u0007¢\u0006\u0002\u0010t\u001a\n\u0010u\u001a\u00020\u0002*\u00020\u0002\u001a$\u0010u\u001a\u00020\u0002*\u00020\u00022\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010u\u001a\u00020\u0002*\u00020\u00022\n\u00101\u001a\u000202\"\u00020\u0014\u001a\r\u0010u\u001a\u00020\r*\u00020\rH\u0087\b\u001a$\u0010u\u001a\u00020\r*\u00020\r2\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010u\u001a\u00020\r*\u00020\r2\n\u00101\u001a\u000202\"\u00020\u0014\u001a\n\u0010w\u001a\u00020\u0002*\u00020\u0002\u001a$\u0010w\u001a\u00020\u0002*\u00020\u00022\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010w\u001a\u00020\u0002*\u00020\u00022\n\u00101\u001a\u000202\"\u00020\u0014\u001a\r\u0010w\u001a\u00020\r*\u00020\rH\u0087\b\u001a$\u0010w\u001a\u00020\r*\u00020\r2\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010w\u001a\u00020\r*\u00020\r2\n\u00101\u001a\u000202\"\u00020\u0014\u001a\n\u0010x\u001a\u00020\u0002*\u00020\u0002\u001a$\u0010x\u001a\u00020\u0002*\u00020\u00022\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010x\u001a\u00020\u0002*\u00020\u00022\n\u00101\u001a\u000202\"\u00020\u0014\u001a\r\u0010x\u001a\u00020\r*\u00020\rH\u0087\b\u001a$\u0010x\u001a\u00020\r*\u00020\r2\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010x\u001a\u00020\r*\u00020\r2\n\u00101\u001a\u000202\"\u00020\u0014\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006y"}, d2 = {"indices", "Lkotlin/ranges/IntRange;", "", "getIndices", "(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;", "lastIndex", "", "getLastIndex", "(Ljava/lang/CharSequence;)I", "requireNonNegativeLimit", "", "limit", "commonPrefixWith", "", "other", "ignoreCase", "", "commonSuffixWith", "contains", "char", "", "regex", "Lkotlin/text/Regex;", "contentEqualsIgnoreCaseImpl", "contentEqualsImpl", "endsWith", "suffix", "findAnyOf", "Lkotlin/Pair;", "strings", "", "startIndex", "last", "findAnyOf$StringsKt__StringsKt", "findLastAnyOf", "hasSurrogatePairAt", "index", "ifBlank", "R", "C", "defaultValue", "Lkotlin/Function0;", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ifEmpty", "indexOf", "endIndex", "indexOf$StringsKt__StringsKt", "string", "indexOfAny", "chars", "", "isEmpty", "isNotBlank", "isNotEmpty", "isNullOrBlank", "isNullOrEmpty", "iterator", "Lkotlin/collections/CharIterator;", "lastIndexOf", "lastIndexOfAny", "lineSequence", "Lkotlin/sequences/Sequence;", "lines", "", "matches", "orEmpty", "padEnd", SessionDescription.ATTR_LENGTH, "padChar", "padStart", "rangesDelimitedBy", "delimiters", "", "rangesDelimitedBy$StringsKt__StringsKt", "(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;", "regionMatchesImpl", "thisOffset", "otherOffset", "removePrefix", "prefix", "removeRange", SessionDescription.ATTR_RANGE, "removeSuffix", "removeSurrounding", TtmlNode.RUBY_DELIMITER, "replace", "transform", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "replacement", "replaceAfter", "missingDelimiterValue", "replaceAfterLast", "replaceBefore", "replaceBeforeLast", "replaceFirst", "replaceFirstChar", "replaceFirstCharWithChar", "replaceFirstCharWithCharSequence", "replaceRange", "split", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "split$StringsKt__StringsKt", "splitToSequence", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "startsWith", "subSequence", TtmlNode.START, TtmlNode.END, "substring", "substringAfter", "substringAfterLast", "substringBefore", "substringBeforeLast", "toBooleanStrict", "toBooleanStrictOrNull", "(Ljava/lang/String;)Ljava/lang/Boolean;", "trim", "predicate", "trimEnd", "trimStart", "kotlin-stdlib"}, k = 5, mv = {1, 6, 0}, xi = 49, xs = "kotlin/text/StringsKt")
/* loaded from: classes2.dex */
public class StringsKt__StringsKt extends StringsKt__StringsJVMKt {
    private static final String orEmpty(String str) {
        return str == null ? "" : str;
    }

    public static final CharSequence trim(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean booleanValue = function1.invoke(Character.valueOf(charSequence.charAt(!z ? i : length))).booleanValue();
            if (!z) {
                if (!booleanValue) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!booleanValue) {
                break;
            } else {
                length--;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final String trim(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        String str2 = str;
        int length = str2.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean booleanValue = function1.invoke(Character.valueOf(str2.charAt(!z ? i : length))).booleanValue();
            if (!z) {
                if (!booleanValue) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!booleanValue) {
                break;
            } else {
                length--;
            }
        }
        return str2.subSequence(i, length + 1).toString();
    }

    public static final CharSequence trimStart(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            if (!function1.invoke(Character.valueOf(charSequence.charAt(i))).booleanValue()) {
                return charSequence.subSequence(i, charSequence.length());
            }
            i = i2;
        }
        return "";
    }

    public static final String trimStart(String str, Function1<? super Character, Boolean> function1) {
        String str2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        String str3 = str;
        int length = str3.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int i2 = i + 1;
            if (!function1.invoke(Character.valueOf(str3.charAt(i))).booleanValue()) {
                str2 = str3.subSequence(i, str3.length());
                break;
            }
            i = i2;
        }
        return str2.toString();
    }

    public static final CharSequence trimEnd(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!function1.invoke(Character.valueOf(charSequence.charAt(length))).booleanValue()) {
                    return charSequence.subSequence(0, length + 1);
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
        }
        return "";
    }

    public static final String trimEnd(String str, Function1<? super Character, Boolean> function1) {
        String str2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(function1, "predicate");
        String str3 = str;
        int length = str3.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!function1.invoke(Character.valueOf(str3.charAt(length))).booleanValue()) {
                    str2 = str3.subSequence(0, length + 1);
                    break;
                } else if (i < 0) {
                    break;
                } else {
                    length = i;
                }
            }
            return str2.toString();
        }
        return str2.toString();
    }

    private static final String trim(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.trim((CharSequence) str).toString();
    }

    private static final String trimStart(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.trimStart((CharSequence) str).toString();
    }

    private static final String trimEnd(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.trimEnd((CharSequence) str).toString();
    }

    public static /* synthetic */ CharSequence padStart$default(CharSequence charSequence, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return StringsKt.padStart(charSequence, i, c);
    }

    public static final CharSequence padStart(CharSequence charSequence, int i, char c) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException("Desired length " + i + " is less than zero.");
        } else if (i <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            int length = i - charSequence.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    int i3 = i2 + 1;
                    sb.append(c);
                    if (i2 == length) {
                        break;
                    }
                    i2 = i3;
                }
            }
            sb.append(charSequence);
            return sb;
        }
    }

    public static /* synthetic */ String padStart$default(String str, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return StringsKt.padStart(str, i, c);
    }

    public static final String padStart(String str, int i, char c) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.padStart((CharSequence) str, i, c).toString();
    }

    public static /* synthetic */ CharSequence padEnd$default(CharSequence charSequence, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return StringsKt.padEnd(charSequence, i, c);
    }

    public static final CharSequence padEnd(CharSequence charSequence, int i, char c) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException("Desired length " + i + " is less than zero.");
        } else if (i <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            sb.append(charSequence);
            int length = i - charSequence.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    int i3 = i2 + 1;
                    sb.append(c);
                    if (i2 == length) {
                        break;
                    }
                    i2 = i3;
                }
            }
            return sb;
        }
    }

    public static /* synthetic */ String padEnd$default(String str, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return StringsKt.padEnd(str, i, c);
    }

    public static final String padEnd(String str, int i, char c) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.padEnd((CharSequence) str, i, c).toString();
    }

    private static final boolean isNullOrEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    private static final boolean isEmpty(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() == 0;
    }

    private static final boolean isNotEmpty(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() > 0;
    }

    private static final boolean isNotBlank(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return !StringsKt.isBlank(charSequence);
    }

    private static final boolean isNullOrBlank(CharSequence charSequence) {
        return charSequence == null || StringsKt.isBlank(charSequence);
    }

    public static final CharIterator iterator(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return new CharIterator(charSequence) { // from class: kotlin.text.StringsKt__StringsKt$iterator$1
            final /* synthetic */ CharSequence $this_iterator;
            private int index;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$this_iterator = r1;
            }

            @Override // kotlin.collections.CharIterator
            public char nextChar() {
                CharSequence charSequence2 = this.$this_iterator;
                int i = this.index;
                this.index = i + 1;
                return charSequence2.charAt(i);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < this.$this_iterator.length();
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <C extends CharSequence & R, R> R ifEmpty(C c, Function0<? extends R> function0) {
        Intrinsics.checkNotNullParameter(function0, "defaultValue");
        return c.length() == 0 ? (R) function0.invoke() : c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <C extends CharSequence & R, R> R ifBlank(C c, Function0<? extends R> function0) {
        Intrinsics.checkNotNullParameter(function0, "defaultValue");
        return StringsKt.isBlank(c) ? (R) function0.invoke() : c;
    }

    public static final IntRange getIndices(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return new IntRange(0, charSequence.length() - 1);
    }

    public static final int getLastIndex(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final boolean hasSurrogatePairAt(CharSequence charSequence, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return (i >= 0 && i <= charSequence.length() + -2) && Character.isHighSurrogate(charSequence.charAt(i)) && Character.isLowSurrogate(charSequence.charAt(i + 1));
    }

    public static final String substring(String str, IntRange intRange) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(intRange, SessionDescription.ATTR_RANGE);
        String substring = str.substring(intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final CharSequence subSequence(CharSequence charSequence, IntRange intRange) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(intRange, SessionDescription.ATTR_RANGE);
        return charSequence.subSequence(intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1);
    }

    @Deprecated(message = "Use parameters named startIndex and endIndex.", replaceWith = @ReplaceWith(expression = "subSequence(startIndex = start, endIndex = end)", imports = {}))
    private static final CharSequence subSequence(String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return str.subSequence(i, i2);
    }

    private static final String substring(CharSequence charSequence, int i, int i2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.subSequence(i, i2).toString();
    }

    static /* synthetic */ String substring$default(CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = charSequence.length();
        }
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.subSequence(i, i2).toString();
    }

    public static final String substring(CharSequence charSequence, IntRange intRange) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(intRange, SessionDescription.ATTR_RANGE);
        return charSequence.subSequence(intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1).toString();
    }

    public static /* synthetic */ String substringBefore$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return StringsKt.substringBefore(str, c, str2);
    }

    public static final String substringBefore(String str, char c, String str2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "missingDelimiterValue");
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return str2;
        }
        String substring = str.substring(0, indexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringBefore$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return StringsKt.substringBefore(str, str2, str3);
    }

    public static final String substringBefore(String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, TtmlNode.RUBY_DELIMITER);
        Intrinsics.checkNotNullParameter(str3, "missingDelimiterValue");
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return str3;
        }
        String substring = str.substring(0, indexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringAfter$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return StringsKt.substringAfter(str, c, str2);
    }

    public static final String substringAfter(String str, char c, String str2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "missingDelimiterValue");
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return str2;
        }
        String substring = str.substring(indexOf$default + 1, str.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringAfter$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return StringsKt.substringAfter(str, str2, str3);
    }

    public static final String substringAfter(String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, TtmlNode.RUBY_DELIMITER);
        Intrinsics.checkNotNullParameter(str3, "missingDelimiterValue");
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return str3;
        }
        String substring = str.substring(indexOf$default + str2.length(), str.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return StringsKt.substringBeforeLast(str, c, str2);
    }

    public static final String substringBeforeLast(String str, char c, String str2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "missingDelimiterValue");
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return str2;
        }
        String substring = str.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return StringsKt.substringBeforeLast(str, str2, str3);
    }

    public static final String substringBeforeLast(String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, TtmlNode.RUBY_DELIMITER);
        Intrinsics.checkNotNullParameter(str3, "missingDelimiterValue");
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return str3;
        }
        String substring = str.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringAfterLast$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return StringsKt.substringAfterLast(str, c, str2);
    }

    public static final String substringAfterLast(String str, char c, String str2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "missingDelimiterValue");
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return str2;
        }
        String substring = str.substring(lastIndexOf$default + 1, str.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String substringAfterLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return StringsKt.substringAfterLast(str, str2, str3);
    }

    public static final String substringAfterLast(String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, TtmlNode.RUBY_DELIMITER);
        Intrinsics.checkNotNullParameter(str3, "missingDelimiterValue");
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return str3;
        }
        String substring = str.substring(lastIndexOf$default + str2.length(), str.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final CharSequence replaceRange(CharSequence charSequence, int i, int i2, CharSequence charSequence2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "replacement");
        if (i2 >= i) {
            StringBuilder sb = new StringBuilder();
            sb.append(charSequence, 0, i);
            Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            sb.append(charSequence2);
            sb.append(charSequence, i2, charSequence.length());
            Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            return sb;
        }
        throw new IndexOutOfBoundsException("End index (" + i2 + ") is less than start index (" + i + ").");
    }

    private static final String replaceRange(String str, int i, int i2, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charSequence, "replacement");
        return StringsKt.replaceRange((CharSequence) str, i, i2, charSequence).toString();
    }

    public static final CharSequence replaceRange(CharSequence charSequence, IntRange intRange, CharSequence charSequence2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(intRange, SessionDescription.ATTR_RANGE);
        Intrinsics.checkNotNullParameter(charSequence2, "replacement");
        return StringsKt.replaceRange(charSequence, intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1, charSequence2);
    }

    private static final String replaceRange(String str, IntRange intRange, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(intRange, SessionDescription.ATTR_RANGE);
        Intrinsics.checkNotNullParameter(charSequence, "replacement");
        return StringsKt.replaceRange((CharSequence) str, intRange, charSequence).toString();
    }

    public static final CharSequence removeRange(CharSequence charSequence, int i, int i2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i2 < i) {
            throw new IndexOutOfBoundsException("End index (" + i2 + ") is less than start index (" + i + ").");
        } else if (i2 == i) {
            return charSequence.subSequence(0, charSequence.length());
        } else {
            StringBuilder sb = new StringBuilder(charSequence.length() - (i2 - i));
            sb.append(charSequence, 0, i);
            Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            sb.append(charSequence, i2, charSequence.length());
            Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            return sb;
        }
    }

    private static final String removeRange(String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.removeRange((CharSequence) str, i, i2).toString();
    }

    public static final CharSequence removeRange(CharSequence charSequence, IntRange intRange) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(intRange, SessionDescription.ATTR_RANGE);
        return StringsKt.removeRange(charSequence, intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1);
    }

    private static final String removeRange(String str, IntRange intRange) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(intRange, SessionDescription.ATTR_RANGE);
        return StringsKt.removeRange((CharSequence) str, intRange).toString();
    }

    public static final CharSequence removePrefix(CharSequence charSequence, CharSequence charSequence2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "prefix");
        if (StringsKt.startsWith$default(charSequence, charSequence2, false, 2, (Object) null)) {
            return charSequence.subSequence(charSequence2.length(), charSequence.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    public static final String removePrefix(String str, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charSequence, "prefix");
        if (!StringsKt.startsWith$default((CharSequence) str, charSequence, false, 2, (Object) null)) {
            return str;
        }
        String substring = str.substring(charSequence.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return substring;
    }

    public static final CharSequence removeSuffix(CharSequence charSequence, CharSequence charSequence2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "suffix");
        if (StringsKt.endsWith$default(charSequence, charSequence2, false, 2, (Object) null)) {
            return charSequence.subSequence(0, charSequence.length() - charSequence2.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    public static final String removeSuffix(String str, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charSequence, "suffix");
        if (!StringsKt.endsWith$default((CharSequence) str, charSequence, false, 2, (Object) null)) {
            return str;
        }
        String substring = str.substring(0, str.length() - charSequence.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final CharSequence removeSurrounding(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "prefix");
        Intrinsics.checkNotNullParameter(charSequence3, "suffix");
        if (charSequence.length() < charSequence2.length() + charSequence3.length() || !StringsKt.startsWith$default(charSequence, charSequence2, false, 2, (Object) null) || !StringsKt.endsWith$default(charSequence, charSequence3, false, 2, (Object) null)) {
            return charSequence.subSequence(0, charSequence.length());
        }
        return charSequence.subSequence(charSequence2.length(), charSequence.length() - charSequence3.length());
    }

    public static final String removeSurrounding(String str, CharSequence charSequence, CharSequence charSequence2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charSequence, "prefix");
        Intrinsics.checkNotNullParameter(charSequence2, "suffix");
        if (str.length() < charSequence.length() + charSequence2.length()) {
            return str;
        }
        String str2 = str;
        if (!StringsKt.startsWith$default((CharSequence) str2, charSequence, false, 2, (Object) null) || !StringsKt.endsWith$default((CharSequence) str2, charSequence2, false, 2, (Object) null)) {
            return str;
        }
        String substring = str.substring(charSequence.length(), str.length() - charSequence2.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final CharSequence removeSurrounding(CharSequence charSequence, CharSequence charSequence2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, TtmlNode.RUBY_DELIMITER);
        return StringsKt.removeSurrounding(charSequence, charSequence2, charSequence2);
    }

    public static final String removeSurrounding(String str, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charSequence, TtmlNode.RUBY_DELIMITER);
        return StringsKt.removeSurrounding(str, charSequence, charSequence);
    }

    public static /* synthetic */ String replaceBefore$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return StringsKt.replaceBefore(str, c, str2, str3);
    }

    public static final String replaceBefore(String str, char c, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "replacement");
        Intrinsics.checkNotNullParameter(str3, "missingDelimiterValue");
        String str4 = str;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str4, c, 0, false, 6, (Object) null);
        return indexOf$default == -1 ? str3 : StringsKt.replaceRange((CharSequence) str4, 0, indexOf$default, (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceBefore$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return StringsKt.replaceBefore(str, str2, str3, str4);
    }

    public static final String replaceBefore(String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, TtmlNode.RUBY_DELIMITER);
        Intrinsics.checkNotNullParameter(str3, "replacement");
        Intrinsics.checkNotNullParameter(str4, "missingDelimiterValue");
        String str5 = str;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str5, str2, 0, false, 6, (Object) null);
        return indexOf$default == -1 ? str4 : StringsKt.replaceRange((CharSequence) str5, 0, indexOf$default, (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceAfter$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return StringsKt.replaceAfter(str, c, str2, str3);
    }

    public static final String replaceAfter(String str, char c, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "replacement");
        Intrinsics.checkNotNullParameter(str3, "missingDelimiterValue");
        String str4 = str;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str4, c, 0, false, 6, (Object) null);
        return indexOf$default == -1 ? str3 : StringsKt.replaceRange((CharSequence) str4, indexOf$default + 1, str.length(), (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceAfter$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return StringsKt.replaceAfter(str, str2, str3, str4);
    }

    public static final String replaceAfter(String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, TtmlNode.RUBY_DELIMITER);
        Intrinsics.checkNotNullParameter(str3, "replacement");
        Intrinsics.checkNotNullParameter(str4, "missingDelimiterValue");
        String str5 = str;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str5, str2, 0, false, 6, (Object) null);
        return indexOf$default == -1 ? str4 : StringsKt.replaceRange((CharSequence) str5, indexOf$default + str2.length(), str.length(), (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return StringsKt.replaceAfterLast(str, str2, str3, str4);
    }

    public static final String replaceAfterLast(String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, TtmlNode.RUBY_DELIMITER);
        Intrinsics.checkNotNullParameter(str3, "replacement");
        Intrinsics.checkNotNullParameter(str4, "missingDelimiterValue");
        String str5 = str;
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str5, str2, 0, false, 6, (Object) null);
        return lastIndexOf$default == -1 ? str4 : StringsKt.replaceRange((CharSequence) str5, lastIndexOf$default + str2.length(), str.length(), (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return StringsKt.replaceAfterLast(str, c, str2, str3);
    }

    public static final String replaceAfterLast(String str, char c, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "replacement");
        Intrinsics.checkNotNullParameter(str3, "missingDelimiterValue");
        String str4 = str;
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str4, c, 0, false, 6, (Object) null);
        return lastIndexOf$default == -1 ? str3 : StringsKt.replaceRange((CharSequence) str4, lastIndexOf$default + 1, str.length(), (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return StringsKt.replaceBeforeLast(str, c, str2, str3);
    }

    public static final String replaceBeforeLast(String str, char c, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "replacement");
        Intrinsics.checkNotNullParameter(str3, "missingDelimiterValue");
        String str4 = str;
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str4, c, 0, false, 6, (Object) null);
        return lastIndexOf$default == -1 ? str3 : StringsKt.replaceRange((CharSequence) str4, 0, lastIndexOf$default, (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return StringsKt.replaceBeforeLast(str, str2, str3, str4);
    }

    public static final String replaceBeforeLast(String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, TtmlNode.RUBY_DELIMITER);
        Intrinsics.checkNotNullParameter(str3, "replacement");
        Intrinsics.checkNotNullParameter(str4, "missingDelimiterValue");
        String str5 = str;
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str5, str2, 0, false, 6, (Object) null);
        return lastIndexOf$default == -1 ? str4 : StringsKt.replaceRange((CharSequence) str5, 0, lastIndexOf$default, (CharSequence) str3).toString();
    }

    private static final String replace(CharSequence charSequence, Regex regex, String str) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        Intrinsics.checkNotNullParameter(str, "replacement");
        return regex.replace(charSequence, str);
    }

    private static final String replace(CharSequence charSequence, Regex regex, Function1<? super MatchResult, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        Intrinsics.checkNotNullParameter(function1, "transform");
        return regex.replace(charSequence, function1);
    }

    private static final String replaceFirst(CharSequence charSequence, Regex regex, String str) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        Intrinsics.checkNotNullParameter(str, "replacement");
        return regex.replaceFirst(charSequence, str);
    }

    private static final String replaceFirstCharWithChar(String str, Function1<? super Character, Character> function1) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(function1, "transform");
        if (!(str.length() > 0)) {
            return str;
        }
        char charValue = function1.invoke(Character.valueOf(str.charAt(0))).charValue();
        String substring = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return charValue + substring;
    }

    private static final String replaceFirstCharWithCharSequence(String str, Function1<? super Character, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(function1, "transform");
        if (!(str.length() > 0)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(function1.invoke(Character.valueOf(str.charAt(0))));
        String substring = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        sb.append(substring);
        return sb.toString();
    }

    private static final boolean matches(CharSequence charSequence, Regex regex) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        return regex.matches(charSequence);
    }

    public static final boolean regionMatchesImpl(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        int i4 = 0;
        while (i4 < i3) {
            int i5 = i4 + 1;
            if (!CharsKt.equals(charSequence.charAt(i + i4), charSequence2.charAt(i4 + i2), z)) {
                return false;
            }
            i4 = i5;
        }
        return true;
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.startsWith(charSequence, c, z);
    }

    public static final boolean startsWith(CharSequence charSequence, char c, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() > 0 && CharsKt.equals(charSequence.charAt(0), c, z);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.endsWith(charSequence, c, z);
    }

    public static final boolean endsWith(CharSequence charSequence, char c, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() > 0 && CharsKt.equals(charSequence.charAt(StringsKt.getLastIndex(charSequence)), c, z);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.startsWith(charSequence, charSequence2, z);
    }

    public static final boolean startsWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "prefix");
        if (z || !(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            return StringsKt.regionMatchesImpl(charSequence, 0, charSequence2, 0, charSequence2.length(), z);
        }
        return StringsKt.startsWith$default((String) charSequence, (String) charSequence2, false, 2, (Object) null);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.startsWith(charSequence, charSequence2, i, z);
    }

    public static final boolean startsWith(CharSequence charSequence, CharSequence charSequence2, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "prefix");
        if (z || !(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            return StringsKt.regionMatchesImpl(charSequence, i, charSequence2, 0, charSequence2.length(), z);
        }
        return StringsKt.startsWith$default((String) charSequence, (String) charSequence2, i, false, 4, (Object) null);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.endsWith(charSequence, charSequence2, z);
    }

    public static final boolean endsWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "suffix");
        if (z || !(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            return StringsKt.regionMatchesImpl(charSequence, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length(), z);
        }
        return StringsKt.endsWith$default((String) charSequence, (String) charSequence2, false, 2, (Object) null);
    }

    public static /* synthetic */ String commonPrefixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.commonPrefixWith(charSequence, charSequence2, z);
    }

    public static final String commonPrefixWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "other");
        int min = Math.min(charSequence.length(), charSequence2.length());
        int i = 0;
        while (i < min && CharsKt.equals(charSequence.charAt(i), charSequence2.charAt(i), z)) {
            i++;
        }
        int i2 = i - 1;
        if (StringsKt.hasSurrogatePairAt(charSequence, i2) || StringsKt.hasSurrogatePairAt(charSequence2, i2)) {
            i--;
        }
        return charSequence.subSequence(0, i).toString();
    }

    public static /* synthetic */ String commonSuffixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.commonSuffixWith(charSequence, charSequence2, z);
    }

    public static final String commonSuffixWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "other");
        int length = charSequence.length();
        int length2 = charSequence2.length();
        int min = Math.min(length, length2);
        int i = 0;
        while (i < min && CharsKt.equals(charSequence.charAt((length - i) - 1), charSequence2.charAt((length2 - i) - 1), z)) {
            i++;
        }
        if (StringsKt.hasSurrogatePairAt(charSequence, (length - i) - 1) || StringsKt.hasSurrogatePairAt(charSequence2, (length2 - i) - 1)) {
            i--;
        }
        return charSequence.subSequence(length - i, length).toString();
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.indexOfAny(charSequence, cArr, i, z);
    }

    public static final int indexOfAny(CharSequence charSequence, char[] cArr, int i, boolean z) {
        boolean z2;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "chars");
        if (z || cArr.length != 1 || !(charSequence instanceof String)) {
            int coerceAtLeast = RangesKt.coerceAtLeast(i, 0);
            int lastIndex = StringsKt.getLastIndex(charSequence);
            if (coerceAtLeast > lastIndex) {
                return -1;
            }
            while (true) {
                int i2 = coerceAtLeast + 1;
                char charAt = charSequence.charAt(coerceAtLeast);
                int length = cArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z2 = false;
                        break;
                    }
                    char c = cArr[i3];
                    i3++;
                    if (CharsKt.equals(c, charAt, z)) {
                        z2 = true;
                        break;
                    }
                }
                if (z2) {
                    return coerceAtLeast;
                }
                if (coerceAtLeast == lastIndex) {
                    return -1;
                }
                coerceAtLeast = i2;
            }
        } else {
            return ((String) charSequence).indexOf(ArraysKt.single(cArr), i);
        }
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.lastIndexOfAny(charSequence, cArr, i, z);
    }

    public static final int lastIndexOfAny(CharSequence charSequence, char[] cArr, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "chars");
        if (z || cArr.length != 1 || !(charSequence instanceof String)) {
            int coerceAtMost = RangesKt.coerceAtMost(i, StringsKt.getLastIndex(charSequence));
            if (coerceAtMost < 0) {
                return -1;
            }
            while (true) {
                int i2 = coerceAtMost - 1;
                char charAt = charSequence.charAt(coerceAtMost);
                int length = cArr.length;
                boolean z2 = false;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    }
                    char c = cArr[i3];
                    i3++;
                    if (CharsKt.equals(c, charAt, z)) {
                        z2 = true;
                        break;
                    }
                }
                if (z2) {
                    return coerceAtMost;
                }
                if (i2 < 0) {
                    return -1;
                }
                coerceAtMost = i2;
            }
        } else {
            return ((String) charSequence).lastIndexOf(ArraysKt.single(cArr), i);
        }
    }

    static /* synthetic */ int indexOf$StringsKt__StringsKt$default(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return indexOf$StringsKt__StringsKt(charSequence, charSequence2, i, i2, z, z2);
    }

    private static final int indexOf$StringsKt__StringsKt(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        IntRange intRange;
        if (!z2) {
            intRange = new IntRange(RangesKt.coerceAtLeast(i, 0), RangesKt.coerceAtMost(i2, charSequence.length()));
        } else {
            intRange = RangesKt.downTo(RangesKt.coerceAtMost(i, StringsKt.getLastIndex(charSequence)), RangesKt.coerceAtLeast(i2, 0));
        }
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int first = intRange.getFirst();
            int last = intRange.getLast();
            int step = intRange.getStep();
            if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
                return -1;
            }
            while (true) {
                int i3 = first + step;
                if (StringsKt.regionMatchesImpl(charSequence2, 0, charSequence, first, charSequence2.length(), z)) {
                    return first;
                }
                if (first == last) {
                    return -1;
                }
                first = i3;
            }
        } else {
            int first2 = intRange.getFirst();
            int last2 = intRange.getLast();
            int step2 = intRange.getStep();
            if ((step2 <= 0 || first2 > last2) && (step2 >= 0 || last2 > first2)) {
                return -1;
            }
            while (true) {
                int i4 = first2 + step2;
                if (StringsKt.regionMatches((String) charSequence2, 0, (String) charSequence, first2, charSequence2.length(), z)) {
                    return first2;
                }
                if (first2 == last2) {
                    return -1;
                }
                first2 = i4;
            }
        }
    }

    public static final Pair<Integer, String> findAnyOf$StringsKt__StringsKt(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        Object obj;
        Object obj2;
        if (z || collection.size() != 1) {
            IntRange intRange = !z2 ? new IntRange(RangesKt.coerceAtLeast(i, 0), charSequence.length()) : RangesKt.downTo(RangesKt.coerceAtMost(i, StringsKt.getLastIndex(charSequence)), 0);
            if (charSequence instanceof String) {
                int first = intRange.getFirst();
                int last = intRange.getLast();
                int step = intRange.getStep();
                if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                    while (true) {
                        int i2 = first + step;
                        Iterator<T> it = collection.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                obj2 = null;
                                break;
                            }
                            obj2 = it.next();
                            String str = (String) obj2;
                            if (StringsKt.regionMatches(str, 0, (String) charSequence, first, str.length(), z)) {
                                break;
                            }
                        }
                        String str2 = (String) obj2;
                        if (str2 != null) {
                            return TuplesKt.to(Integer.valueOf(first), str2);
                        }
                        if (first == last) {
                            break;
                        }
                        first = i2;
                    }
                }
            } else {
                int first2 = intRange.getFirst();
                int last2 = intRange.getLast();
                int step2 = intRange.getStep();
                if ((step2 > 0 && first2 <= last2) || (step2 < 0 && last2 <= first2)) {
                    while (true) {
                        int i3 = first2 + step2;
                        Iterator<T> it2 = collection.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                obj = null;
                                break;
                            }
                            obj = it2.next();
                            String str3 = (String) obj;
                            if (StringsKt.regionMatchesImpl(str3, 0, charSequence, first2, str3.length(), z)) {
                                break;
                            }
                        }
                        String str4 = (String) obj;
                        if (str4 != null) {
                            return TuplesKt.to(Integer.valueOf(first2), str4);
                        }
                        if (first2 == last2) {
                            break;
                        }
                        first2 = i3;
                    }
                }
            }
            return null;
        }
        String str5 = (String) CollectionsKt.single(collection);
        int indexOf$default = !z2 ? StringsKt.indexOf$default(charSequence, str5, i, false, 4, (Object) null) : StringsKt.lastIndexOf$default(charSequence, str5, i, false, 4, (Object) null);
        if (indexOf$default < 0) {
            return null;
        }
        return TuplesKt.to(Integer.valueOf(indexOf$default), str5);
    }

    public static /* synthetic */ Pair findAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.findAnyOf(charSequence, collection, i, z);
    }

    public static final Pair<Integer, String> findAnyOf(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(collection, "strings");
        return findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, false);
    }

    public static /* synthetic */ Pair findLastAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.findLastAnyOf(charSequence, collection, i, z);
    }

    public static final Pair<Integer, String> findLastAnyOf(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(collection, "strings");
        return findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, true);
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.indexOfAny(charSequence, collection, i, z);
    }

    public static final int indexOfAny(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(collection, "strings");
        Pair<Integer, String> findAnyOf$StringsKt__StringsKt = findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, false);
        if (findAnyOf$StringsKt__StringsKt == null) {
            return -1;
        }
        return findAnyOf$StringsKt__StringsKt.getFirst().intValue();
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.lastIndexOfAny(charSequence, collection, i, z);
    }

    public static final int lastIndexOfAny(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(collection, "strings");
        Pair<Integer, String> findAnyOf$StringsKt__StringsKt = findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, true);
        if (findAnyOf$StringsKt__StringsKt == null) {
            return -1;
        }
        return findAnyOf$StringsKt__StringsKt.getFirst().intValue();
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.indexOf(charSequence, c, i, z);
    }

    public static final int indexOf(CharSequence charSequence, char c, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (z || !(charSequence instanceof String)) {
            return StringsKt.indexOfAny(charSequence, new char[]{c}, i, z);
        }
        return ((String) charSequence).indexOf(c, i);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.indexOf(charSequence, str, i, z);
    }

    public static final int indexOf(CharSequence charSequence, String str, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(str, "string");
        if (z || !(charSequence instanceof String)) {
            return indexOf$StringsKt__StringsKt$default(charSequence, str, i, charSequence.length(), z, false, 16, null);
        }
        return ((String) charSequence).indexOf(str, i);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.lastIndexOf(charSequence, c, i, z);
    }

    public static final int lastIndexOf(CharSequence charSequence, char c, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (z || !(charSequence instanceof String)) {
            return StringsKt.lastIndexOfAny(charSequence, new char[]{c}, i, z);
        }
        return ((String) charSequence).lastIndexOf(c, i);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.lastIndexOf(charSequence, str, i, z);
    }

    public static final int lastIndexOf(CharSequence charSequence, String str, int i, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(str, "string");
        if (z || !(charSequence instanceof String)) {
            return indexOf$StringsKt__StringsKt(charSequence, str, i, 0, z, true);
        }
        return ((String) charSequence).lastIndexOf(str, i);
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.contains(charSequence, charSequence2, z);
    }

    public static final boolean contains(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (StringsKt.indexOf$default(charSequence, (String) charSequence2, 0, z, 2, (Object) null) >= 0) {
                return true;
            }
        } else if (indexOf$StringsKt__StringsKt$default(charSequence, charSequence2, 0, charSequence.length(), z, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.contains(charSequence, c, z);
    }

    public static final boolean contains(CharSequence charSequence, char c, boolean z) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return StringsKt.indexOf$default(charSequence, c, 0, z, 2, (Object) null) >= 0;
    }

    private static final boolean contains(CharSequence charSequence, Regex regex) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        return regex.containsMatchIn(charSequence);
    }

    static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, cArr, i, z, i2);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(CharSequence charSequence, char[] cArr, int i, boolean z, int i2) {
        StringsKt.requireNonNegativeLimit(i2);
        return new DelimitedRangesSequence(charSequence, i, i2, new Function2<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>>(cArr, z) { // from class: kotlin.text.StringsKt__StringsKt$rangesDelimitedBy$1
            final /* synthetic */ char[] $delimiters;
            final /* synthetic */ boolean $ignoreCase;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$delimiters = r1;
                this.$ignoreCase = r2;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Pair<? extends Integer, ? extends Integer> invoke(CharSequence charSequence2, Integer num) {
                return invoke(charSequence2, num.intValue());
            }

            public final Pair<Integer, Integer> invoke(CharSequence charSequence2, int i3) {
                Intrinsics.checkNotNullParameter(charSequence2, "$this$$receiver");
                int indexOfAny = StringsKt.indexOfAny(charSequence2, this.$delimiters, i3, this.$ignoreCase);
                if (indexOfAny < 0) {
                    return null;
                }
                return TuplesKt.to(Integer.valueOf(indexOfAny), 1);
            }
        });
    }

    static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, strArr, i, z, i2);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(CharSequence charSequence, String[] strArr, int i, boolean z, int i2) {
        StringsKt.requireNonNegativeLimit(i2);
        return new DelimitedRangesSequence(charSequence, i, i2, new Function2<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>>(ArraysKt.asList(strArr), z) { // from class: kotlin.text.StringsKt__StringsKt$rangesDelimitedBy$2
            final /* synthetic */ List<String> $delimitersList;
            final /* synthetic */ boolean $ignoreCase;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$delimitersList = r1;
                this.$ignoreCase = r2;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Pair<? extends Integer, ? extends Integer> invoke(CharSequence charSequence2, Integer num) {
                return invoke(charSequence2, num.intValue());
            }

            public final Pair<Integer, Integer> invoke(CharSequence charSequence2, int i3) {
                Intrinsics.checkNotNullParameter(charSequence2, "$this$$receiver");
                Pair pair = StringsKt__StringsKt.findAnyOf$StringsKt__StringsKt(charSequence2, this.$delimitersList, i3, this.$ignoreCase, false);
                if (pair == null) {
                    return null;
                }
                return TuplesKt.to(pair.getFirst(), Integer.valueOf(((String) pair.getSecond()).length()));
            }
        });
    }

    public static final void requireNonNegativeLimit(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Limit must be non-negative, but was ", Integer.valueOf(i)).toString());
        }
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return StringsKt.splitToSequence(charSequence, strArr, z, i);
    }

    public static final Sequence<String> splitToSequence(CharSequence charSequence, String[] strArr, boolean z, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(strArr, "delimiters");
        return SequencesKt.map(rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, strArr, 0, z, i, 2, (Object) null), new Function1<IntRange, String>(charSequence) { // from class: kotlin.text.StringsKt__StringsKt$splitToSequence$1
            final /* synthetic */ CharSequence $this_splitToSequence;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$this_splitToSequence = r1;
            }

            public final String invoke(IntRange intRange) {
                Intrinsics.checkNotNullParameter(intRange, "it");
                return StringsKt.substring(this.$this_splitToSequence, intRange);
            }
        });
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return StringsKt.split(charSequence, strArr, z, i);
    }

    public static final List<String> split(CharSequence charSequence, String[] strArr, boolean z, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(strArr, "delimiters");
        if (strArr.length == 1) {
            boolean z2 = false;
            String str = strArr[0];
            if (str.length() == 0) {
                z2 = true;
            }
            if (!z2) {
                return split$StringsKt__StringsKt(charSequence, str, z, i);
            }
        }
        Iterable<IntRange> asIterable = SequencesKt.asIterable(rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, strArr, 0, z, i, 2, (Object) null));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(asIterable, 10));
        for (IntRange intRange : asIterable) {
            arrayList.add(StringsKt.substring(charSequence, intRange));
        }
        return arrayList;
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return StringsKt.splitToSequence(charSequence, cArr, z, i);
    }

    public static final Sequence<String> splitToSequence(CharSequence charSequence, char[] cArr, boolean z, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "delimiters");
        return SequencesKt.map(rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, cArr, 0, z, i, 2, (Object) null), new Function1<IntRange, String>(charSequence) { // from class: kotlin.text.StringsKt__StringsKt$splitToSequence$2
            final /* synthetic */ CharSequence $this_splitToSequence;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$this_splitToSequence = r1;
            }

            public final String invoke(IntRange intRange) {
                Intrinsics.checkNotNullParameter(intRange, "it");
                return StringsKt.substring(this.$this_splitToSequence, intRange);
            }
        });
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return StringsKt.split(charSequence, cArr, z, i);
    }

    public static final List<String> split(CharSequence charSequence, char[] cArr, boolean z, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "delimiters");
        if (cArr.length == 1) {
            return split$StringsKt__StringsKt(charSequence, String.valueOf(cArr[0]), z, i);
        }
        Iterable<IntRange> asIterable = SequencesKt.asIterable(rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, cArr, 0, z, i, 2, (Object) null));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(asIterable, 10));
        for (IntRange intRange : asIterable) {
            arrayList.add(StringsKt.substring(charSequence, intRange));
        }
        return arrayList;
    }

    private static final List<String> split$StringsKt__StringsKt(CharSequence charSequence, String str, boolean z, int i) {
        StringsKt.requireNonNegativeLimit(i);
        int i2 = 0;
        int indexOf = StringsKt.indexOf(charSequence, str, 0, z);
        if (indexOf == -1 || i == 1) {
            return CollectionsKt.listOf(charSequence.toString());
        }
        boolean z2 = i > 0;
        int i3 = 10;
        if (z2) {
            i3 = RangesKt.coerceAtMost(i, 10);
        }
        ArrayList arrayList = new ArrayList(i3);
        do {
            arrayList.add(charSequence.subSequence(i2, indexOf).toString());
            i2 = str.length() + indexOf;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            indexOf = StringsKt.indexOf(charSequence, str, i2, z);
        } while (indexOf != -1);
        arrayList.add(charSequence.subSequence(i2, charSequence.length()).toString());
        return arrayList;
    }

    private static final List<String> split(CharSequence charSequence, Regex regex, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        return regex.split(charSequence, i);
    }

    static /* synthetic */ List split$default(CharSequence charSequence, Regex regex, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        return regex.split(charSequence, i);
    }

    private static final Sequence<String> splitToSequence(CharSequence charSequence, Regex regex, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        return regex.splitToSequence(charSequence, i);
    }

    static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, Regex regex, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        return regex.splitToSequence(charSequence, i);
    }

    public static final Sequence<String> lineSequence(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return StringsKt.splitToSequence$default(charSequence, new String[]{IOUtils.LINE_SEPARATOR_WINDOWS, "\n", "\r"}, false, 0, 6, (Object) null);
    }

    public static final List<String> lines(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return SequencesKt.toList(StringsKt.lineSequence(charSequence));
    }

    public static final boolean contentEqualsIgnoreCaseImpl(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return StringsKt.equals((String) charSequence, (String) charSequence2, true);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            if (!CharsKt.equals(charSequence.charAt(i), charSequence2.charAt(i), true)) {
                return false;
            }
            i = i2;
        }
        return true;
    }

    public static final boolean contentEqualsImpl(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return Intrinsics.areEqual(charSequence, charSequence2);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
            i = i2;
        }
        return true;
    }

    public static final boolean toBooleanStrict(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (Intrinsics.areEqual(str, "true")) {
            return true;
        }
        if (Intrinsics.areEqual(str, "false")) {
            return false;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("The string doesn't represent a boolean value: ", str));
    }

    public static final Boolean toBooleanStrictOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (Intrinsics.areEqual(str, "true")) {
            return true;
        }
        return Intrinsics.areEqual(str, "false") ? false : null;
    }

    public static final CharSequence trim(CharSequence charSequence, char... cArr) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "chars");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean contains = ArraysKt.contains(cArr, charSequence.charAt(!z ? i : length));
            if (!z) {
                if (!contains) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!contains) {
                break;
            } else {
                length--;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final String trim(String str, char... cArr) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "chars");
        String str2 = str;
        int length = str2.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean contains = ArraysKt.contains(cArr, str2.charAt(!z ? i : length));
            if (!z) {
                if (!contains) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!contains) {
                break;
            } else {
                length--;
            }
        }
        return str2.subSequence(i, length + 1).toString();
    }

    public static final CharSequence trimStart(CharSequence charSequence, char... cArr) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "chars");
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            if (!ArraysKt.contains(cArr, charSequence.charAt(i))) {
                return charSequence.subSequence(i, charSequence.length());
            }
            i = i2;
        }
        return "";
    }

    public static final String trimStart(String str, char... cArr) {
        String str2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "chars");
        String str3 = str;
        int length = str3.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int i2 = i + 1;
            if (!ArraysKt.contains(cArr, str3.charAt(i))) {
                str2 = str3.subSequence(i, str3.length());
                break;
            }
            i = i2;
        }
        return str2.toString();
    }

    public static final CharSequence trimEnd(CharSequence charSequence, char... cArr) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "chars");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!ArraysKt.contains(cArr, charSequence.charAt(length))) {
                    return charSequence.subSequence(0, length + 1);
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
        }
        return "";
    }

    public static final String trimEnd(String str, char... cArr) {
        String str2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(cArr, "chars");
        String str3 = str;
        int length = str3.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!ArraysKt.contains(cArr, str3.charAt(length))) {
                    str2 = str3.subSequence(0, length + 1);
                    break;
                } else if (i < 0) {
                    break;
                } else {
                    length = i;
                }
            }
            return str2.toString();
        }
        return str2.toString();
    }

    public static final CharSequence trim(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean isWhitespace = CharsKt.isWhitespace(charSequence.charAt(!z ? i : length));
            if (!z) {
                if (!isWhitespace) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!isWhitespace) {
                break;
            } else {
                length--;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final CharSequence trimStart(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            if (!CharsKt.isWhitespace(charSequence.charAt(i))) {
                return charSequence.subSequence(i, charSequence.length());
            }
            i = i2;
        }
        return "";
    }

    public static final CharSequence trimEnd(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!CharsKt.isWhitespace(charSequence.charAt(length))) {
                    return charSequence.subSequence(0, length + 1);
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
        }
        return "";
    }
}
