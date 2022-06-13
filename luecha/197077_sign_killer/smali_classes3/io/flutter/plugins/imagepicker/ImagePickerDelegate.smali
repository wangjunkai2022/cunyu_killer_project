.class public Lio/flutter/plugins/imagepicker/ImagePickerDelegate;
.super Ljava/lang/Object;
.source "ImagePickerDelegate.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;,
        Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;,
        Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;
    }
.end annotation


# static fields
.field static final REQUEST_CAMERA_IMAGE_PERMISSION:I = 0x929

.field static final REQUEST_CAMERA_VIDEO_PERMISSION:I = 0x933

.field static final REQUEST_CODE_CHOOSE_IMAGE_FROM_GALLERY:I = 0x926

.field static final REQUEST_CODE_CHOOSE_MULTI_IMAGE_FROM_GALLERY:I = 0x92a

.field static final REQUEST_CODE_CHOOSE_VIDEO_FROM_GALLERY:I = 0x930

.field static final REQUEST_CODE_TAKE_IMAGE_WITH_CAMERA:I = 0x927

.field static final REQUEST_CODE_TAKE_VIDEO_WITH_CAMERA:I = 0x931


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

.field private cameraDevice:Lio/flutter/plugins/imagepicker/CameraDevice;

.field final externalFilesDirectory:Ljava/io/File;

.field final fileProviderName:Ljava/lang/String;

.field private final fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

.field private final fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

.field private final imageResizer:Lio/flutter/plugins/imagepicker/ImageResizer;

.field private methodCall:Lio/flutter/plugin/common/MethodCall;

.field private pendingCameraMediaUri:Landroid/net/Uri;

.field private pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/ImageResizer;Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugins/imagepicker/ImagePickerCache;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;Lio/flutter/plugins/imagepicker/FileUtils;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 186
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->externalFilesDirectory:Ljava/io/File;

    .line 187
    iput-object p3, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->imageResizer:Lio/flutter/plugins/imagepicker/ImageResizer;

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".flutter.image_provider"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileProviderName:Ljava/lang/String;

    .line 189
    iput-object p4, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 190
    iput-object p5, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    .line 191
    iput-object p7, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    .line 192
    iput-object p8, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    .line 193
    iput-object p9, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

    .line 194
    iput-object p6, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/ImageResizer;Lio/flutter/plugins/imagepicker/ImagePickerCache;)V
    .locals 10

    .line 123
    new-instance v7, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$1;

    invoke-direct {v7, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$1;-><init>(Landroid/app/Activity;)V

    new-instance v8, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;

    invoke-direct {v8, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;-><init>(Landroid/app/Activity;)V

    new-instance v9, Lio/flutter/plugins/imagepicker/FileUtils;

    invoke-direct {v9}, Lio/flutter/plugins/imagepicker/FileUtils;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;-><init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/ImageResizer;Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugins/imagepicker/ImagePickerCache;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;Lio/flutter/plugins/imagepicker/FileUtils;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Ljava/lang/String;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleImageResult(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleVideoResult(Ljava/lang/String;)V

    return-void
.end method

.method private clearMethodCallAndResult()V
    .locals 1

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    .line 659
    iput-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method

.method private createTemporaryWritableFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 401
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->externalFilesDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 406
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->externalFilesDirectory:Ljava/io/File;

    invoke-static {v0, p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 408
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createTemporaryWritableImageFile()Ljava/io/File;
    .locals 1

    const-string v0, ".jpg"

    .line 393
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->createTemporaryWritableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private createTemporaryWritableVideoFile()Ljava/io/File;
    .locals 1

    const-string v0, ".mp4"

    .line 397
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->createTemporaryWritableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private finishWithAlreadyActiveError(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    const-string v0, "already_active"

    const-string v1, "Image picker is already active"

    const/4 v2, 0x0

    .line 645
    invoke-interface {p1, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private finishWithError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 649
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveResult(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 653
    :cond_0
    invoke-interface {v0, p1, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->clearMethodCallAndResult()V

    return-void
.end method

.method private finishWithListSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveResult(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 640
    :cond_0
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 641
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->clearMethodCallAndResult()V

    return-void
.end method

.method private finishWithSuccess(Ljava/lang/String;)V
    .locals 2

    .line 625
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 627
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveResult(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 631
    :cond_0
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 632
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->clearMethodCallAndResult()V

    return-void
.end method

.method private getResizedImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 598
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    const-string v1, "maxWidth"

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 599
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    const-string v2, "maxHeight"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 600
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    const-string v3, "imageQuality"

    invoke-virtual {v2, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 602
    iget-object v3, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->imageResizer:Lio/flutter/plugins/imagepicker/ImageResizer;

    invoke-virtual {v3, p1, v0, v1, v2}, Lio/flutter/plugins/imagepicker/ImageResizer;->resizeImageIfNeeded(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private grantUriPermissions(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 3

    .line 415
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 417
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 419
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 420
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p2, v2}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleCaptureImageResult(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 527
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    .line 528
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-virtual {v0}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->retrievePendingCameraMediaUriPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$3;

    invoke-direct {v1, p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$3;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;)V

    .line 527
    invoke-interface {p1, v0, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;->getFullImagePath(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 541
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private handleCaptureVideoResult(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 546
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    .line 547
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-virtual {v0}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->retrievePendingCameraMediaUriPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$4;

    invoke-direct {v1, p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$4;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;)V

    .line 546
    invoke-interface {p1, v0, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;->getFullImagePath(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 560
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private handleChooseImageResult(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 487
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/flutter/plugins/imagepicker/FileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 488
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleImageResult(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 493
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private handleChooseMultiImageResult(ILandroid/content/Intent;)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 498
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 500
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 501
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

    iget-object v3, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/flutter/plugins/imagepicker/FileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lio/flutter/plugins/imagepicker/FileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_1
    invoke-direct {p0, p1, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleMultiImageResult(Ljava/util/ArrayList;Z)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 511
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private handleChooseVideoResult(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 516
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/flutter/plugins/imagepicker/FileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleVideoResult(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 522
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private handleImageResult(Ljava/lang/String;Z)V
    .locals 2

    .line 585
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    if-eqz v0, :cond_1

    .line 586
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->getResizedImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 589
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 591
    :cond_0
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_1
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleMultiImageResult(Ljava/util/ArrayList;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    if-eqz v0, :cond_2

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 567
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 568
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->getResizedImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 572
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 574
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 576
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    :cond_1
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithListSuccess(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 580
    :cond_2
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithListSuccess(Ljava/util/ArrayList;)V

    :goto_1
    return-void
.end method

.method private handleVideoResult(Ljava/lang/String;)V
    .locals 0

    .line 606
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private launchMultiPickImageFromGalleryIntent()V
    .locals 3

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 336
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v1, "image/*"

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    const/16 v2, 0x92a

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchPickImageFromGalleryIntent()V
    .locals 3

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    const/16 v2, 0x926

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchPickVideoFromGalleryIntent()V
    .locals 3

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    const/16 v2, 0x930

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchTakeImageWithCameraIntent()V
    .locals 4

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cameraDevice:Lio/flutter/plugins/imagepicker/CameraDevice;

    sget-object v2, Lio/flutter/plugins/imagepicker/CameraDevice;->FRONT:Lio/flutter/plugins/imagepicker/CameraDevice;

    if-ne v1, v2, :cond_0

    .line 368
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->useFrontCamera(Landroid/content/Intent;)V

    .line 371
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->createTemporaryWritableImageFile()Ljava/io/File;

    move-result-object v1

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    .line 374
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    iget-object v3, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileProviderName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;->resolveFileProviderUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "output"

    .line 375
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 376
    invoke-direct {p0, v0, v2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->grantUriPermissions(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 379
    :try_start_0
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    const/16 v3, 0x927

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 384
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 386
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    const-string v0, "no_available_camera"

    const-string v1, "No cameras available for taking pictures."

    .line 388
    invoke-direct {p0, v0, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private launchTakeVideoWithCameraIntent()V
    .locals 4

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    if-eqz v1, :cond_0

    const-string v2, "maxDuration"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "android.intent.extra.durationLimit"

    .line 281
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cameraDevice:Lio/flutter/plugins/imagepicker/CameraDevice;

    sget-object v2, Lio/flutter/plugins/imagepicker/CameraDevice;->FRONT:Lio/flutter/plugins/imagepicker/CameraDevice;

    if-ne v1, v2, :cond_1

    .line 284
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->useFrontCamera(Landroid/content/Intent;)V

    .line 287
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->createTemporaryWritableVideoFile()Ljava/io/File;

    move-result-object v1

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    .line 290
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    iget-object v3, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileProviderName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;->resolveFileProviderUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "output"

    .line 291
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 292
    invoke-direct {p0, v0, v2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->grantUriPermissions(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 295
    :try_start_0
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    const/16 v3, 0x931

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    const-string v0, "no_available_camera"

    const-string v1, "No cameras available for taking pictures."

    .line 304
    invoke-direct {p0, v0, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private needRequestCameraPermission()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 362
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->needRequestCameraPermission()Z

    move-result v0

    return v0
.end method

.method private setPendingMethodCallAndResult(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Z
    .locals 1

    .line 611
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 615
    :cond_0
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    .line 616
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 619
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.method private useFrontCamera(Landroid/content/Intent;)V
    .locals 4

    .line 663
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "android.intent.extras.CAMERA_FACING"

    const/16 v3, 0x16

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    .line 664
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    .line 667
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 670
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public chooseImageFromGallery(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingMethodCallAndResult(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 310
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 314
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchPickImageFromGalleryIntent()V

    return-void
.end method

.method public chooseMultiImageFromGallery(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingMethodCallAndResult(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 319
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 323
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchMultiPickImageFromGalleryIntent()V

    return-void
.end method

.method public chooseVideoFromGallery(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingMethodCallAndResult(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 247
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 251
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchPickVideoFromGalleryIntent()V

    return-void
.end method

.method getCameraDevice()Lio/flutter/plugins/imagepicker/CameraDevice;
    .locals 1

    .line 202
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cameraDevice:Lio/flutter/plugins/imagepicker/CameraDevice;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x926

    if-eq p1, v0, :cond_4

    const/16 v0, 0x927

    if-eq p1, v0, :cond_3

    const/16 v0, 0x92a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x930

    if-eq p1, v0, :cond_1

    const/16 p3, 0x931

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 476
    :cond_0
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleCaptureVideoResult(I)V

    goto :goto_0

    .line 473
    :cond_1
    invoke-direct {p0, p2, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleChooseVideoResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 467
    :cond_2
    invoke-direct {p0, p2, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleChooseMultiImageResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 470
    :cond_3
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleCaptureImageResult(I)V

    goto :goto_0

    .line 464
    :cond_4
    invoke-direct {p0, p2, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleChooseImageResult(ILandroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3

    .line 430
    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    aget p2, p3, v1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/16 p3, 0x933

    const/16 v2, 0x929

    if-eq p1, v2, :cond_2

    if-eq p1, p3, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_3

    .line 441
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchTakeVideoWithCameraIntent()V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 436
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchTakeImageWithCameraIntent()V

    :cond_3
    :goto_1
    if-nez p2, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, p3, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "camera_access_denied"

    const-string p2, "The user did not allow camera access."

    .line 452
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return v0
.end method

.method retrieveLostImage(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 9

    .line 219
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-virtual {v0}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->getCacheMap()Ljava/util/Map;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    const-string v1, "pathList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 225
    iget-object v5, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    const-string v5, "maxWidth"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 226
    iget-object v6, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    const-string v6, "maxHeight"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    .line 228
    iget-object v7, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    const-string v7, "imageQuality"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    const/16 v7, 0x64

    goto :goto_1

    .line 230
    :cond_0
    iget-object v8, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 232
    :goto_1
    iget-object v8, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->imageResizer:Lio/flutter/plugins/imagepicker/ImageResizer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v4, v5, v6, v7}, Lio/flutter/plugins/imagepicker/ImageResizer;->resizeImageIfNeeded(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "path"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 238
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 240
    :cond_3
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 242
    :goto_2
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->clear()V

    return-void
.end method

.method saveStateBeforeResult()V
    .locals 2

    .line 207
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveTypeWithMethodCallName(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->methodCall:Lio/flutter/plugin/common/MethodCall;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveDimensionWithMethodCall(Lio/flutter/plugin/common/MethodCall;)V

    .line 213
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 214
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->savePendingCameraMediaUriPath(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method setCameraDevice(Lio/flutter/plugins/imagepicker/CameraDevice;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cameraDevice:Lio/flutter/plugins/imagepicker/CameraDevice;

    return-void
.end method

.method public takeImageWithCamera(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 344
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingMethodCallAndResult(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 345
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 349
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->needRequestCameraPermission()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    const-string p2, "android.permission.CAMERA"

    .line 350
    invoke-interface {p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 351
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    const/16 v0, 0x929

    invoke-interface {p1, p2, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->askForPermission(Ljava/lang/String;I)V

    return-void

    .line 355
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchTakeImageWithCameraIntent()V

    return-void
.end method

.method public takeVideoWithCamera(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 262
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingMethodCallAndResult(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 263
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->needRequestCameraPermission()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    const-string p2, "android.permission.CAMERA"

    .line 268
    invoke-interface {p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 269
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    const/16 v0, 0x933

    invoke-interface {p1, p2, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->askForPermission(Ljava/lang/String;I)V

    return-void

    .line 274
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchTakeVideoWithCameraIntent()V

    return-void
.end method
