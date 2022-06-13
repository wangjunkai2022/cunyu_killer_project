package top.kikt.flutter_image_editor.util;

import android.graphics.PorterDuff;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.umeng.analytics.pro.ai;
import io.flutter.plugin.common.MethodCall;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import top.kikt.flutter_image_editor.core.BitmapWrapper;
import top.kikt.flutter_image_editor.option.AddTextOpt;
import top.kikt.flutter_image_editor.option.ClipOption;
import top.kikt.flutter_image_editor.option.ColorOption;
import top.kikt.flutter_image_editor.option.FlipOption;
import top.kikt.flutter_image_editor.option.FormatOption;
import top.kikt.flutter_image_editor.option.MixImageOpt;
import top.kikt.flutter_image_editor.option.Option;
import top.kikt.flutter_image_editor.option.RotateOption;
import top.kikt.flutter_image_editor.option.ScaleOption;
import top.kikt.flutter_image_editor.option.Text;
import top.kikt.flutter_image_editor.option.draw.DrawOption;

/* compiled from: ConvertUtils.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0018\u0010\r\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0010H\u0002J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0012\u0010\u001c\u001a\u00020\u001d2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u0014\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001H\u0002J\u0015\u0010#\u001a\u0002H$\"\u0004\b\u0000\u0010$*\u00020\u0001¢\u0006\u0002\u0010%¨\u0006&"}, d2 = {"Ltop/kikt/flutter_image_editor/util/ConvertUtils;", "", "()V", "convertMapOption", "", "Ltop/kikt/flutter_image_editor/option/Option;", "optionList", "bitmapWrapper", "Ltop/kikt/flutter_image_editor/core/BitmapWrapper;", "convertToPorterDuffMode", "Landroid/graphics/PorterDuff$Mode;", "type", "", "convertToText", "Ltop/kikt/flutter_image_editor/option/Text;", ai.aC, "", "getClipOption", "Ltop/kikt/flutter_image_editor/option/ClipOption;", "optionMap", "getColorOption", "Ltop/kikt/flutter_image_editor/option/ColorOption;", "getFlipOption", "Ltop/kikt/flutter_image_editor/option/FlipOption;", "getFormatOption", "Ltop/kikt/flutter_image_editor/option/FormatOption;", "call", "Lio/flutter/plugin/common/MethodCall;", "getRotateOption", "Ltop/kikt/flutter_image_editor/option/RotateOption;", "getScaleOption", "Ltop/kikt/flutter_image_editor/option/ScaleOption;", "getTextOption", "Ltop/kikt/flutter_image_editor/option/AddTextOpt;", "valueMap", "asValue", ExifInterface.GPS_DIRECTION_TRUE, "(Ljava/lang/Object;)Ljava/lang/Object;", "image_editor_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ConvertUtils {
    public static final ConvertUtils INSTANCE = new ConvertUtils();

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T asValue(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        return obj;
    }

    private ConvertUtils() {
    }

    public final FormatOption getFormatOption(MethodCall methodCall) {
        Intrinsics.checkNotNullParameter(methodCall, "call");
        Object argument = methodCall.argument("fmt");
        Intrinsics.checkNotNull(argument);
        Intrinsics.checkNotNullExpressionValue(argument, "call.argument<Map<*, *>>(\"fmt\")!!");
        return new FormatOption((Map) argument);
    }

    public final List<Option> convertMapOption(List<? extends Object> list, BitmapWrapper bitmapWrapper) {
        Intrinsics.checkNotNullParameter(list, "optionList");
        Intrinsics.checkNotNullParameter(bitmapWrapper, "bitmapWrapper");
        ArrayList arrayList = new ArrayList();
        if (bitmapWrapper.getDegree() != 0) {
            arrayList.add(new RotateOption(bitmapWrapper.getDegree()));
        }
        if (!bitmapWrapper.getFlipOption().canIgnore()) {
            arrayList.add(bitmapWrapper.getFlipOption());
        }
        for (Object obj : list) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                Object obj2 = map.get("value");
                if (obj2 instanceof Map) {
                    Object obj3 = map.get("type");
                    if (Intrinsics.areEqual(obj3, "flip")) {
                        arrayList.add(getFlipOption(obj2));
                    } else if (Intrinsics.areEqual(obj3, "clip")) {
                        arrayList.add(getClipOption(obj2));
                    } else if (Intrinsics.areEqual(obj3, "rotate")) {
                        arrayList.add(getRotateOption(obj2));
                    } else if (Intrinsics.areEqual(obj3, TtmlNode.ATTR_TTS_COLOR)) {
                        arrayList.add(getColorOption(obj2));
                    } else if (Intrinsics.areEqual(obj3, "scale")) {
                        ScaleOption scaleOption = getScaleOption(obj2);
                        if (scaleOption != null) {
                            arrayList.add(scaleOption);
                        }
                    } else if (Intrinsics.areEqual(obj3, "add_text")) {
                        AddTextOpt textOption = getTextOption(obj2);
                        if (textOption != null) {
                            arrayList.add(textOption);
                        }
                    } else if (Intrinsics.areEqual(obj3, "mix_image")) {
                        arrayList.add(new MixImageOpt((Map) obj2));
                    } else if (Intrinsics.areEqual(obj3, "draw")) {
                        arrayList.add(new DrawOption((Map) obj2));
                    }
                }
            }
        }
        return arrayList;
    }

    private final AddTextOpt getTextOption(Object obj) {
        if (!(obj instanceof Map)) {
            return null;
        }
        Object obj2 = ((Map) obj).get("texts");
        Intrinsics.checkNotNull(obj2);
        List list = (List) asValue(obj2);
        if (list.isEmpty()) {
            return null;
        }
        AddTextOpt addTextOpt = new AddTextOpt();
        for (Object obj3 : list) {
            if (obj3 instanceof Map) {
                addTextOpt.addText(convertToText((Map) obj3));
            }
        }
        return addTextOpt;
    }

    private final Text convertToText(Map<?, ?> map) {
        Object obj = map.get("text");
        Intrinsics.checkNotNull(obj);
        String str = (String) asValue(obj);
        Object obj2 = map.get("x");
        Intrinsics.checkNotNull(obj2);
        int intValue = ((Number) asValue(obj2)).intValue();
        Object obj3 = map.get("y");
        Intrinsics.checkNotNull(obj3);
        int intValue2 = ((Number) asValue(obj3)).intValue();
        Object obj4 = map.get("size");
        Intrinsics.checkNotNull(obj4);
        int intValue3 = ((Number) asValue(obj4)).intValue();
        Object obj5 = map.get("r");
        Intrinsics.checkNotNull(obj5);
        int intValue4 = ((Number) asValue(obj5)).intValue();
        Object obj6 = map.get("g");
        Intrinsics.checkNotNull(obj6);
        int intValue5 = ((Number) asValue(obj6)).intValue();
        Object obj7 = map.get("b");
        Intrinsics.checkNotNull(obj7);
        int intValue6 = ((Number) asValue(obj7)).intValue();
        Object obj8 = map.get(ai.at);
        Intrinsics.checkNotNull(obj8);
        int intValue7 = ((Number) asValue(obj8)).intValue();
        Object obj9 = map.get("fontName");
        Intrinsics.checkNotNull(obj9);
        return new Text(str, intValue, intValue2, intValue3, intValue4, intValue5, intValue6, intValue7, (String) asValue(obj9));
    }

    private final ScaleOption getScaleOption(Object obj) {
        if (!(obj instanceof Map)) {
            return null;
        }
        Map map = (Map) obj;
        Object obj2 = map.get("width");
        if (obj2 != null) {
            int intValue = ((Integer) obj2).intValue();
            Object obj3 = map.get("height");
            if (obj3 != null) {
                return new ScaleOption(intValue, ((Integer) obj3).intValue());
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
    }

    private final ColorOption getColorOption(Object obj) {
        if (!(obj instanceof Map)) {
            return ColorOption.Companion.getSrc();
        }
        Object obj2 = ((Map) obj).get("matrix");
        if (obj2 != null) {
            List list = (List) obj2;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (Object obj3 : list) {
                arrayList.add(Float.valueOf(obj3 instanceof Double ? (float) ((Number) obj3).doubleValue() : 0.0f));
            }
            return new ColorOption(CollectionsKt.toFloatArray(arrayList));
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<*>");
    }

    private final RotateOption getRotateOption(Object obj) {
        if (!(obj instanceof Map)) {
            return new RotateOption(0);
        }
        Object obj2 = ((Map) obj).get("degree");
        if (obj2 != null) {
            return new RotateOption(((Integer) obj2).intValue());
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
    }

    private final ClipOption getClipOption(Object obj) {
        if (!(obj instanceof Map)) {
            return new ClipOption(0, 0, -1, -1);
        }
        Map map = (Map) obj;
        Object obj2 = map.get("width");
        if (obj2 != null) {
            int intValue = ((Number) obj2).intValue();
            Object obj3 = map.get("height");
            if (obj3 != null) {
                int intValue2 = ((Number) obj3).intValue();
                Object obj4 = map.get("x");
                if (obj4 != null) {
                    int intValue3 = ((Number) obj4).intValue();
                    Object obj5 = map.get("y");
                    if (obj5 != null) {
                        return new ClipOption(intValue3, ((Number) obj5).intValue(), intValue, intValue2);
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Number");
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Number");
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Number");
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Number");
    }

    private final FlipOption getFlipOption(Object obj) {
        if (!(obj instanceof Map)) {
            return new FlipOption(false, false, 3, null);
        }
        Map map = (Map) obj;
        Object obj2 = map.get("h");
        if (obj2 != null) {
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            Object obj3 = map.get(ai.aC);
            if (obj3 != null) {
                return new FlipOption(booleanValue, ((Boolean) obj3).booleanValue());
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
    }

    public final PorterDuff.Mode convertToPorterDuffMode(String str) {
        Intrinsics.checkNotNullParameter(str, "type");
        switch (str.hashCode()) {
            case -1954086600:
                if (str.equals("srcATop")) {
                    return PorterDuff.Mode.SRC_ATOP;
                }
                break;
            case -1953637160:
                if (str.equals("srcOver")) {
                    return PorterDuff.Mode.SRC_OVER;
                }
                break;
            case -1338968417:
                if (str.equals("darken")) {
                    return PorterDuff.Mode.DARKEN;
                }
                break;
            case -1322311863:
                if (str.equals("dstOut")) {
                    return PorterDuff.Mode.DST_OUT;
                }
                break;
            case -1091287984:
                if (str.equals("overlay")) {
                    return PorterDuff.Mode.OVERLAY;
                }
                break;
            case -907689876:
                if (str.equals("screen")) {
                    return PorterDuff.Mode.SCREEN;
                }
                break;
            case -894304566:
                if (str.equals("srcOut")) {
                    return PorterDuff.Mode.SRC_OUT;
                }
                break;
            case 99781:
                if (str.equals("dst")) {
                    return PorterDuff.Mode.DST;
                }
                break;
            case 114148:
                if (str.equals("src")) {
                    return PorterDuff.Mode.SRC;
                }
                break;
            case 118875:
                if (str.equals("xor")) {
                    return PorterDuff.Mode.XOR;
                }
                break;
            case 94746189:
                if (str.equals("clear")) {
                    return PorterDuff.Mode.CLEAR;
                }
                break;
            case 95891914:
                if (str.equals("dstIn")) {
                    return PorterDuff.Mode.DST_IN;
                }
                break;
            case 109698601:
                if (str.equals("srcIn")) {
                    return PorterDuff.Mode.SRC_IN;
                }
                break;
            case 170546239:
                if (str.equals("lighten")) {
                    return PorterDuff.Mode.LIGHTEN;
                }
                break;
            case 653829668:
                if (str.equals("multiply")) {
                    return PorterDuff.Mode.MULTIPLY;
                }
                break;
            case 1957556377:
                if (str.equals("dstATop")) {
                    return PorterDuff.Mode.DST_ATOP;
                }
                break;
            case 1958005817:
                if (str.equals("dstOver")) {
                    return PorterDuff.Mode.DST_OVER;
                }
                break;
        }
        return PorterDuff.Mode.SRC_OVER;
    }
}
