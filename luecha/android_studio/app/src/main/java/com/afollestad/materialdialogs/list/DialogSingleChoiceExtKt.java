package com.afollestad.materialdialogs.list;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.WhichButton;
import com.afollestad.materialdialogs.actions.DialogActionExtKt;
import com.afollestad.materialdialogs.internal.list.DialogAdapter;
import com.afollestad.materialdialogs.internal.list.SingleChoiceDialogAdapter;
import com.afollestad.materialdialogs.utils.MDUtil;
import com.facebook.common.util.UriUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DialogSingleChoiceExt.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a¸\u0001\u0010\u0007\u001a\u00020\u0002*\u00020\u00022\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00062\b\b\u0003\u0010\u0010\u001a\u00020\u00042\b\b\u0003\u0010\u0011\u001a\u00020\u00042S\b\u0002\u0010\u0012\u001aM\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0013j\u0002`\u0018H\u0007¢\u0006\u0002\u0010\u0019\u001a\u0012\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u001b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u008e\u0001\u0010\u001c\u001a\u00020\u0002*\u00020\u00022\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2S\b\u0002\u0010\u0012\u001aM\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0013j\u0002`\u0018¢\u0006\u0002\u0010\u001d¨\u0006\u001e"}, d2 = {"checkItem", "", "Lcom/afollestad/materialdialogs/MaterialDialog;", "index", "", "isItemChecked", "", "listItemsSingleChoice", UriUtil.LOCAL_RESOURCE_SCHEME, "items", "", "", "disabledIndices", "", "initialSelection", "waitForPositiveButton", "checkedColor", "uncheckedColor", "selection", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "dialog", "text", "Lcom/afollestad/materialdialogs/list/SingleChoiceListener;", "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/util/List;[IIZIILkotlin/jvm/functions/Function3;)Lcom/afollestad/materialdialogs/MaterialDialog;", "toggleItemChecked", "uncheckItem", "updateListItemsSingleChoice", "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/util/List;[ILkotlin/jvm/functions/Function3;)Lcom/afollestad/materialdialogs/MaterialDialog;", "core"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class DialogSingleChoiceExtKt {
    public static /* synthetic */ MaterialDialog listItemsSingleChoice$default(MaterialDialog materialDialog, Integer num, List list, int[] iArr, int i, boolean z, int i2, int i3, Function3 function3, int i4, Object obj) {
        Integer num2 = (i4 & 1) != 0 ? null : num;
        List list2 = (i4 & 2) != 0 ? null : list;
        int[] iArr2 = (i4 & 4) != 0 ? null : iArr;
        int i5 = -1;
        int i6 = (i4 & 8) != 0 ? -1 : i;
        boolean z2 = (i4 & 16) != 0 ? true : z;
        int i7 = (i4 & 32) != 0 ? -1 : i2;
        if ((i4 & 64) == 0) {
            i5 = i3;
        }
        return listItemsSingleChoice(materialDialog, num2, list2, iArr2, i6, z2, i7, i5, (i4 & 128) != 0 ? null : function3);
    }

    public static final MaterialDialog listItemsSingleChoice(MaterialDialog materialDialog, Integer num, List<? extends CharSequence> list, int[] iArr, int i, boolean z, int i2, int i3, Function3<? super MaterialDialog, ? super Integer, ? super CharSequence, Unit> function3) {
        List<? extends CharSequence> list2;
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$listItemsSingleChoice");
        MDUtil.INSTANCE.assertOneSet("listItemsSingleChoice", list, num);
        if (list != null) {
            list2 = list;
        } else {
            list2 = ArraysKt.toList(MDUtil.INSTANCE.getStringArray(materialDialog.getWindowContext(), num));
        }
        boolean z2 = false;
        if (!(i >= -1 || i < list2.size())) {
            throw new IllegalArgumentException(("Initial selection " + i + " must be between -1 and the size of your items array " + list2.size()).toString());
        } else if (DialogListExtKt.getListAdapter(materialDialog) != null) {
            Log.w("MaterialDialogs", "Prefer calling updateListItemsSingleChoice(...) over listItemsSingleChoice(...) again.");
            return updateListItemsSingleChoice(materialDialog, num, list, iArr, function3);
        } else {
            WhichButton whichButton = WhichButton.POSITIVE;
            if (i > -1) {
                z2 = true;
            }
            DialogActionExtKt.setActionButtonEnabled(materialDialog, whichButton, z2);
            return DialogListExtKt.customListAdapter$default(materialDialog, new SingleChoiceDialogAdapter(materialDialog, list2, iArr, i, z, function3, i2, i3), null, 2, null);
        }
    }

    public static /* synthetic */ MaterialDialog updateListItemsSingleChoice$default(MaterialDialog materialDialog, Integer num, List list, int[] iArr, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            list = null;
        }
        if ((i & 4) != 0) {
            iArr = null;
        }
        if ((i & 8) != 0) {
            function3 = null;
        }
        return updateListItemsSingleChoice(materialDialog, num, list, iArr, function3);
    }

    public static final MaterialDialog updateListItemsSingleChoice(MaterialDialog materialDialog, Integer num, List<? extends CharSequence> list, int[] iArr, Function3<? super MaterialDialog, ? super Integer, ? super CharSequence, Unit> function3) {
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$updateListItemsSingleChoice");
        MDUtil.INSTANCE.assertOneSet("updateListItemsSingleChoice", list, num);
        if (list == null) {
            list = ArraysKt.toList(MDUtil.INSTANCE.getStringArray(materialDialog.getWindowContext(), num));
        }
        RecyclerView.Adapter<?> listAdapter = DialogListExtKt.getListAdapter(materialDialog);
        if (listAdapter instanceof SingleChoiceDialogAdapter) {
            SingleChoiceDialogAdapter singleChoiceDialogAdapter = (SingleChoiceDialogAdapter) listAdapter;
            singleChoiceDialogAdapter.replaceItems2(list, function3);
            if (iArr != null) {
                singleChoiceDialogAdapter.disableItems(iArr);
            }
            return materialDialog;
        }
        throw new IllegalStateException("updateListItemsSingleChoice(...) can't be used before you've created a single choice list dialog.".toString());
    }

    public static final void checkItem(MaterialDialog materialDialog, int i) {
        String str;
        Class<?> cls;
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$checkItem");
        RecyclerView.Adapter<?> listAdapter = DialogListExtKt.getListAdapter(materialDialog);
        if (listAdapter instanceof DialogAdapter) {
            ((DialogAdapter) listAdapter).checkItems(new int[]{i});
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't check item on adapter: ");
        if (listAdapter == null || (cls = listAdapter.getClass()) == null || (str = cls.getName()) == null) {
            str = "null";
        }
        sb.append(str);
        throw new UnsupportedOperationException(sb.toString());
    }

    public static final void uncheckItem(MaterialDialog materialDialog, int i) {
        String str;
        Class<?> cls;
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$uncheckItem");
        RecyclerView.Adapter<?> listAdapter = DialogListExtKt.getListAdapter(materialDialog);
        if (listAdapter instanceof DialogAdapter) {
            ((DialogAdapter) listAdapter).uncheckItems(new int[]{i});
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't uncheck item on adapter: ");
        if (listAdapter == null || (cls = listAdapter.getClass()) == null || (str = cls.getName()) == null) {
            str = "null";
        }
        sb.append(str);
        throw new UnsupportedOperationException(sb.toString());
    }

    public static final void toggleItemChecked(MaterialDialog materialDialog, int i) {
        String str;
        Class<?> cls;
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$toggleItemChecked");
        RecyclerView.Adapter<?> listAdapter = DialogListExtKt.getListAdapter(materialDialog);
        if (listAdapter instanceof DialogAdapter) {
            ((DialogAdapter) listAdapter).toggleItems(new int[]{i});
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't toggle checked item on adapter: ");
        if (listAdapter == null || (cls = listAdapter.getClass()) == null || (str = cls.getName()) == null) {
            str = "null";
        }
        sb.append(str);
        throw new UnsupportedOperationException(sb.toString());
    }

    public static final boolean isItemChecked(MaterialDialog materialDialog, int i) {
        String str;
        Class<?> cls;
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$isItemChecked");
        RecyclerView.Adapter<?> listAdapter = DialogListExtKt.getListAdapter(materialDialog);
        if (listAdapter instanceof DialogAdapter) {
            return ((DialogAdapter) listAdapter).isItemChecked(i);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't check if item is checked on adapter: ");
        if (listAdapter == null || (cls = listAdapter.getClass()) == null || (str = cls.getName()) == null) {
            str = "null";
        }
        sb.append(str);
        throw new UnsupportedOperationException(sb.toString());
    }
}
