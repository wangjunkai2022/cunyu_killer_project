.class public Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixWithOthersMessage"
.end annotation


# instance fields
.field private mixWithOthers:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;
    .locals 2

    .line 316
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;-><init>()V

    const-string v1, "mixWithOthers"

    .line 317
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 318
    check-cast p0, Ljava/lang/Boolean;

    iput-object p0, v0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->mixWithOthers:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public getMixWithOthers()Ljava/lang/Boolean;
    .locals 1

    .line 302
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->mixWithOthers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setMixWithOthers(Ljava/lang/Boolean;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->mixWithOthers:Ljava/lang/Boolean;

    return-void
.end method

.method toMap()Ljava/util/HashMap;
    .locals 3

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->mixWithOthers:Ljava/lang/Boolean;

    const-string v2, "mixWithOthers"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
