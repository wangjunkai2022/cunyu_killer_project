.class Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/ImagePickerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodResultWrapper"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private methodResult:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->methodResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 297
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;)Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 0

    .line 291
    iget-object p0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->methodResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object p0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notImplemented()V
    .locals 2

    .line 325
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$3;

    invoke-direct {v1, p0}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$3;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$1;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$1;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
