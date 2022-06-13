package top.kikt.flutter_image_editor.option;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: AddTextOpt.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003Jc\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0005HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f¨\u0006("}, d2 = {"Ltop/kikt/flutter_image_editor/option/Text;", "", "text", "", "x", "", "y", "fontSizePx", "r", "g", "b", ai.at, "fontName", "(Ljava/lang/String;IIIIIIILjava/lang/String;)V", "getA", "()I", "getB", "getFontName", "()Ljava/lang/String;", "getFontSizePx", "getG", "getR", "getText", "getX", "getY", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class Text {
    private final int a;
    private final int b;
    private final String fontName;
    private final int fontSizePx;
    private final int g;
    private final int r;
    private final String text;
    private final int x;
    private final int y;

    public final String component1() {
        return this.text;
    }

    public final int component2() {
        return this.x;
    }

    public final int component3() {
        return this.y;
    }

    public final int component4() {
        return this.fontSizePx;
    }

    public final int component5() {
        return this.r;
    }

    public final int component6() {
        return this.g;
    }

    public final int component7() {
        return this.b;
    }

    public final int component8() {
        return this.a;
    }

    public final String component9() {
        return this.fontName;
    }

    public final Text copy(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, String str2) {
        Intrinsics.checkNotNullParameter(str, "text");
        Intrinsics.checkNotNullParameter(str2, "fontName");
        return new Text(str, i, i2, i3, i4, i5, i6, i7, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Text)) {
            return false;
        }
        Text text = (Text) obj;
        return Intrinsics.areEqual(this.text, text.text) && this.x == text.x && this.y == text.y && this.fontSizePx == text.fontSizePx && this.r == text.r && this.g == text.g && this.b == text.b && this.a == text.a && Intrinsics.areEqual(this.fontName, text.fontName);
    }

    public int hashCode() {
        return (((((((((((((((this.text.hashCode() * 31) + Integer.valueOf(this.x).hashCode()) * 31) + Integer.valueOf(this.y).hashCode()) * 31) + Integer.valueOf(this.fontSizePx).hashCode()) * 31) + Integer.valueOf(this.r).hashCode()) * 31) + Integer.valueOf(this.g).hashCode()) * 31) + Integer.valueOf(this.b).hashCode()) * 31) + Integer.valueOf(this.a).hashCode()) * 31) + this.fontName.hashCode();
    }

    public String toString() {
        return "Text(text=" + this.text + ", x=" + this.x + ", y=" + this.y + ", fontSizePx=" + this.fontSizePx + ", r=" + this.r + ", g=" + this.g + ", b=" + this.b + ", a=" + this.a + ", fontName=" + this.fontName + ')';
    }

    public Text(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, String str2) {
        Intrinsics.checkNotNullParameter(str, "text");
        Intrinsics.checkNotNullParameter(str2, "fontName");
        this.text = str;
        this.x = i;
        this.y = i2;
        this.fontSizePx = i3;
        this.r = i4;
        this.g = i5;
        this.b = i6;
        this.a = i7;
        this.fontName = str2;
    }

    public final String getText() {
        return this.text;
    }

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }

    public final int getFontSizePx() {
        return this.fontSizePx;
    }

    public final int getR() {
        return this.r;
    }

    public final int getG() {
        return this.g;
    }

    public final int getB() {
        return this.b;
    }

    public final int getA() {
        return this.a;
    }

    public final String getFontName() {
        return this.fontName;
    }
}
