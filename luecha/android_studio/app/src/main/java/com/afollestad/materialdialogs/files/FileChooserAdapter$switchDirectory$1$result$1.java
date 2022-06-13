package com.afollestad.materialdialogs.files;

import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileChooserAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001*\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "Ljava/io/File;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
@DebugMetadata(c = "com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1$result$1", f = "FileChooserAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class FileChooserAdapter$switchDirectory$1$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends File>>, Object> {
    int label;
    private CoroutineScope p$;
    final /* synthetic */ FileChooserAdapter$switchDirectory$1 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileChooserAdapter$switchDirectory$1$result$1(FileChooserAdapter$switchDirectory$1 fileChooserAdapter$switchDirectory$1, Continuation continuation) {
        super(2, continuation);
        this.this$0 = fileChooserAdapter$switchDirectory$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        FileChooserAdapter$switchDirectory$1$result$1 fileChooserAdapter$switchDirectory$1$result$1 = new FileChooserAdapter$switchDirectory$1$result$1(this.this$0, continuation);
        fileChooserAdapter$switchDirectory$1$result$1.p$ = (CoroutineScope) obj;
        return fileChooserAdapter$switchDirectory$1$result$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends File>> continuation) {
        return ((FileChooserAdapter$switchDirectory$1$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0065 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ad A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r8.label
            if (r0 != 0) goto L_0x00cc
            kotlin.ResultKt.throwOnFailure(r9)
            com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1 r9 = r8.this$0
            java.io.File r9 = r9.$directory
            java.io.File[] r9 = r9.listFiles()
            r0 = 0
            if (r9 == 0) goto L_0x0016
            goto L_0x0018
        L_0x0016:
            java.io.File[] r9 = new java.io.File[r0]
        L_0x0018:
            com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1 r1 = r8.this$0
            com.afollestad.materialdialogs.files.FileChooserAdapter r1 = r1.this$0
            boolean r1 = com.afollestad.materialdialogs.files.FileChooserAdapter.access$getOnlyFolders$p(r1)
            java.lang.String r2 = "it"
            r3 = 1
            if (r1 == 0) goto L_0x0078
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Collection r1 = (java.util.Collection) r1
            int r4 = r9.length
            r5 = 0
        L_0x002e:
            if (r5 >= r4) goto L_0x0068
            r6 = r9[r5]
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r2)
            boolean r7 = r6.isDirectory()
            if (r7 == 0) goto L_0x0057
            com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1 r7 = r8.this$0
            com.afollestad.materialdialogs.files.FileChooserAdapter r7 = r7.this$0
            kotlin.jvm.functions.Function1 r7 = com.afollestad.materialdialogs.files.FileChooserAdapter.access$getFilter$p(r7)
            if (r7 == 0) goto L_0x0052
            java.lang.Object r7 = r7.invoke(r6)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            if (r7 == 0) goto L_0x0052
            boolean r7 = r7.booleanValue()
            goto L_0x0053
        L_0x0052:
            r7 = 1
        L_0x0053:
            if (r7 == 0) goto L_0x0057
            r7 = 1
            goto L_0x0058
        L_0x0057:
            r7 = 0
        L_0x0058:
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r7)
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L_0x0065
            r1.add(r6)
        L_0x0065:
            int r5 = r5 + 1
            goto L_0x002e
        L_0x0068:
            java.util.List r1 = (java.util.List) r1
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1$result$1$invokeSuspend$$inlined$sortedBy$1 r9 = new com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1$result$1$invokeSuspend$$inlined$sortedBy$1
            r9.<init>()
            java.util.Comparator r9 = (java.util.Comparator) r9
            java.util.List r9 = kotlin.collections.CollectionsKt.sortedWith(r1, r9)
            goto L_0x00cb
        L_0x0078:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Collection r1 = (java.util.Collection) r1
            int r4 = r9.length
            r5 = 0
        L_0x0081:
            if (r5 >= r4) goto L_0x00b0
            r6 = r9[r5]
            com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1 r7 = r8.this$0
            com.afollestad.materialdialogs.files.FileChooserAdapter r7 = r7.this$0
            kotlin.jvm.functions.Function1 r7 = com.afollestad.materialdialogs.files.FileChooserAdapter.access$getFilter$p(r7)
            if (r7 == 0) goto L_0x009f
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r2)
            java.lang.Object r7 = r7.invoke(r6)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            if (r7 == 0) goto L_0x009f
            boolean r7 = r7.booleanValue()
            goto L_0x00a0
        L_0x009f:
            r7 = 1
        L_0x00a0:
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r7)
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L_0x00ad
            r1.add(r6)
        L_0x00ad:
            int r5 = r5 + 1
            goto L_0x0081
        L_0x00b0:
            java.util.List r1 = (java.util.List) r1
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            r9 = 2
            kotlin.jvm.functions.Function1[] r9 = new kotlin.jvm.functions.Function1[r9]
            com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1$result$1$4 r2 = com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1$result$1.AnonymousClass4.INSTANCE
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            r9[r0] = r2
            com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1$result$1$5 r0 = com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1$result$1.AnonymousClass5.INSTANCE
            kotlin.jvm.functions.Function1 r0 = (kotlin.jvm.functions.Function1) r0
            r9[r3] = r0
            java.util.Comparator r9 = kotlin.comparisons.ComparisonsKt.compareBy(r9)
            java.util.List r9 = kotlin.collections.CollectionsKt.sortedWith(r1, r9)
        L_0x00cb:
            return r9
        L_0x00cc:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.afollestad.materialdialogs.files.FileChooserAdapter$switchDirectory$1$result$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
