.class public Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeMessage"
.end annotation


# instance fields
.field private textureId:Ljava/lang/Long;

.field private volume:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;
    .locals 3

    .line 198
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;-><init>()V

    const-string v1, "textureId"

    .line 199
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 203
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
    iput-object v1, v0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->textureId:Ljava/lang/Long;

    const-string v1, "volume"

    .line 204
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 205
    check-cast p0, Ljava/lang/Double;

    iput-object p0, v0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->volume:Ljava/lang/Double;

    return-object v0
.end method


# virtual methods
.method public getTextureId()Ljava/lang/Long;
    .locals 1

    .line 173
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->textureId:Ljava/lang/Long;

    return-object v0
.end method

.method public getVolume()Ljava/lang/Double;
    .locals 1

    .line 183
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->volume:Ljava/lang/Double;

    return-object v0
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->textureId:Ljava/lang/Long;

    return-void
.end method

.method public setVolume(Ljava/lang/Double;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->volume:Ljava/lang/Double;

    return-void
.end method

.method toMap()Ljava/util/HashMap;
    .locals 3

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->textureId:Ljava/lang/Long;

    const-string v2, "textureId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->volume:Ljava/lang/Double;

    const-string v2, "volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
