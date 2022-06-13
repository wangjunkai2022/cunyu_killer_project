package top.kikt.flutter_image_editor.option.draw;

import android.graphics.Point;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PathPart.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Ltop/kikt/flutter_image_editor/option/draw/MovePathPart;", "Ltop/kikt/flutter_image_editor/option/draw/PathPart;", "map", "", "(Ljava/util/Map;)V", "offset", "Landroid/graphics/Point;", "getOffset", "()Landroid/graphics/Point;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class MovePathPart extends PathPart {
    private final Point offset = getOffset("offset");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovePathPart(Map<?, ?> map) {
        super(map);
        Intrinsics.checkNotNullParameter(map, "map");
    }

    public final Point getOffset() {
        return this.offset;
    }
}
