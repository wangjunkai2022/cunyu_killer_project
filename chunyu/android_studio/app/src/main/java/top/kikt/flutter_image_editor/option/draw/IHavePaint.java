package top.kikt.flutter_image_editor.option.draw;

import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.option.draw.ITransferValue;

/* compiled from: DrawOption.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"Ltop/kikt/flutter_image_editor/option/draw/IHavePaint;", "Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;", "getPaint", "Landroid/graphics/Paint;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface IHavePaint extends ITransferValue {
    Paint getPaint();

    /* compiled from: DrawOption.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static Point convertMapToOffset(IHavePaint iHavePaint, Map<?, ?> map) {
            Intrinsics.checkNotNullParameter(iHavePaint, "this");
            Intrinsics.checkNotNullParameter(map, "map");
            return ITransferValue.DefaultImpls.convertMapToOffset(iHavePaint, map);
        }

        public static int getColor(IHavePaint iHavePaint, String str) {
            Intrinsics.checkNotNullParameter(iHavePaint, "this");
            Intrinsics.checkNotNullParameter(str, "key");
            return ITransferValue.DefaultImpls.getColor(iHavePaint, str);
        }

        public static Point getOffset(IHavePaint iHavePaint, String str) {
            Intrinsics.checkNotNullParameter(iHavePaint, "this");
            Intrinsics.checkNotNullParameter(str, "key");
            return ITransferValue.DefaultImpls.getOffset(iHavePaint, str);
        }

        public static Rect getRect(IHavePaint iHavePaint, String str) {
            Intrinsics.checkNotNullParameter(iHavePaint, "this");
            Intrinsics.checkNotNullParameter(str, "key");
            return ITransferValue.DefaultImpls.getRect(iHavePaint, str);
        }

        public static Paint getPaint(IHavePaint iHavePaint) {
            Intrinsics.checkNotNullParameter(iHavePaint, "this");
            Object obj = iHavePaint.getMap().get("paint");
            if (obj != null) {
                return new DrawPaint((Map) obj).getPaint();
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
        }
    }
}
