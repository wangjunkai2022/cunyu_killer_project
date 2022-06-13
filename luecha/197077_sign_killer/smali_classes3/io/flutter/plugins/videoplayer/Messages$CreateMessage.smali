.class public Lio/flutter/plugins/videoplayer/Messages$CreateMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateMessage"
.end annotation


# instance fields
.field private asset:Ljava/lang/String;

.field private formatHint:Ljava/lang/String;

.field private httpHeaders:Ljava/util/HashMap;

.field private packageName:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromMap(Ljava/util/HashMap;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage;
    .locals 2

    .line 111
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;-><init>()V

    const-string v1, "asset"

    .line 112
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->asset:Ljava/lang/String;

    const-string v1, "uri"

    .line 114
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->uri:Ljava/lang/String;

    const-string v1, "packageName"

    .line 116
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->packageName:Ljava/lang/String;

    const-string v1, "formatHint"

    .line 118
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->formatHint:Ljava/lang/String;

    const-string v1, "httpHeaders"

    .line 120
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 121
    check-cast p0, Ljava/util/HashMap;

    iput-object p0, v0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->httpHeaders:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getAsset()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->asset:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatHint()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->formatHint:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpHeaders()Ljava/util/HashMap;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->httpHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAsset(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->asset:Ljava/lang/String;

    return-void
.end method

.method public setFormatHint(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->formatHint:Ljava/lang/String;

    return-void
.end method

.method public setHttpHeaders(Ljava/util/HashMap;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->httpHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->uri:Ljava/lang/String;

    return-void
.end method

.method toMap()Ljava/util/HashMap;
    .locals 3

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->asset:Ljava/lang/String;

    const-string v2, "asset"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->uri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->formatHint:Ljava/lang/String;

    const-string v2, "formatHint"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->httpHeaders:Ljava/util/HashMap;

    const-string v2, "httpHeaders"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
