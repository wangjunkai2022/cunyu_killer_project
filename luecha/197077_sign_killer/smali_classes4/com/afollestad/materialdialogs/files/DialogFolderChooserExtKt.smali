.class public final Lcom/afollestad/materialdialogs/files/DialogFolderChooserExtKt;
.super Ljava/lang/Object;
.source "DialogFolderChooserExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogFolderChooserExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogFolderChooserExt.kt\ncom/afollestad/materialdialogs/files/DialogFolderChooserExtKt\n*L\n1#1,125:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u00ab\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u001a\u0008\u0002\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007j\u0002`\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000c2>\u0008\u0002\u0010\u000f\u001a8\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0010j\u0002`\u0016H\u0007\u00a2\u0006\u0002\u0010\u0017\u001a\u000e\u0010\u0018\u001a\u0004\u0018\u00010\u0005*\u00020\u0001H\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "folderChooser",
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
        "",
        "Lcom/afollestad/materialdialogs/files/FileCallback;",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;",
        "selectedFolder",
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
.method public static final folderChooser(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 15
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

    move-object v10, p0

    move-object/from16 v11, p8

    const-string v0, "$this$folderChooser"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_1

    .line 70
    invoke-static {p0}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->hasWriteStoragePermission(Lcom/afollestad/materialdialogs/MaterialDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    .line 74
    sget-object v0, Lcom/afollestad/materialdialogs/files/DialogFolderChooserExtKt$folderChooser$2;->INSTANCE:Lcom/afollestad/materialdialogs/files/DialogFolderChooserExtKt$folderChooser$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must have the WRITE_EXTERNAL_STORAGE permission first."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 77
    :cond_1
    invoke-static {p0}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->hasReadStoragePermission(Lcom/afollestad/materialdialogs/MaterialDialog;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p3, :cond_2

    .line 81
    sget-object v0, Lcom/afollestad/materialdialogs/files/DialogFolderChooserExtKt$folderChooser$4;->INSTANCE:Lcom/afollestad/materialdialogs/files/DialogFolderChooserExtKt$folderChooser$4;

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

    .line 89
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

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->customView$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Landroid/view/View;ZZZZILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 90
    sget-object v0, Lcom/afollestad/materialdialogs/WhichButton;->POSITIVE:Lcom/afollestad/materialdialogs/WhichButton;

    invoke-static {p0, v0, v12}, Lcom/afollestad/materialdialogs/actions/DialogActionExtKt;->setActionButtonEnabled(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/WhichButton;Z)V

    .line 92
    invoke-static {p0}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->getCustomView(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/View;

    move-result-object v0

    .line 93
    sget v1, Lcom/afollestad/materialdialogs/files/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "customView.findViewById(R.id.list)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;

    .line 94
    sget v1, Lcom/afollestad/materialdialogs/files/R$id;->empty_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "customView.findViewById(R.id.empty_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    move/from16 v0, p5

    .line 95
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 96
    sget-object v2, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v4

    sget v0, Lcom/afollestad/materialdialogs/files/R$attr;->md_color_content:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v3, v13

    invoke-static/range {v2 .. v8}, Lcom/afollestad/materialdialogs/utils/MDUtil;->maybeSetTextColor$default(Lcom/afollestad/materialdialogs/utils/MDUtil;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 98
    invoke-virtual {v12, p0}, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;->attach(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 99
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12, v0}, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v14, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    const/4 v5, 0x1

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object v4, v13

    move-object v6, v9

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/io/File;ZLandroid/widget/TextView;ZLkotlin/jvm/functions/Function1;ZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 112
    move-object v0, v14

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v12, v0}, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p4, :cond_4

    if-eqz v11, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    new-instance v2, Lcom/afollestad/materialdialogs/files/DialogFolderChooserExtKt$folderChooser$6;

    invoke-direct {v2, p0, v14, v11}, Lcom/afollestad/materialdialogs/files/DialogFolderChooserExtKt$folderChooser$6;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/files/FileChooserAdapter;Lkotlin/jvm/functions/Function2;)V

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

    .line 85
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The initial directory is null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 77
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must have the READ_EXTERNAL_STORAGE permission first."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static synthetic folderChooser$default(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 59
    invoke-static {p1}, Lcom/afollestad/materialdialogs/files/util/ContextExtKt;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 60
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

    .line 62
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

    .line 64
    move-object v7, v3

    check-cast v7, Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object v7, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 65
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

    invoke-static/range {p2 .. p10}, Lcom/afollestad/materialdialogs/files/DialogFolderChooserExtKt;->folderChooser(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;ZIZLjava/lang/Integer;Lkotlin/jvm/functions/Function2;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedFolder(Lcom/afollestad/materialdialogs/MaterialDialog;)Ljava/io/File;
    .locals 2

    const-string v0, "$this$selectedFolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->getCustomView(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/afollestad/materialdialogs/files/R$id;->list:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "getCustomView().findViewById(R.id.list)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;

    .line 42
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
