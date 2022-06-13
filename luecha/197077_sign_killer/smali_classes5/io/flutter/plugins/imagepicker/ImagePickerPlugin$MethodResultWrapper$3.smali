.class Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$3;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->notImplemented()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;


# direct methods
.method constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$3;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 329
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$3;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;

    invoke-static {v0}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->access$100(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    return-void
.end method
