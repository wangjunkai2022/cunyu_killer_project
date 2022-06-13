package top.kikt.flutter_image_editor.option;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FormatOption.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Ltop/kikt/flutter_image_editor/option/FormatOption;", "", "fmtMap", "", "(Ljava/util/Map;)V", "format", "", "getFormat", "()I", "quality", "getQuality", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FormatOption {
    private final int format;
    private final int quality;

    public FormatOption(Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "fmtMap");
        Object obj = map.get("format");
        if (obj != null) {
            this.format = ((Integer) obj).intValue();
            Object obj2 = map.get("quality");
            if (obj2 != null) {
                this.quality = ((Integer) obj2).intValue();
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
    }

    public final int getFormat() {
        return this.format;
    }

    public final int getQuality() {
        return this.quality;
    }
}
