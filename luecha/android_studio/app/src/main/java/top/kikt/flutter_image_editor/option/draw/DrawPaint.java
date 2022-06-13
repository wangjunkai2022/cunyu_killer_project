package top.kikt.flutter_image_editor.option.draw;

import android.graphics.Paint;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: DrawPart.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Ltop/kikt/flutter_image_editor/option/draw/DrawPaint;", "Ltop/kikt/flutter_image_editor/option/draw/TransferValue;", "map", "", "(Ljava/util/Map;)V", "getPaint", "Landroid/graphics/Paint;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class DrawPaint extends TransferValue {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawPaint(Map<?, ?> map) {
        super(map);
        Intrinsics.checkNotNullParameter(map, "map");
    }

    public final Paint getPaint() {
        Paint paint = new Paint();
        paint.setColor(getColor(TtmlNode.ATTR_TTS_COLOR));
        Object obj = getMap().get("lineWeight");
        if (obj != null) {
            paint.setStrokeWidth(((Number) obj).floatValue());
            Object obj2 = getMap().get("paintStyleFill");
            if (obj2 != null) {
                paint.setStyle(((Boolean) obj2).booleanValue() ? Paint.Style.FILL : Paint.Style.STROKE);
                return paint;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Number");
    }
}
