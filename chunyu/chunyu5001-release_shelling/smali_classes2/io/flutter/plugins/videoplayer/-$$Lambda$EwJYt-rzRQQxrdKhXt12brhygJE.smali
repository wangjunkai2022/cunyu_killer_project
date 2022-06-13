.class public final synthetic Lio/flutter/plugins/videoplayer/-$$Lambda$EwJYt-rzRQQxrdKhXt12brhygJE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;


# instance fields
.field private final synthetic f$0:Lio/flutter/plugin/common/PluginRegistry$Registrar;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/-$$Lambda$EwJYt-rzRQQxrdKhXt12brhygJE;->f$0:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/-$$Lambda$EwJYt-rzRQQxrdKhXt12brhygJE;->f$0:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->lookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
