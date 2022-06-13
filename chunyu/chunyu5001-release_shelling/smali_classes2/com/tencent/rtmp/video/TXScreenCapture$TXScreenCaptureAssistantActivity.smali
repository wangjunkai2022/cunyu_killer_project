.class public Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;
.super Landroid/app/Activity;
.source "TXScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/video/TXScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TXScreenCaptureAssistantActivity"
.end annotation


# static fields
.field private static final REQUEST_CODE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TXScreenCaptureAssistantActivity"


# instance fields
.field private mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXScreenCaptureAssistantActivity"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    .line 46
    invoke-static {p0}, Lcom/tencent/liteav/screencapture/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/screencapture/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/screencapture/a;->a(Landroid/media/projection/MediaProjection;)V

    .line 47
    invoke-virtual {p0}, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXScreenCaptureAssistantActivity"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "media_projection"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    iput-object p1, p0, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 32
    iget-object p1, p0, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x64

    .line 34
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start permission activity failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lcom/tencent/liteav/screencapture/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/screencapture/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/screencapture/a;->a(Landroid/media/projection/MediaProjection;)V

    .line 38
    invoke-virtual {p0}, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXScreenCaptureAssistantActivity"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
