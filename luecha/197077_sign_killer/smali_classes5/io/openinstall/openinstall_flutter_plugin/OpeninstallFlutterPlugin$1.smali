.class Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$1;
.super Lcom/appinstall/api/listener/AppInstallAdapter;
.source "OpeninstallFlutterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
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

    .line 107
    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$1;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-direct {p0}, Lcom/appinstall/api/listener/AppInstallAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstall(Lcom/appinstall/api/model/AppData;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$1;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {v0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$100(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    invoke-static {p1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$000(Lcom/appinstall/api/model/AppData;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "onInstallNotification"

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
