package com.afollestad.materialdialogs.files;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DialogFileChooserExt.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Ljava/io/File;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class DialogFileChooserExtKt$fileChooser$2 extends Lambda implements Function1<File, Boolean> {
    public static final DialogFileChooserExtKt$fileChooser$2 INSTANCE = new DialogFileChooserExtKt$fileChooser$2();

    DialogFileChooserExtKt$fileChooser$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(File file) {
        return Boolean.valueOf(invoke2(file));
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final boolean invoke2(File file) {
        Intrinsics.checkParameterIsNotNull(file, "it");
        return !file.isHidden() && file.canWrite();
    }
}
