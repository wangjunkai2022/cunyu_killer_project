.class Lio/flutter/plugins/videoplayer/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/videoplayer/VideoPlayer;->setupVideoPlayer(Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lio/flutter/plugins/videoplayer/VideoPlayer;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$1;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 166
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$1;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->access$000(Lio/flutter/plugins/videoplayer/VideoPlayer;)Lio/flutter/plugins/videoplayer/QueuingEventSink;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->setDelegate(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$1;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->access$000(Lio/flutter/plugins/videoplayer/VideoPlayer;)Lio/flutter/plugins/videoplayer/QueuingEventSink;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->setDelegate(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    return-void
.end method
