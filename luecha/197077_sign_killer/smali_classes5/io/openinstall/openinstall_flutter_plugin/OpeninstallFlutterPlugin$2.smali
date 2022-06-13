.class Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$2;
.super Lcom/appinstall/api/listener/AppInstallRetryAdapter;
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

    .line 116
    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$2;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-direct {p0}, Lcom/appinstall/api/listener/AppInstallRetryAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstall(Lcom/appinstall/api/model/AppData;Z)V
    .locals 1

    .line 119
    invoke-static {p1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$000(Lcom/appinstall/api/model/AppData;)Ljava/util/Map;

    move-result-object p1

    .line 120
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "retry"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p2, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$2;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {p2}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$100(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object p2

    const-string v0, "onInstallNotification"

    invoke-virtual {p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
