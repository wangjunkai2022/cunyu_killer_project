package top.kikt.flutter_image_editor.option.draw;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.option.Option;

/* compiled from: DrawOption.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Ltop/kikt/flutter_image_editor/option/draw/DrawOption;", "Ltop/kikt/flutter_image_editor/option/draw/TransferValue;", "Ltop/kikt/flutter_image_editor/option/Option;", "map", "", "(Ljava/util/Map;)V", "drawPart", "", "Ltop/kikt/flutter_image_editor/option/draw/DrawPart;", "getDrawPart", "()Ljava/util/List;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class DrawOption extends TransferValue implements Option {
    private final List<DrawPart> drawPart;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawOption(Map<?, ?> map) {
        super(map);
        PathDrawPart pathDrawPart;
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
                        if (Intrinsics.areEqual(obj3, "rect")) {
                            pathDrawPart = new RectDrawPart(map3);
                        } else if (Intrinsics.areEqual(obj3, "oval")) {
                            pathDrawPart = new OvalDrawPart(map3);
                        } else if (Intrinsics.areEqual(obj3, "line")) {
                            pathDrawPart = new LineDrawPart(map3);
                        } else if (Intrinsics.areEqual(obj3, "point")) {
                            pathDrawPart = new PointsDrawPart(map3);
                        } else {
                            pathDrawPart = Intrinsics.areEqual(obj3, "path") ? new PathDrawPart(map3) : null;
                        }
                        if (pathDrawPart != null) {
                            arrayList.add(pathDrawPart);
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
                    }
                }
            }
            this.drawPart = arrayList;
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<*>");
    }

    @Override // top.kikt.flutter_image_editor.option.Option
    public boolean canIgnore() {
        return Option.DefaultImpls.canIgnore(this);
    }

    public final List<DrawPart> getDrawPart() {
        return this.drawPart;
    }
}
