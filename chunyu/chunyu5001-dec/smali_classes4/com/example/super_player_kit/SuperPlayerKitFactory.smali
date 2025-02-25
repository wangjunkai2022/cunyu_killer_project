.class public Lcom/example/super_player_kit/SuperPlayerKitFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "SuperPlayerKitFactory.java"


# instance fields
.field private final messenger:Lio/flutter/plugin/common/BinaryMessenger;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    .line 16
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 17
    iput-object p1, p0, Lcom/example/super_player_kit/SuperPlayerKitFactory;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 2

    .line 22
    check-cast p3, Ljava/util/Map;

    .line 23
    new-instance p1, Lcom/example/super_player_kit/SuperPlayerkit;

    invoke-static {}, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/example/super_player_kit/SuperPlayerKitFactory;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/example/super_player_kit/SuperPlayerkit;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/Map;)V

    return-object p1
.end method
