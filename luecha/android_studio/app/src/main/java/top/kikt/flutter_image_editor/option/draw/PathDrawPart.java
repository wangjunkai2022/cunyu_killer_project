package top.kikt.flutter_image_editor.option.draw;

import android.graphics.Paint;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.option.draw.IHavePaint;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: PathPart.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Ltop/kikt/flutter_image_editor/option/draw/PathDrawPart;", "Ltop/kikt/flutter_image_editor/option/draw/DrawPart;", "Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;", "map", "", "(Ljava/util/Map;)V", "autoClose", "", "getAutoClose", "()Z", "paths", "", "Ltop/kikt/flutter_image_editor/option/draw/PathPart;", "getPaths", "()Ljava/util/List;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PathDrawPart extends DrawPart implements IHavePaint {
    private final List<PathPart> paths;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PathDrawPart(Map<?, ?> map) {
        super(map);
        ArcToPathPart arcToPathPart;
        Intrinsics.checkNotNullParameter(map, "map");
        ArrayList arrayList = new ArrayList();
        Object obj = map.get("parts");
        if (obj != null) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    Map map2 = (Map) obj2;
                    Object obj3 = map2.get("key");
                    Object obj4 = map2.get("value");
                    if (obj4 != null) {
                        Map map3 = (Map) obj4;
                        if (Intrinsics.areEqual(obj3, "move")) {
                            arcToPathPart = new MovePathPart(map3);
                        } else if (Intrinsics.areEqual(obj3, "lineTo")) {
                            arcToPathPart = new LineToPathPart(map3);
                        } else if (Intrinsics.areEqual(obj3, "bezier")) {
                            arcToPathPart = new BezierPathPart(map3);
                        } else {
                            arcToPathPart = Intrinsics.areEqual(obj3, "arcTo") ? new ArcToPathPart(map3) : null;
                        }
                        if (arcToPathPart != null) {
                            arrayList.add(arcToPathPart);
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
                    }
                }
            }
            this.paths = arrayList;
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<*>");
    }

    @Override // top.kikt.flutter_image_editor.option.draw.IHavePaint
    public Paint getPaint() {
        return IHavePaint.DefaultImpls.getPaint(this);
    }

    public final boolean getAutoClose() {
        Object obj = getMap().get("autoClose");
        if (obj != null) {
            return ((Boolean) obj).booleanValue();
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
    }

    public final List<PathPart> getPaths() {
        return this.paths;
    }
}
