package com.afollestad.materialdialogs.files;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.WhichButton;
import com.afollestad.materialdialogs.actions.DialogActionExtKt;
import com.afollestad.materialdialogs.customview.DialogCustomViewExtKt;
import com.afollestad.materialdialogs.files.util.FilesUtilExtKt;
import com.afollestad.materialdialogs.internal.list.DialogRecyclerView;
import com.afollestad.materialdialogs.utils.MDUtil;
import com.umeng.analytics.pro.c;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DialogFolderChooserExt.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a«\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u001a\b\u0002\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0002`\t2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\b2\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\f2>\b\u0002\u0010\u000f\u001a8\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0010j\u0002`\u0016H\u0007¢\u0006\u0002\u0010\u0017\u001a\u000e\u0010\u0018\u001a\u0004\u0018\u00010\u0005*\u00020\u0001H\u0007¨\u0006\u0019"}, d2 = {"folderChooser", "Lcom/afollestad/materialdialogs/MaterialDialog;", c.R, "Landroid/content/Context;", "initialDirectory", "Ljava/io/File;", "filter", "Lkotlin/Function1;", "", "Lcom/afollestad/materialdialogs/files/FileFilter;", "waitForPositiveButton", "emptyTextRes", "", "allowFolderCreation", "folderCreationLabel", "selection", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "dialog", "file", "", "Lcom/afollestad/materialdialogs/files/FileCallback;", "(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;", "selectedFolder", "files"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes3.dex */
public final class DialogFolderChooserExtKt {
    public static final File selectedFolder(MaterialDialog materialDialog) {
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$selectedFolder");
        View findViewById = DialogCustomViewExtKt.getCustomView(materialDialog).findViewById(R.id.list);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "getCustomView().findViewById(R.id.list)");
        RecyclerView.Adapter adapter = ((DialogRecyclerView) findViewById).getAdapter();
        if (!(adapter instanceof FileChooserAdapter)) {
            adapter = null;
        }
        FileChooserAdapter fileChooserAdapter = (FileChooserAdapter) adapter;
        if (fileChooserAdapter != null) {
            return fileChooserAdapter.getSelectedFile();
        }
        return null;
    }

    public static final MaterialDialog folderChooser(MaterialDialog materialDialog, Context context, File file, Function1<? super File, Boolean> function1, boolean z, int i, boolean z2, Integer num, Function2<? super MaterialDialog, ? super File, Unit> function2) {
        Function1<? super File, Boolean> function12;
        DialogFolderChooserExtKt$folderChooser$4 dialogFolderChooserExtKt$folderChooser$4;
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$folderChooser");
        Intrinsics.checkParameterIsNotNull(context, c.R);
        if (z2) {
            if (FilesUtilExtKt.hasWriteStoragePermission(materialDialog)) {
                if (function1 == null) {
                    dialogFolderChooserExtKt$folderChooser$4 = DialogFolderChooserExtKt$folderChooser$2.INSTANCE;
                    function12 = dialogFolderChooserExtKt$folderChooser$4;
                }
                function12 = function1;
            } else {
                throw new IllegalStateException("You must have the WRITE_EXTERNAL_STORAGE permission first.".toString());
            }
        } else if (FilesUtilExtKt.hasReadStoragePermission(materialDialog)) {
            if (function1 == null) {
                dialogFolderChooserExtKt$folderChooser$4 = DialogFolderChooserExtKt$folderChooser$4.INSTANCE;
                function12 = dialogFolderChooserExtKt$folderChooser$4;
            }
            function12 = function1;
        } else {
            throw new IllegalStateException("You must have the READ_EXTERNAL_STORAGE permission first.".toString());
        }
        if (file != null) {
            DialogCustomViewExtKt.customView$default(materialDialog, Integer.valueOf(R.layout.md_file_chooser_base), null, false, true, false, false, 54, null);
            DialogActionExtKt.setActionButtonEnabled(materialDialog, WhichButton.POSITIVE, false);
            View customView = DialogCustomViewExtKt.getCustomView(materialDialog);
            View findViewById = customView.findViewById(R.id.list);
            Intrinsics.checkExpressionValueIsNotNull(findViewById, "customView.findViewById(R.id.list)");
            DialogRecyclerView dialogRecyclerView = (DialogRecyclerView) findViewById;
            View findViewById2 = customView.findViewById(R.id.empty_text);
            Intrinsics.checkExpressionValueIsNotNull(findViewById2, "customView.findViewById(R.id.empty_text)");
            TextView textView = (TextView) findViewById2;
            textView.setText(i);
            MDUtil.maybeSetTextColor$default(MDUtil.INSTANCE, textView, materialDialog.getWindowContext(), Integer.valueOf(R.attr.md_color_content), null, 4, null);
            dialogRecyclerView.attach(materialDialog);
            dialogRecyclerView.setLayoutManager(new LinearLayoutManager(materialDialog.getWindowContext()));
            FileChooserAdapter fileChooserAdapter = new FileChooserAdapter(materialDialog, file, z, textView, true, function12, z2, num, function2);
            dialogRecyclerView.setAdapter(fileChooserAdapter);
            if (z && function2 != null) {
                MaterialDialog.positiveButton$default(materialDialog, null, null, new Function1<MaterialDialog, Unit>(fileChooserAdapter, function2) { // from class: com.afollestad.materialdialogs.files.DialogFolderChooserExtKt$folderChooser$6
                    final /* synthetic */ FileChooserAdapter $adapter;
                    final /* synthetic */ Function2 $selection;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.$adapter = r2;
                        this.$selection = r3;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog2) {
                        invoke2(materialDialog2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(MaterialDialog materialDialog2) {
                        Intrinsics.checkParameterIsNotNull(materialDialog2, "it");
                        File selectedFile = this.$adapter.getSelectedFile();
                        if (selectedFile != null) {
                            this.$selection.invoke(MaterialDialog.this, selectedFile);
                        }
                    }
                }, 3, null);
            }
            return materialDialog;
        }
        throw new IllegalStateException("The initial directory is null.".toString());
    }
}
