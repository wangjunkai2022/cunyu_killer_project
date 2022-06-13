package com.afollestad.materialdialogs.files;

import android.content.Context;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.WhichButton;
import com.afollestad.materialdialogs.actions.DialogActionExtKt;
import com.afollestad.materialdialogs.files.util.FilesUtilExtKt;
import com.afollestad.materialdialogs.files.util.ViewExtKt;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* compiled from: FileChooserAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
@DebugMetadata(c = "com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1", f = "FileChooserAdapter.kt", i = {0}, l = {141}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
/* loaded from: classes4.dex */
public final class FileChooserAdapter$switchDirectory$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ File $directory;
    Object L$0;
    int label;
    private CoroutineScope p$;
    final /* synthetic */ FileChooserAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileChooserAdapter$switchDirectory$1(FileChooserAdapter fileChooserAdapter, File file, Continuation continuation) {
        super(2, continuation);
        this.this$0 = fileChooserAdapter;
        this.$directory = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        FileChooserAdapter$switchDirectory$1 fileChooserAdapter$switchDirectory$1 = new FileChooserAdapter$switchDirectory$1(this.this$0, this.$directory, continuation);
        fileChooserAdapter$switchDirectory$1.p$ = (CoroutineScope) obj;
        return fileChooserAdapter$switchDirectory$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FileChooserAdapter$switchDirectory$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = this.p$;
            if (this.this$0.onlyFolders) {
                this.this$0.setSelectedFile(this.$directory);
                DialogActionExtKt.setActionButtonEnabled(this.this$0.dialog, WhichButton.POSITIVE, true);
            }
            this.this$0.currentFolder = this.$directory;
            MaterialDialog materialDialog = this.this$0.dialog;
            File file = this.$directory;
            Context context = this.this$0.dialog.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "dialog.context");
            MaterialDialog.title$default(materialDialog, null, FilesUtilExtKt.friendlyName(file, context), 1, null);
            this.L$0 = coroutineScope;
            this.label = 1;
            obj = BuildersKt.withContext(Dispatchers.getIO(), new FileChooserAdapter$switchDirectory$1$result$1(this, null), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        List list = (List) obj;
        FileChooserAdapter fileChooserAdapter = this.this$0;
        ViewExtKt.setVisible(fileChooserAdapter.emptyView, list.isEmpty());
        fileChooserAdapter.contents = list;
        this.this$0.notifyDataSetChanged();
        return Unit.INSTANCE;
    }
}
