.class Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$7;
.super Ljava/lang/Object;
.source "OpeninstallFlutterPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;


# direct methods
.method constructor <init>(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$7;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 0

    .line 241
    invoke-static {p1, p2, p3}, Lcom/appinstall/api/AppInstall;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p1, 0x0

    return p1
.end method
