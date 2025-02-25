.class public Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureMessage"
.end annotation


# instance fields
.field private textureId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
    .locals 3

    .line 38
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;-><init>()V

    const-string v1, "textureId"

    .line 39
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 43
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_1
    iput-object p0, v0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->textureId:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public getTextureId()Ljava/lang/Long;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->textureId:Ljava/lang/Long;

    return-object v0
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->textureId:Ljava/lang/Long;

    return-void
.end method

.method toMap()Ljava/util/HashMap;
    .locals 3

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->textureId:Ljava/lang/Long;

    const-string v2, "textureId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
