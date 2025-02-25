.class public final Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;
.super Ljava/lang/Object;
.source "FilesUtilExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilesUtilExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilesUtilExt.kt\ncom/afollestad/materialdialogs/files/util/FilesUtilExtKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,95:1\n3271#2:96\n3688#2,2:97\n*E\n*S KotlinDebug\n*F\n+ 1 FilesUtilExt.kt\ncom/afollestad/materialdialogs/files/util/FilesUtilExtKt\n*L\n57#1:96\n57#1,2:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a8\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007j\u0002`\u0008H\u0000\u001a\u001c\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a6\u0010\u000c\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007j\u0002`\u0008H\u0000\u001a\u0014\u0010\r\u001a\u00020\u0005*\u00020\u00032\u0006\u0010\u000e\u001a\u00020\nH\u0000\u001a\u000c\u0010\u000f\u001a\u00020\u0005*\u00020\u0010H\u0000\u001a\u000c\u0010\u0011\u001a\u00020\u0005*\u00020\u0010H\u0000\u001a\u0014\u0010\u0012\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u000c\u0010\u0013\u001a\u00020\u0005*\u00020\u0001H\u0000\u001a\u0014\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "betterParent",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "writeable",
        "",
        "filter",
        "Lkotlin/Function1;",
        "Lcom/afollestad/materialdialogs/files/FileFilter;",
        "friendlyName",
        "",
        "kotlin.jvm.PlatformType",
        "hasParent",
        "hasPermission",
        "permission",
        "hasReadStoragePermission",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "hasWriteStoragePermission",
        "isExternalStorage",
        "isRoot",
        "jumpOverEmulated",
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
.method public static final betterParent(Ljava/io/File;Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const-string v0, "$this$betterParent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0, p1}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->isExternalStorage(Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p1}, Lcom/afollestad/materialdialogs/files/util/ContextExtKt;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_a

    if-eqz p2, :cond_2

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    return-object v1

    .line 57
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 97
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_7

    aget-object v3, p1, v2

    if-eqz p3, :cond_5

    const-string v4, "it"

    .line 57
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_6

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    :cond_7
    check-cast p2, Ljava/util/List;

    goto :goto_3

    .line 57
    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 58
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    return-object v1

    :cond_9
    return-object p0

    :cond_a
    return-object v1
.end method

.method public static final friendlyName(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$friendlyName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {p0, p1}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->isExternalStorage(Ljava/io/File;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "External Storage"

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->isRoot(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Root"

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final hasParent(Ljava/io/File;Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "$this$hasParent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->betterParent(Ljava/io/File;Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "$this$hasPermission"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final hasReadStoragePermission(Lcom/afollestad/materialdialogs/MaterialDialog;)Z
    .locals 1

    const-string v0, "$this$hasReadStoragePermission"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final hasWriteStoragePermission(Lcom/afollestad/materialdialogs/MaterialDialog;)Z
    .locals 1

    const-string v0, "$this$hasWriteStoragePermission"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindowContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/files/util/FilesUtilExtKt;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isExternalStorage(Ljava/io/File;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "$this$isExternalStorage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/afollestad/materialdialogs/files/util/ContextExtKt;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isRoot(Ljava/io/File;)Z
    .locals 1

    const-string v0, "$this$isRoot"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final jumpOverEmulated(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "$this$jumpOverEmulated"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/afollestad/materialdialogs/files/util/ContextExtKt;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method
