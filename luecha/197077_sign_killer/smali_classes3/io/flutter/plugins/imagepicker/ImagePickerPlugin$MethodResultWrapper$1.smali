.class Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$1;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->success(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;Ljava/lang/Object;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$1;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;

    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 306
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$1;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;

    invoke-static {v0}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->access$100(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$1;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
