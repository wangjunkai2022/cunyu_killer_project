.class Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;
.super Ljava/lang/Object;
.source "ImagePickerDelegate.java"

# interfaces
.implements Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/ImagePickerDelegate;-><init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/ImageResizer;Lio/flutter/plugins/imagepicker/ImagePickerCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFullImagePath(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    new-instance v2, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2$1;

    invoke-direct {v2, p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2$1;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;)V

    .line 155
    invoke-static {v0, v1, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public resolveFileProviderUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 1

    .line 150
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
