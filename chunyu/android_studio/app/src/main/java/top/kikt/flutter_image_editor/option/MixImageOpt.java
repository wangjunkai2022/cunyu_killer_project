package top.kikt.flutter_image_editor.option;

import android.graphics.PorterDuff;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.option.Option;
import top.kikt.flutter_image_editor.util.ConvertUtils;

/* compiled from: MixImageOpt.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\bR\u0011\u0010\u0015\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\bR\u0011\u0010\u0017\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\b¨\u0006\u0019"}, d2 = {"Ltop/kikt/flutter_image_editor/option/MixImageOpt;", "Ltop/kikt/flutter_image_editor/option/Option;", "map", "", "(Ljava/util/Map;)V", "h", "", "getH", "()I", "img", "", "getImg", "()[B", "porterDuffMode", "Landroid/graphics/PorterDuff$Mode;", "getPorterDuffMode", "()Landroid/graphics/PorterDuff$Mode;", "type", "", "w", "getW", "x", "getX", "y", "getY", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class MixImageOpt implements Option {
    private final int h;
    private final byte[] img;
    private final String type;
    private final int w;
    private final int x;
    private final int y;

    public MixImageOpt(Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        Object obj = map.get("target");
        if (obj != null) {
            Object obj2 = ((Map) obj).get("memory");
            if (obj2 != null) {
                this.img = (byte[]) obj2;
                Object obj3 = map.get("x");
                if (obj3 != null) {
                    this.x = ((Integer) obj3).intValue();
                    Object obj4 = map.get("y");
                    if (obj4 != null) {
                        this.y = ((Integer) obj4).intValue();
                        Object obj5 = map.get("w");
                        if (obj5 != null) {
                            this.w = ((Integer) obj5).intValue();
                            Object obj6 = map.get("h");
                            if (obj6 != null) {
                                this.h = ((Integer) obj6).intValue();
                                Object obj7 = map.get("mixMode");
                                if (obj7 != null) {
                                    this.type = (String) obj7;
                                    return;
                                }
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                            }
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.ByteArray");
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
    }

    @Override // top.kikt.flutter_image_editor.option.Option
    public boolean canIgnore() {
        return Option.DefaultImpls.canIgnore(this);
    }

    public final byte[] getImg() {
        return this.img;
    }

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }

    public final int getW() {
        return this.w;
    }

    public final int getH() {
        return this.h;
    }

    public final PorterDuff.Mode getPorterDuffMode() {
        return ConvertUtils.INSTANCE.convertToPorterDuffMode(this.type);
    }
}
