.class public Lio/flutter/plugins/imagepicker/ImagePickerPlugin;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;,
        Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;,
        Lio/flutter/plugins/imagepicker/ImagePickerPlugin$LifeCycleObserver;
    }
.end annotation


# static fields
.field private static final CAMERA_DEVICE_FRONT:I = 0x1

.field private static final CAMERA_DEVICE_REAR:I = 0x0

.field private static final CHANNEL:Ljava/lang/String; = "plugins.flutter.io/image_picker"

.field static final METHOD_CALL_IMAGE:Ljava/lang/String; = "pickImage"

.field static final METHOD_CALL_MULTI_IMAGE:Ljava/lang/String; = "pickMultiImage"

.field private static final METHOD_CALL_RETRIEVE:Ljava/lang/String; = "retrieve"

.field static final METHOD_CALL_VIDEO:Ljava/lang/String; = "pickVideo"

.field private static final SOURCE_CAMERA:I = 0x0

.field private static final SOURCE_GALLERY:I = 0x1


# instance fields
.field private activityState:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

.field private pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Landroid/app/Activity;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    invoke-direct {v0, p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin;Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Landroid/app/Activity;)V

    iput-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->activityState:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugins/imagepicker/ImagePickerPlugin;)Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->activityState:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    return-object p0
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 7

    .line 196
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v4

    const/4 v0, 0x0

    .line 203
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :cond_1
    move-object v3, v0

    .line 206
    new-instance v1, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;

    invoke-direct {v1}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;-><init>()V

    .line 207
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    const/4 v6, 0x0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroid/app/Activity;Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method private setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroid/app/Activity;Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 9

    .line 269
    new-instance v8, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin;Landroid/app/Application;Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    iput-object v8, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->activityState:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    return-void
.end method

.method private tearDown()V
    .locals 1

    .line 274
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->activityState:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->release()V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->activityState:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    :cond_0
    return-void
.end method


# virtual methods
.method final constructDelegate(Landroid/app/Activity;)Lio/flutter/plugins/imagepicker/ImagePickerDelegate;
    .locals 4

    .line 282
    new-instance v0, Lio/flutter/plugins/imagepicker/ImagePickerCache;

    invoke-direct {v0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 285
    new-instance v2, Lio/flutter/plugins/imagepicker/ExifDataCopier;

    invoke-direct {v2}, Lio/flutter/plugins/imagepicker/ExifDataCopier;-><init>()V

    .line 286
    new-instance v3, Lio/flutter/plugins/imagepicker/ImageResizer;

    invoke-direct {v3, v1, v2}, Lio/flutter/plugins/imagepicker/ImageResizer;-><init>(Ljava/io/File;Lio/flutter/plugins/imagepicker/ExifDataCopier;)V

    .line 287
    new-instance v2, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-direct {v2, p1, v1, v3, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;-><init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/ImageResizer;Lio/flutter/plugins/imagepicker/ImagePickerCache;)V

    return-object v2
.end method

.method final getActivityState()Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;
    .locals 1

    .line 225
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->activityState:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    return-object v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 7

    .line 240
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 241
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 242
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/Application;

    .line 243
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    .line 240
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroid/app/Activity;Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->tearDown()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 255
    invoke-virtual {p0}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 337
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->activityState:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 341
    :cond_0
    new-instance v0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;

    invoke-direct {v0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 343
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->activityState:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;

    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$ActivityState;->getDelegate()Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    move-result-object p2

    const-string v1, "cameraDevice"

    .line 344
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 348
    sget-object v1, Lio/flutter/plugins/imagepicker/CameraDevice;->FRONT:Lio/flutter/plugins/imagepicker/CameraDevice;

    goto :goto_0

    .line 350
    :cond_1
    sget-object v1, Lio/flutter/plugins/imagepicker/CameraDevice;->REAR:Lio/flutter/plugins/imagepicker/CameraDevice;

    .line 352
    :goto_0
    invoke-virtual {p2, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setCameraDevice(Lio/flutter/plugins/imagepicker/CameraDevice;)V

    .line 354
    :cond_2
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "retrieve"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_2

    :sswitch_1
    const-string v4, "pickVideo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_2

    :sswitch_2
    const-string v4, "pickImage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_3
    const-string v4, "pickMultiImage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    const-string v2, "source"

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_4

    .line 385
    invoke-virtual {p2, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->retrieveLostImage(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_3

    .line 388
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 372
    :cond_5
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    .line 375
    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->chooseVideoFromGallery(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_3

    .line 381
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid video source: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_7
    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->takeVideoWithCamera(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_3

    .line 369
    :cond_8
    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->chooseMultiImageFromGallery(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_3

    .line 356
    :cond_9
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_b

    if-ne v1, v3, :cond_a

    .line 359
    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->chooseImageFromGallery(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_3

    .line 365
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid image source: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_b
    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->takeImageWithCamera(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_3
    return-void

    :cond_c
    :goto_4
    const/4 p1, 0x0

    const-string v0, "no_activity"

    const-string v1, "image_picker plugin requires a foreground activity."

    .line 338
    invoke-interface {p2, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65dc595d -> :sswitch_3
        -0x56dcda46 -> :sswitch_2
        -0x56276f26 -> :sswitch_1
        -0x127abfc4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method
