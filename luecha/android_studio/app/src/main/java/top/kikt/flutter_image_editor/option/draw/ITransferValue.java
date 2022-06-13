package top.kikt.flutter_image_editor.option.draw;

import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.umeng.analytics.pro.ai;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: DrawOption.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H\u0016J\u0012\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000f"}, d2 = {"Ltop/kikt/flutter_image_editor/option/draw/ITransferValue;", "", "map", "", "getMap", "()Ljava/util/Map;", "convertMapToOffset", "Landroid/graphics/Point;", "getColor", "", "key", "", "getOffset", "getRect", "Landroid/graphics/Rect;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public interface ITransferValue {
    Point convertMapToOffset(Map<?, ?> map);

    int getColor(String str);

    Map<?, ?> getMap();

    Point getOffset(String str);

    Rect getRect(String str);

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: DrawOption.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ int getColor$default(ITransferValue iTransferValue, String str, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    str = TtmlNode.ATTR_TTS_COLOR;
                }
                return iTransferValue.getColor(str);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getColor");
        }

        public static int getColor(ITransferValue iTransferValue, String str) {
            Intrinsics.checkNotNullParameter(iTransferValue, "this");
            Intrinsics.checkNotNullParameter(str, "key");
            Object obj = iTransferValue.getMap().get(TtmlNode.ATTR_TTS_COLOR);
            if (obj != null) {
                Map map = (Map) obj;
                Object obj2 = map.get("r");
                if (obj2 != null) {
                    int intValue = ((Integer) obj2).intValue();
                    Object obj3 = map.get("g");
                    if (obj3 != null) {
                        int intValue2 = ((Integer) obj3).intValue();
                        Object obj4 = map.get("b");
                        if (obj4 != null) {
                            int intValue3 = ((Integer) obj4).intValue();
                            Object obj5 = map.get(ai.at);
                            if (obj5 != null) {
                                return Color.argb(((Integer) obj5).intValue(), intValue, intValue2, intValue3);
                            }
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
        }

        public static Point getOffset(ITransferValue iTransferValue, String str) {
            Intrinsics.checkNotNullParameter(iTransferValue, "this");
            Intrinsics.checkNotNullParameter(str, "key");
            Object obj = iTransferValue.getMap().get(str);
            if (obj != null) {
                return iTransferValue.convertMapToOffset((Map) obj);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
        }

        public static Point convertMapToOffset(ITransferValue iTransferValue, Map<?, ?> map) {
            Intrinsics.checkNotNullParameter(iTransferValue, "this");
            Intrinsics.checkNotNullParameter(map, "map");
            Object obj = map.get("x");
            if (obj != null) {
                int intValue = ((Integer) obj).intValue();
                Object obj2 = map.get("y");
                if (obj2 != null) {
                    return new Point(intValue, ((Integer) obj2).intValue());
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }

        public static Rect getRect(ITransferValue iTransferValue, String str) {
            Intrinsics.checkNotNullParameter(iTransferValue, "this");
            Intrinsics.checkNotNullParameter(str, "key");
            Object obj = iTransferValue.getMap().get(str);
            if (obj != null) {
                Map map = (Map) obj;
                Object obj2 = map.get(TtmlNode.LEFT);
                if (obj2 != null) {
                    int intValue = ((Integer) obj2).intValue();
                    Object obj3 = map.get("top");
                    if (obj3 != null) {
                        int intValue2 = ((Integer) obj3).intValue();
                        Object obj4 = map.get("width");
                        if (obj4 != null) {
                            int intValue3 = ((Integer) obj4).intValue() + intValue;
                            Object obj5 = map.get("height");
                            if (obj5 != null) {
                                return new Rect(intValue, intValue2, intValue3, ((Integer) obj5).intValue() + intValue2);
                            }
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<*, *>");
        }
    }
}
