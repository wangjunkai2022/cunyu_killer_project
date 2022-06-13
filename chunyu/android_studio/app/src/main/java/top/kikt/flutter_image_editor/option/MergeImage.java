package top.kikt.flutter_image_editor.option;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MergeOption.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Ltop/kikt/flutter_image_editor/option/MergeImage;", "", "map", "", "(Ljava/util/Map;)V", "byteArray", "", "getByteArray", "()[B", "position", "Ltop/kikt/flutter_image_editor/option/ImagePosition;", "getPosition", "()Ltop/kikt/flutter_image_editor/option/ImagePosition;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class MergeImage {
    private final byte[] byteArray;
    private final ImagePosition position;

    public MergeImage(Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        Object obj = map.get("src");
        if (obj != null) {
            Object obj2 = ((Map) obj).get("memory");
            if (obj2 != null) {
                this.byteArray = (byte[]) obj2;
                Object obj3 = map.get("position");
                if (obj3 != null) {
                    this.position = new ImagePosition((Map) obj3);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.ByteArray");
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
    }

    public final byte[] getByteArray() {
        return this.byteArray;
    }

    public final ImagePosition getPosition() {
        return this.position;
    }
}
