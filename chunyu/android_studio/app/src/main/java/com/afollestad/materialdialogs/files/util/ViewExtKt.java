package com.afollestad.materialdialogs.files.util;

import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewExt.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a#\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0000¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"setVisible", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/view/View;", "visible", "", "(Landroid/view/View;Z)V", "files"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes3.dex */
public final class ViewExtKt {
    public static final <T extends View> void setVisible(T t, boolean z) {
        Intrinsics.checkParameterIsNotNull(t, "$this$setVisible");
        t.setVisibility(z ? 0 : 4);
    }
}
