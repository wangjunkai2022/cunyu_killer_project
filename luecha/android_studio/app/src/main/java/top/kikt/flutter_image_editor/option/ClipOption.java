package top.kikt.flutter_image_editor.option;

import kotlin.Metadata;
import top.kikt.flutter_image_editor.option.Option;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: ClipOption.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, d2 = {"Ltop/kikt/flutter_image_editor/option/ClipOption;", "Ltop/kikt/flutter_image_editor/option/Option;", "x", "", "y", "width", "height", "(IIII)V", "getHeight", "()I", "getWidth", "getX", "getY", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ClipOption implements Option {
    private final int height;
    private final int width;
    private final int x;
    private final int y;

    public static /* synthetic */ ClipOption copy$default(ClipOption clipOption, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = clipOption.x;
        }
        if ((i5 & 2) != 0) {
            i2 = clipOption.y;
        }
        if ((i5 & 4) != 0) {
            i3 = clipOption.width;
        }
        if ((i5 & 8) != 0) {
            i4 = clipOption.height;
        }
        return clipOption.copy(i, i2, i3, i4);
    }

    public final int component1() {
        return this.x;
    }

    public final int component2() {
        return this.y;
    }

    public final int component3() {
        return this.width;
    }

    public final int component4() {
        return this.height;
    }

    public final ClipOption copy(int i, int i2, int i3, int i4) {
        return new ClipOption(i, i2, i3, i4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClipOption)) {
            return false;
        }
        ClipOption clipOption = (ClipOption) obj;
        return this.x == clipOption.x && this.y == clipOption.y && this.width == clipOption.width && this.height == clipOption.height;
    }

    public int hashCode() {
        return (((((Integer.valueOf(this.x).hashCode() * 31) + Integer.valueOf(this.y).hashCode()) * 31) + Integer.valueOf(this.width).hashCode()) * 31) + Integer.valueOf(this.height).hashCode();
    }

    public String toString() {
        return "ClipOption(x=" + this.x + ", y=" + this.y + ", width=" + this.width + ", height=" + this.height + ')';
    }

    public ClipOption(int i, int i2, int i3, int i4) {
        this.x = i;
        this.y = i2;
        this.width = i3;
        this.height = i4;
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

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }
}
