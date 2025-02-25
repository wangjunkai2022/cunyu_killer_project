.class Lio/flutter/plugins/imagepicker/ImagePickerDelegate$3;
.super Ljava/lang/Object;
.source "ImagePickerDelegate.java"

# interfaces
.implements Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleCaptureImageResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;


# direct methods
.method constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$3;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPathReady(Ljava/lang/String;)V
    .locals 2

    .line 534
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$3;->this$0:Lio/flutter/plugins/imagepicker/ImagePickerDelegate;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->access$000(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Ljava/lang/String;Z)V

    return-void
.end method
