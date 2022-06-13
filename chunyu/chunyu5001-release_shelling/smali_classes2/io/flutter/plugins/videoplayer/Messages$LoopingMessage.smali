.class public Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoopingMessage"
.end annotation


# instance fields
.field private isLooping:Ljava/lang/Boolean;

.field private textureId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;
    .locals 3

    .line 156
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;-><init>()V

    const-string v1, "textureId"

    .line 157
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 161
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
    iput-object v1, v0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->textureId:Ljava/lang/Long;

    const-string v1, "isLooping"

    .line 162
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 163
    check-cast p0, Ljava/lang/Boolean;

    iput-object p0, v0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->isLooping:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public getIsLooping()Ljava/lang/Boolean;
    .locals 1

    .line 141
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->isLooping:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTextureId()Ljava/lang/Long;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->textureId:Ljava/lang/Long;

    return-object v0
.end method

.method public setIsLooping(Ljava/lang/Boolean;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->isLooping:Ljava/lang/Boolean;

    return-void
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->textureId:Ljava/lang/Long;

    return-void
.end method

.method toMap()Ljava/util/HashMap;
    .locals 3

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->textureId:Ljava/lang/Long;

    const-string v2, "textureId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->isLooping:Ljava/lang/Boolean;

    const-string v2, "isLooping"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
