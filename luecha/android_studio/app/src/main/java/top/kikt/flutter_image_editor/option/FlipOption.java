package top.kikt.flutter_image_editor.option;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: FlipOption.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\t\u001a\u00020\u0003H\u0016J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Ltop/kikt/flutter_image_editor/option/FlipOption;", "Ltop/kikt/flutter_image_editor/option/Option;", "horizontal", "", "vertical", "(ZZ)V", "getHorizontal", "()Z", "getVertical", "canIgnore", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FlipOption implements Option {
    private final boolean horizontal;
    private final boolean vertical;

    public FlipOption() {
        this(false, false, 3, null);
    }

    public static /* synthetic */ FlipOption copy$default(FlipOption flipOption, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = flipOption.horizontal;
        }
        if ((i & 2) != 0) {
            z2 = flipOption.vertical;
        }
        return flipOption.copy(z, z2);
    }

    public final boolean component1() {
        return this.horizontal;
    }

    public final boolean component2() {
        return this.vertical;
    }

    public final FlipOption copy(boolean z, boolean z2) {
        return new FlipOption(z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlipOption)) {
            return false;
        }
        FlipOption flipOption = (FlipOption) obj;
        return this.horizontal == flipOption.horizontal && this.vertical == flipOption.vertical;
    }

    public int hashCode() {
        boolean z = this.horizontal;
        int i = 1;
        if (z) {
            z = true;
        }
        int i2 = z ? 1 : 0;
        int i3 = z ? 1 : 0;
        int i4 = z ? 1 : 0;
        int i5 = i2 * 31;
        boolean z2 = this.vertical;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return i5 + i;
    }

    public String toString() {
        return "FlipOption(horizontal=" + this.horizontal + ", vertical=" + this.vertical + ')';
    }

    public FlipOption(boolean z, boolean z2) {
        this.horizontal = z;
        this.vertical = z2;
    }

    public /* synthetic */ FlipOption(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2);
    }

    public final boolean getHorizontal() {
        return this.horizontal;
    }

    public final boolean getVertical() {
        return this.vertical;
    }

    @Override // top.kikt.flutter_image_editor.option.Option
    public boolean canIgnore() {
        return !this.horizontal || !this.vertical;
    }
}
