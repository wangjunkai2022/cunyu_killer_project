.class public Lio/flutter/plugins/videoplayer/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;,
        Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;,
        Lio/flutter/plugins/videoplayer/Messages$PositionMessage;,
        Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;,
        Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;,
        Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;,
        Lio/flutter/plugins/videoplayer/Messages$CreateMessage;,
        Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Exception;)Ljava/util/HashMap;
    .locals 0

    .line 17
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Exception;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private static wrapError(Ljava/lang/Exception;)Ljava/util/HashMap;
    .locals 3

    .line 615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 616
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "details"

    const/4 v1, 0x0

    .line 618
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
