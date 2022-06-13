package top.kikt.flutter_image_editor.option;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.option.Option;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: ColorOption.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, d2 = {"Ltop/kikt/flutter_image_editor/option/ColorOption;", "Ltop/kikt/flutter_image_editor/option/Option;", "matrix", "", "([F)V", "getMatrix", "()[F", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ColorOption implements Option {
    public static final Companion Companion = new Companion(null);
    private static final ColorOption src = new ColorOption(new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
    private final float[] matrix;

    public static /* synthetic */ ColorOption copy$default(ColorOption colorOption, float[] fArr, int i, Object obj) {
        if ((i & 1) != 0) {
            fArr = colorOption.matrix;
        }
        return colorOption.copy(fArr);
    }

    public final float[] component1() {
        return this.matrix;
    }

    public final ColorOption copy(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "matrix");
        return new ColorOption(fArr);
    }

    public String toString() {
        return "ColorOption(matrix=" + Arrays.toString(this.matrix) + ')';
    }

    public ColorOption(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "matrix");
        this.matrix = fArr;
    }

    @Override // top.kikt.flutter_image_editor.option.Option
    public boolean canIgnore() {
        return Option.DefaultImpls.canIgnore(this);
    }

    public final float[] getMatrix() {
        return this.matrix;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: ColorOption.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Ltop/kikt/flutter_image_editor/option/ColorOption$Companion;", "", "()V", "src", "Ltop/kikt/flutter_image_editor/option/ColorOption;", "getSrc", "()Ltop/kikt/flutter_image_editor/option/ColorOption;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ColorOption getSrc() {
            return ColorOption.src;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), obj == null ? null : obj.getClass())) {
            return false;
        }
        if (obj != null) {
            return Arrays.equals(this.matrix, ((ColorOption) obj).matrix);
        }
        throw new NullPointerException("null cannot be cast to non-null type top.kikt.flutter_image_editor.option.ColorOption");
    }

    public int hashCode() {
        return Arrays.hashCode(this.matrix);
    }
}
