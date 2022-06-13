.class public Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMessage"
.end annotation


# instance fields
.field private position:Ljava/lang/Long;

.field private textureId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
    .locals 5

    .line 282
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;-><init>()V

    const-string v1, "textureId"

    .line 283
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 287
    :cond_0
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    const-string v1, "position"

    .line 288
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_3

    .line 292
    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    goto :goto_2

    :cond_3
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_3
    iput-object v2, v0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public getPosition()Ljava/lang/Long;
    .locals 1

    .line 267
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    return-object v0
.end method

.method public getTextureId()Ljava/lang/Long;
    .locals 1

    .line 257
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    return-object v0
.end method

.method public setPosition(Ljava/lang/Long;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    return-void
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    return-void
.end method

.method toMap()Ljava/util/HashMap;
    .locals 3

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    const-string v2, "textureId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
