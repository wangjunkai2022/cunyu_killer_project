package androidx.core.graphics;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: PorterDuff.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\b\u001a\r\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0086\b¨\u0006\u0007"}, d2 = {"toColorFilter", "Landroid/graphics/PorterDuffColorFilter;", "Landroid/graphics/PorterDuff$Mode;", TtmlNode.ATTR_TTS_COLOR, "", "toXfermode", "Landroid/graphics/PorterDuffXfermode;", "core-ktx_release"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class PorterDuffKt {
    public static final PorterDuffXfermode toXfermode(PorterDuff.Mode mode) {
        Intrinsics.checkParameterIsNotNull(mode, "$this$toXfermode");
        return new PorterDuffXfermode(mode);
    }

    public static final PorterDuffColorFilter toColorFilter(PorterDuff.Mode mode, int i) {
        Intrinsics.checkParameterIsNotNull(mode, "$this$toColorFilter");
        return new PorterDuffColorFilter(i, mode);
    }
}
