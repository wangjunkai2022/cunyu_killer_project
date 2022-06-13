package com.ferfalk.simplesearchview.utils;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: DimensUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0018\u0010\u0003\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\t"}, d2 = {"Lcom/ferfalk/simplesearchview/utils/DimensUtils;", "", "()V", "convertDpToPx", "", "dp", c.R, "Landroid/content/Context;", "", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class DimensUtils {
    public static final DimensUtils INSTANCE = new DimensUtils();

    private DimensUtils() {
    }

    @JvmStatic
    public static final int convertDpToPx(int i, Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        Resources resources = context.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
        return MathKt.roundToInt(TypedValue.applyDimension(1, (float) i, resources.getDisplayMetrics()));
    }

    @JvmStatic
    public static final float convertDpToPx(float f, Context context) {
        Intrinsics.checkNotNullParameter(context, c.R);
        Resources resources = context.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
        return TypedValue.applyDimension(1, f, resources.getDisplayMetrics());
    }
}
