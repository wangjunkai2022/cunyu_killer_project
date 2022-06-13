.class public final Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt;
.super Ljava/lang/Object;
.source "DialogFileChooserExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogFileChooserExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogFileChooserExt.kt\ncom/afollestad/materialdialogs/files/DialogFileChooserExtKt\n+ 2 MaterialDialog.kt\ncom/afollestad/materialdialogs/MaterialDialog\n*L\n1#1,164:1\n374#2,3:165\n*E\n*S KotlinDebug\n*F\n+ 1 DialogFileChooserExt.kt\ncom/afollestad/materialdialogs/files/DialogFileChooserExtKt\n*L\n139#1,3:165\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a\u00ab\u0001\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u001a\u0008\u0002\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0002`\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b2\n\u0008\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u000f2>\u0008\u0002\u0010\u0012\u001a8\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0013j\u0002`\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a\u000e\u0010\u001a\u001a\u0004\u0018\u00010\u0008*\u00020\u0004H\u0007\u001a3\u0010\u001b\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00082\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001eH\u0000\u00a2\u0006\u0002\u0010\u001f*n\u0010 \"4\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001324\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0013*&\u0010!\"\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u00a8\u0006\""
    }
    d2 = {
        "blockReservedCharacters",
        "",
        "Landroid/widget/EditText;",
        "fileChooser",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "context",
        "Landroid/content/Context;",
        "initialDirectory",
        "Ljava/io/File;",
        "filter",
        "Lkotlin/Function1;",
        "",
        "Lcom/afollestad/materialdialogs/files/FileFilter;",
        "waitForPositiveButton",
        "emptyTextRes",
        "",
        "allowFolderCreation",
        "folderCreationLabel",
        "selection",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "dialog",
        "file",
        "Lcom/afollestad/materialdialogs/files/FileCallback;",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;",
        "selectedFile",
        "showNewFolderCreator",
        "parent",
        "onCreation",
        "Lkotlin/Function0;",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/io/File;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V",
        "FileCallback",
        "FileFilter",
        "files"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private static final blockReservedCharacters(Landroid/widget/EditText;)V
    .locals 2

    .line 151
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    sget-object v1, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$blockReservedCharacters$1;->INSTANCE:Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$blockReservedCharacters$1;

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static final fileChooser(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afollestad/materialdialogs/MaterialDialog;",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;ZIZ",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/afollestad/materialdialogs/MaterialDialog;",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/afollestad/materialdialogs/MaterialDialog;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p8

    const-string v0, "$this$fileChooser"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_1

    .line 78
    invoke-static/range {p0 .. p0}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->hasWriteStoragePermission(Lcom/afollestad/materialdialogs/MaterialDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    .line 82
    sget-object v0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$2;->INSTANCE:Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must have the WRITE_EXTERNAL_STORAGE permission first."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 85
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->hasReadStoragePermission(Lcom/afollestad/materialdialogs/MaterialDialog;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p3, :cond_2

    .line 89
    sget-object v0, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$4;->INSTANCE:Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$4;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_2
    move-object/from16 v9, p3

    :goto_1
    const/4 v12, 0x0

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 97
    sget v0, Lcom/afollestad/materialdialogs/files/R$layout;->md_file_chooser_base:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x36

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->customView$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Landroid/view/View;ZZZZILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 98
    sget-object v0, Lcom/afollestad/materialdialogs/WhichButton;->POSITIVE:Lcom/afollestad/materialdialogs/WhichButton;

    invoke-static {v10, v0, v12}, Lcom/afollestad/materialdialogs/actions/DialogActionExtKt;->setActionButtonEnabled(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/WhichButton;Z)V

    .line 100
    invoke-static/range {p0 .. p0}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->getCustomView(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/View;

    move-result-object v0

    .line 101
    sget v1, Lcom/afollestad/materialdialogs/files/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "customView.findViewById(R.id.list)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v1

    check-cast v13, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;

    .line 102
    sget v1, Lcom/afollestad/materialdialogs/files/R$id;->empty_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "customView.findViewById(R.id.empty_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    move/from16 v0, p5

    .line 103
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 104
    sget-object v2, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v4

    sget v0, Lcom/afollestad/materialdialogs/files/R$attr;->md_color_content:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v3, v14

    invoke-static/range {v2 .. v8}, Lcom/afollestad/materialdialogs/utils/MDUtil;->maybeSetTextColor$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 106
    invoke-virtual {v13, v10}, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;->attach(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 107
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13, v0}, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    new-instance v15, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object v4, v14

    move-object v6, v9

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/io/File;ZLandroid/widget/TextView;ZLkotlin/jvm/functions/Function1;ZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 119
    move-object v0, v15

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v13, v0}, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p4, :cond_4

    if-eqz v11, :cond_4

    .line 122
    sget-object v0, Lcom/afollestad/materialdialogs/WhichButton;->POSITIVE:Lcom/afollestad/materialdialogs/WhichButton;

    invoke-static {v10, v0, v12}, Lcom/afollestad/materialdialogs/actions/DialogActionExtKt;->setActionButtonEnabled(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/WhichButton;Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    new-instance v2, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;

    invoke-direct {v2, v10, v15, v11}, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$fileChooser$6;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/files/FileChooserAdapter;Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    :cond_4
    return-object v10

    .line 93
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The initial directory is null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 85
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must have the READ_EXTERNAL_STORAGE permission first."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static synthetic fileChooser$default(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p1}, Lcom/afollestad/materialdialogs/files/util/ContextExtKt;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 68
    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    .line 70
    sget v5, Lcom/afollestad/materialdialogs/files/R$string;->files_default_empty_text:I

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 72
    move-object v7, v3

    check-cast v7, Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object v7, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 73
    move-object v0, v3

    check-cast v0, Lkotlin/jvm/functions/Function2;

    goto :goto_6

    :cond_6
    move-object/from16 v0, p8

    :goto_6
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v2

    move p6, v4

    move p7, v5

    move/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v0

    invoke-static/range {p2 .. p10}, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt;->fileChooser(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedFile(Lcom/afollestad/materialdialogs/MaterialDialog;)Ljava/io/File;
    .locals 2

    const-string v0, "$this$selectedFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->getCustomView(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/View;

    move-result-object p0

    .line 49
    sget v0, Lcom/afollestad/materialdialogs/files/R$id;->list:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "customView.findViewById(R.id.list)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;

    .line 50
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->getSelectedFile()Ljava/io/File;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static final showNewFolderCreator(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/io/File;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afollestad/materialdialogs/MaterialDialog;",
            "Ljava/io/File;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "$this$showNewFolderCreator"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "parent"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onCreation"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v3, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v1, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 140
    :cond_0
    sget v4, Lcom/afollestad/materialdialogs/files/R$string;->files_new_folder:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4, v5, v6, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->title$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v5, 0x0

    .line 141
    sget v4, Lcom/afollestad/materialdialogs/files/R$string;->files_new_folder_hint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v4, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1;

    invoke-direct {v4, v1, v0, v2}, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt$showNewFolderCreator$$inlined$show$lambda$1;-><init>(Ljava/lang/Integer;Ljava/io/File;Lkotlin/jvm/functions/Function0;)V

    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/16 v14, 0xfd

    const/4 v15, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v15}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->input$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;ILjava/lang/Integer;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 166
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 146
    invoke-static {v3}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->getInputField(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/widget/EditText;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/afollestad/materialdialogs/files/DialogFileChooserExtKt;->blockReservedCharacters(Landroid/widget/EditText;)V

    return-void
.end method
