.class public Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackSpeedMessage"
.end annotation


# instance fields
.field private speed:Ljava/lang/Double;

.field private textureId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;
    .locals 3

    .line 240
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;-><init>()V

    const-string v1, "textureId"

    .line 241
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 245
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->textureId:Ljava/lang/Long;

    const-string v1, "speed"

    .line 246
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 247
    check-cast p0, Ljava/lang/Double;

    iput-object p0, v0, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->speed:Ljava/lang/Double;

    return-object v0
.end method


# virtual methods
.method public getSpeed()Ljava/lang/Double;
    .locals 1

    .line 225
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->speed:Ljava/lang/Double;

    return-object v0
.end method

.method public getTextureId()Ljava/lang/Long;
    .locals 1

    .line 215
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->textureId:Ljava/lang/Long;

    return-object v0
.end method

.method public setSpeed(Ljava/lang/Double;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->speed:Ljava/lang/Double;

    return-void
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->textureId:Ljava/lang/Long;

    return-void
.end method

.method toMap()Ljava/util/HashMap;
    .locals 3

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->textureId:Ljava/lang/Long;

    const-string v2, "textureId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->speed:Ljava/lang/Double;

    const-string v2, "speed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
