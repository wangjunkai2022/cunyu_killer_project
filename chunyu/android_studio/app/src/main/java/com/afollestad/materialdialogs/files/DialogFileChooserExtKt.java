package com.afollestad.materialdialogs.files;

import android.content.Context;
import android.text.InputFilter;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.WhichButton;
import com.afollestad.materialdialogs.actions.DialogActionExtKt;
import com.afollestad.materialdialogs.customview.DialogCustomViewExtKt;
import com.afollestad.materialdialogs.files.util.FilesUtilExtKt;
import com.afollestad.materialdialogs.input.DialogInputExtKt;
import com.afollestad.materialdialogs.internal.list.DialogRecyclerView;
import com.afollestad.materialdialogs.utils.MDUtil;
import com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback;
import com.umeng.analytics.pro.c;
import java.io.File;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: DialogFileChooserExt.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a«\u0001\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u001a\b\u0002\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0002`\f2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000b2\n\b\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u000f2>\b\u0002\u0010\u0012\u001a8\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0013j\u0002`\u0018H\u0007¢\u0006\u0002\u0010\u0019\u001a\u000e\u0010\u001a\u001a\u0004\u0018\u00010\b*\u00020\u0004H\u0007\u001a3\u0010\u001b\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u001c\u001a\u00020\b2\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00010\u001eH\u0000¢\u0006\u0002\u0010\u001f*n\u0010 \"4\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001324\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0013*&\u0010!\"\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¨\u0006\""}, d2 = {"blockReservedCharacters", "", "Landroid/widget/EditText;", "fileChooser", "Lcom/afollestad/materialdialogs/MaterialDialog;", c.R, "Landroid/content/Context;", "initialDirectory", "Ljava/io/File;", "filter", "Lkotlin/Function1;", "", "Lcom/afollestad/materialdialogs/files/FileFilter;", "waitForPositiveButton", "emptyTextRes", "", "allowFolderCreation", "folderCreationLabel", "selection", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "dialog", "file", "Lcom/afollestad/materialdialogs/files/FileCallback;", "(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;", "selectedFile", "showNewFolderCreator", "parent", "onCreation", "Lkotlin/Function0;", "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/io/File;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V", "FileCallback", "FileFilter", "files"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes3.dex */
public final class DialogFileChooserExtKt {
    public static final File selectedFile(MaterialDialog materialDialog) {
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$selectedFile");
        View findViewById = DialogCustomViewExtKt.getCustomView(materialDialog).findViewById(R.id.list);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "customView.findViewById(R.id.list)");
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

    public static final MaterialDialog fileChooser(MaterialDialog materialDialog, Context context, File file, Function1<? super File, Boolean> function1, boolean z, int i, boolean z2, Integer num, Function2<? super MaterialDialog, ? super File, Unit> function2) {
        Function1<? super File, Boolean> function12;
        DialogFileChooserExtKt$fileChooser$4 dialogFileChooserExtKt$fileChooser$4;
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$fileChooser");
        Intrinsics.checkParameterIsNotNull(context, c.R);
        if (z2) {
            if (FilesUtilExtKt.hasWriteStoragePermission(materialDialog)) {
                if (function1 == null) {
                    dialogFileChooserExtKt$fileChooser$4 = DialogFileChooserExtKt$fileChooser$2.INSTANCE;
                    function12 = dialogFileChooserExtKt$fileChooser$4;
                }
                function12 = function1;
            } else {
                throw new IllegalStateException("You must have the WRITE_EXTERNAL_STORAGE permission first.".toString());
            }
        } else if (FilesUtilExtKt.hasReadStoragePermission(materialDialog)) {
            if (function1 == null) {
                dialogFileChooserExtKt$fileChooser$4 = DialogFileChooserExtKt$fileChooser$4.INSTANCE;
                function12 = dialogFileChooserExtKt$fileChooser$4;
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
            FileChooserAdapter fileChooserAdapter = new FileChooserAdapter(materialDialog, file, z, textView, false, function12, z2, num, function2);
            dialogRecyclerView.setAdapter(fileChooserAdapter);
            if (z && function2 != null) {
                DialogActionExtKt.setActionButtonEnabled(materialDialog, WhichButton.POSITIVE, false);
                MaterialDialog.positiveButton$default(materialDialog, null, null, new Function1<MaterialDialog, Unit>(fileChooserAdapter, function2) { // from class: com.afollestad.materialdialogs.files.DialogFileChooserExtKt$fileChooser$6
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

    public static final void showNewFolderCreator(MaterialDialog materialDialog, File file, Integer num, Function0<Unit> function0) {
        Integer num2;
        Intrinsics.checkParameterIsNotNull(materialDialog, "$this$showNewFolderCreator");
        Intrinsics.checkParameterIsNotNull(file, "parent");
        Intrinsics.checkParameterIsNotNull(function0, "onCreation");
        MaterialDialog materialDialog2 = new MaterialDialog(materialDialog.getWindowContext(), null, 2, null);
        if (num != null) {
            num2 = num;
        } else {
            num2 = Integer.valueOf(R.string.files_new_folder);
        }
        MaterialDialog.title$default(materialDialog2, num2, null, 2, null);
        DialogInputExtKt.input$default(materialDialog2, null, Integer.valueOf(R.string.files_new_folder_hint), null, null, 0, null, false, false, new Function2<MaterialDialog, CharSequence, Unit>(num, file, function0) { // from class: com.afollestad.materialdialogs.files.DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1
            final /* synthetic */ Integer $folderCreationLabel$inlined;
            final /* synthetic */ Function0 $onCreation$inlined;
            final /* synthetic */ File $parent$inlined;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$folderCreationLabel$inlined = r1;
                this.$parent$inlined = r2;
                this.$onCreation$inlined = r3;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog3, CharSequence charSequence) {
                invoke2(materialDialog3, charSequence);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(MaterialDialog materialDialog3, CharSequence charSequence) {
                Intrinsics.checkParameterIsNotNull(materialDialog3, "<anonymous parameter 0>");
                Intrinsics.checkParameterIsNotNull(charSequence, "input");
                File file2 = this.$parent$inlined;
                String obj = charSequence.toString();
                if (obj != null) {
                    new File(file2, StringsKt.trim((CharSequence) obj).toString()).mkdir();
                    this.$onCreation$inlined.invoke();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
            }
        }, ITPNativePlayerMessageCallback.INFO_LONG1_DRM_FATAL_ERROR, null);
        materialDialog2.show();
        blockReservedCharacters(DialogInputExtKt.getInputField(materialDialog2));
    }

    private static final void blockReservedCharacters(EditText editText) {
        editText.setFilters((InputFilter[]) ArraysKt.plus((DialogFileChooserExtKt$blockReservedCharacters$1[]) editText.getFilters(), DialogFileChooserExtKt$blockReservedCharacters$1.INSTANCE));
    }
}
