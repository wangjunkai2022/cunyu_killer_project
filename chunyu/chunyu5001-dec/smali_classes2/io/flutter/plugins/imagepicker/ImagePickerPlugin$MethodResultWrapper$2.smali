.class Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;
.super Ljava/lang/Object;
.source "ImagePickerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;

.field final synthetic val$errorCode:Ljava/lang/String;

.field final synthetic val$errorDetails:Ljava/lang/Object;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;

    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;->val$errorCode:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;->val$errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;->val$errorDetails:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 318
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;

    invoke-static {v0}, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;->access$100(Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;->val$errorCode:Ljava/lang/String;

    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;->val$errorMessage:Ljava/lang/String;

    iget-object v3, p0, Lio/flutter/plugins/imagepicker/ImagePickerPlugin$MethodResultWrapper$2;->val$errorDetails:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
