package com.afollestad.materialdialogs.customview;

import android.view.View;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.utils.MDUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DialogCustomViewExt.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u001aO\u0010\u0002\u001a\u00020\u0003*\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\t¢\u0006\u0002\u0010\r\u001a\f\u0010\u000e\u001a\u00020\u0007*\u00020\u0003H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"CUSTOM_VIEW_NO_VERTICAL_PADDING", "", "customView", "Lcom/afollestad/materialdialogs/MaterialDialog;", "viewRes", "", "view", "Landroid/view/View;", "scrollable", "", "noVerticalPadding", "horizontalPadding", "dialogWrapContent", "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Landroid/view/View;ZZZZ)Lcom/afollestad/materialdialogs/MaterialDialog;", "getCustomView", "core"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes3.dex */
public final class DialogCustomViewExtKt {
    public static final String CUSTOM_VIEW_NO_VERTICAL_PADDING = "md.custom_view_no_vertical_padding";

    public static final View getCustomView(MaterialDialog materialDialog) {
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$getCustomView");
        View customView = materialDialog.getView().getContentLayout().getCustomView();
        if (customView != null) {
            return customView;
        }
        throw new IllegalStateException("You have not setup this dialog as a customView dialog.".toString());
    }

    public static /* synthetic */ MaterialDialog customView$default(MaterialDialog materialDialog, Integer num, View view, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            view = null;
        }
        boolean z5 = false;
        boolean z6 = (i & 4) != 0 ? false : z;
        boolean z7 = (i & 8) != 0 ? false : z2;
        boolean z8 = (i & 16) != 0 ? false : z3;
        if ((i & 32) == 0) {
            z5 = z4;
        }
        return customView(materialDialog, num, view, z6, z7, z8, z5);
    }

    public static final MaterialDialog customView(MaterialDialog materialDialog, Integer num, View view, boolean z, boolean z2, boolean z3, boolean z4) {
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$customView");
        MDUtil.INSTANCE.assertOneSet("customView", view, num);
        materialDialog.getConfig().put(CUSTOM_VIEW_NO_VERTICAL_PADDING, Boolean.valueOf(z2));
        if (z4) {
            MaterialDialog.maxWidth$default(materialDialog, null, 0, 1, null);
        }
        View addCustomView = materialDialog.getView().getContentLayout().addCustomView(num, view, z, z2, z3);
        if (z4) {
            MDUtil.INSTANCE.waitForWidth(addCustomView, new Function1<View, Unit>(z4) { // from class: com.afollestad.materialdialogs.customview.DialogCustomViewExtKt$customView$$inlined$also$lambda$1
                final /* synthetic */ boolean $dialogWrapContent$inlined;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.$dialogWrapContent$inlined = r2;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view2) {
                    invoke2(view2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(View view2) {
                    Intrinsics.checkParameterIsNotNull(view2, "$receiver");
                    MaterialDialog.maxWidth$default(MaterialDialog.this, null, Integer.valueOf(view2.getMeasuredWidth()), 1, null);
                }
            });
        }
        return materialDialog;
    }
}
