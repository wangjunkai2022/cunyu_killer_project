package top.kikt.flutter_image_editor.option.draw;

import android.graphics.Paint;
import android.graphics.Point;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.option.draw.IHavePaint;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: DrawPart.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Ltop/kikt/flutter_image_editor/option/draw/PointsDrawPart;", "Ltop/kikt/flutter_image_editor/option/draw/DrawPart;", "Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;", "map", "", "(Ljava/util/Map;)V", "offsets", "", "Landroid/graphics/Point;", "getOffsets", "()Ljava/util/List;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PointsDrawPart extends DrawPart implements IHavePaint {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointsDrawPart(Map<?, ?> map) {
        super(map);
        Intrinsics.checkNotNullParameter(map, "map");
    }

    @Override // top.kikt.flutter_image_editor.option.draw.IHavePaint
    public Paint getPaint() {
        return IHavePaint.DefaultImpls.getPaint(this);
    }

    public final List<Point> getOffsets() {
        ArrayList arrayList = new ArrayList();
        Object obj = getMap().get("offset");
        if (obj != null) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    arrayList.add(convertMapToOffset((Map) obj2));
                }
            }
            return arrayList;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<*>");
    }
}
