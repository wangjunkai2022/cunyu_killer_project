package com.afollestad.materialdialogs.utils;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import com.afollestad.materialdialogs.MaterialDialog;
import com.facebook.common.util.UriUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Views.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0002\u0010\u0006\u001a-\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0002\u0010\b\u001a\u001b\u0010\t\u001a\u00020\n\"\b\b\u0000\u0010\u0001*\u00020\u000b*\u0002H\u0001H\u0000¢\u0006\u0002\u0010\f\u001a\u001b\u0010\r\u001a\u00020\n\"\b\b\u0000\u0010\u0001*\u00020\u000b*\u0002H\u0001H\u0000¢\u0006\u0002\u0010\f\u001a\u001b\u0010\u000e\u001a\u00020\n\"\b\b\u0000\u0010\u0001*\u00020\u000b*\u0002H\u0001H\u0000¢\u0006\u0002\u0010\f\u001a\f\u0010\u000f\u001a\u00020\u0010*\u00020\u0011H\u0000\u001a\f\u0010\u0012\u001a\u00020\u0010*\u00020\u0011H\u0000¨\u0006\u0013"}, d2 = {"inflate", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/view/ViewGroup;", UriUtil.LOCAL_RESOURCE_SCHEME, "", "root", "(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;)Ljava/lang/Object;", "Lcom/afollestad/materialdialogs/MaterialDialog;", "(Lcom/afollestad/materialdialogs/MaterialDialog;ILandroid/view/ViewGroup;)Ljava/lang/Object;", "isNotVisible", "", "Landroid/view/View;", "(Landroid/view/View;)Z", "isRtl", "isVisible", "setGravityEndCompat", "", "Landroid/widget/TextView;", "setGravityStartCompat", "core"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class ViewsKt {
    public static /* synthetic */ Object inflate$default(MaterialDialog materialDialog, int i, ViewGroup viewGroup, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            viewGroup = null;
        }
        return inflate(materialDialog, i, viewGroup);
    }

    public static final <T> T inflate(MaterialDialog materialDialog, int i, ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$inflate");
        return (T) LayoutInflater.from(materialDialog.getWindowContext()).inflate(i, viewGroup, false);
    }

    public static /* synthetic */ Object inflate$default(ViewGroup viewGroup, int i, ViewGroup viewGroup2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            viewGroup2 = viewGroup;
        }
        return inflate(viewGroup, i, viewGroup2);
    }

    public static final <T> T inflate(ViewGroup viewGroup, int i, ViewGroup viewGroup2) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "$this$inflate");
        return (T) LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup2, false);
    }

    public static final <T extends View> boolean isVisible(T t) {
        Intrinsics.checkParameterIsNotNull(t, "$this$isVisible");
        if (t instanceof Button) {
            Button button = (Button) t;
            if (button.getVisibility() != 0) {
                return false;
            }
            CharSequence text = button.getText();
            Intrinsics.checkExpressionValueIsNotNull(text, "this.text");
            if (!(!StringsKt.isBlank(StringsKt.trim(text)))) {
                return false;
            }
        } else if (t.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public static final <T extends View> boolean isNotVisible(T t) {
        Intrinsics.checkParameterIsNotNull(t, "$this$isNotVisible");
        return !isVisible(t);
    }

    public static final <T extends View> boolean isRtl(T t) {
        Intrinsics.checkParameterIsNotNull(t, "$this$isRtl");
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        Resources resources = t.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        Configuration configuration = resources.getConfiguration();
        Intrinsics.checkExpressionValueIsNotNull(configuration, "resources.configuration");
        return configuration.getLayoutDirection() == 1;
    }

    public static final void setGravityStartCompat(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "$this$setGravityStartCompat");
        if (Build.VERSION.SDK_INT >= 17) {
            textView.setTextAlignment(5);
        }
        textView.setGravity(8388627);
    }

    public static final void setGravityEndCompat(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "$this$setGravityEndCompat");
        if (Build.VERSION.SDK_INT >= 17) {
            textView.setTextAlignment(6);
        }
        textView.setGravity(8388629);
    }
}
