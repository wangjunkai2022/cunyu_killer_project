package androidx.core.text;

import android.text.Spannable;
import android.text.SpannableString;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* compiled from: SpannableString.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a%\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0086\n\u001a\u001d\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bH\u0086\n\u001a\r\u0010\u000b\u001a\u00020\u0002*\u00020\fH\u0086\b¨\u0006\r"}, d2 = {"clearSpans", "", "Landroid/text/Spannable;", "set", TtmlNode.START, "", TtmlNode.END, TtmlNode.TAG_SPAN, "", SessionDescription.ATTR_RANGE, "Lkotlin/ranges/IntRange;", "toSpannable", "", "core-ktx_release"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class SpannableStringKt {
    public static final Spannable toSpannable(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "$this$toSpannable");
        SpannableString valueOf = SpannableString.valueOf(charSequence);
        Intrinsics.checkNotNullExpressionValue(valueOf, "SpannableString.valueOf(this)");
        return valueOf;
    }

    public static final void clearSpans(Spannable spannable) {
        Intrinsics.checkNotNullParameter(spannable, "$this$clearSpans");
        Spannable spannable2 = spannable;
        Object[] spans = spannable2.getSpans(0, spannable2.length(), Object.class);
        Intrinsics.checkNotNullExpressionValue(spans, "getSpans(start, end, T::class.java)");
        for (Object obj : spans) {
            spannable.removeSpan(obj);
        }
    }

    public static final void set(Spannable spannable, int i, int i2, Object obj) {
        Intrinsics.checkNotNullParameter(spannable, "$this$set");
        Intrinsics.checkNotNullParameter(obj, TtmlNode.TAG_SPAN);
        spannable.setSpan(obj, i, i2, 17);
    }

    public static final void set(Spannable spannable, IntRange intRange, Object obj) {
        Intrinsics.checkNotNullParameter(spannable, "$this$set");
        Intrinsics.checkNotNullParameter(intRange, SessionDescription.ATTR_RANGE);
        Intrinsics.checkNotNullParameter(obj, TtmlNode.TAG_SPAN);
        spannable.setSpan(obj, intRange.getStart().intValue(), intRange.getEndInclusive().intValue(), 17);
    }
}
