package top.kikt.flutter_image_editor.option;

import kotlin.Metadata;
import top.kikt.flutter_image_editor.option.Option;

/* compiled from: ScaleOption.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Ltop/kikt/flutter_image_editor/option/ScaleOption;", "Ltop/kikt/flutter_image_editor/option/Option;", "width", "", "height", "(II)V", "getHeight", "()I", "getWidth", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ScaleOption implements Option {
    private final int height;
    private final int width;

    public static /* synthetic */ ScaleOption copy$default(ScaleOption scaleOption, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = scaleOption.width;
        }
        if ((i3 & 2) != 0) {
            i2 = scaleOption.height;
        }
        return scaleOption.copy(i, i2);
    }

    public final int component1() {
        return this.width;
    }

    public final int component2() {
        return this.height;
    }

    public final ScaleOption copy(int i, int i2) {
        return new ScaleOption(i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScaleOption)) {
            return false;
        }
        ScaleOption scaleOption = (ScaleOption) obj;
        return this.width == scaleOption.width && this.height == scaleOption.height;
    }

    public int hashCode() {
        return (Integer.valueOf(this.width).hashCode() * 31) + Integer.valueOf(this.height).hashCode();
    }

    public String toString() {
        return "ScaleOption(width=" + this.width + ", height=" + this.height + ')';
    }

    public ScaleOption(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    @Override // top.kikt.flutter_image_editor.option.Option
    public boolean canIgnore() {
        return Option.DefaultImpls.canIgnore(this);
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }
}
