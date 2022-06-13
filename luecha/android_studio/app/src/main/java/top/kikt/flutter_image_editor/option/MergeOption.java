package top.kikt.flutter_image_editor.option;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: MergeOption.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\f¨\u0006\u0014"}, d2 = {"Ltop/kikt/flutter_image_editor/option/MergeOption;", "", "map", "", "(Ljava/util/Map;)V", "formatOption", "Ltop/kikt/flutter_image_editor/option/FormatOption;", "getFormatOption", "()Ltop/kikt/flutter_image_editor/option/FormatOption;", "height", "", "getHeight", "()I", "images", "", "Ltop/kikt/flutter_image_editor/option/MergeImage;", "getImages", "()Ljava/util/List;", "width", "getWidth", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class MergeOption {
    private final FormatOption formatOption;
    private final int height;
    private final List<MergeImage> images;
    private final int width;

    public MergeOption(Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        Object obj = map.get("fmt");
        if (obj != null) {
            this.formatOption = new FormatOption((Map) obj);
            Object obj2 = map.get("w");
            if (obj2 != null) {
                this.width = ((Integer) obj2).intValue();
                Object obj3 = map.get("h");
                if (obj3 != null) {
                    this.height = ((Integer) obj3).intValue();
                    ArrayList arrayList = new ArrayList();
                    Object obj4 = map.get("images");
                    if (obj4 != null) {
                        for (Object obj5 : (List) obj4) {
                            if (obj5 instanceof Map) {
                                arrayList.add(new MergeImage((Map) obj5));
                            }
                        }
                        this.images = arrayList;
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<*>");
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
    }

    public final FormatOption getFormatOption() {
        return this.formatOption;
    }

    public final List<MergeImage> getImages() {
        return this.images;
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }
}
