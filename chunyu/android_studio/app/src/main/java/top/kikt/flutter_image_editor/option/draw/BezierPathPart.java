package top.kikt.flutter_image_editor.option.draw;

import android.graphics.Point;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PathPart.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\b¨\u0006\u0011"}, d2 = {"Ltop/kikt/flutter_image_editor/option/draw/BezierPathPart;", "Ltop/kikt/flutter_image_editor/option/draw/PathPart;", "map", "", "(Ljava/util/Map;)V", "control1", "Landroid/graphics/Point;", "getControl1", "()Landroid/graphics/Point;", "control2", "getControl2", "kind", "", "getKind", "()I", "target", "getTarget", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BezierPathPart extends PathPart {
    private final Point control1;
    private final Point control2;
    private final int kind;
    private final Point target;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BezierPathPart(Map<?, ?> map) {
        super(map);
        Intrinsics.checkNotNullParameter(map, "map");
        Object obj = map.get("kind");
        if (obj != null) {
            this.kind = ((Integer) obj).intValue();
            this.target = getOffset("target");
            this.control1 = getOffset("c1");
            this.control2 = this.kind == 3 ? getOffset("c2") : null;
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
    }

    public final int getKind() {
        return this.kind;
    }

    public final Point getTarget() {
        return this.target;
    }

    public final Point getControl1() {
        return this.control1;
    }

    public final Point getControl2() {
        return this.control2;
    }
}
