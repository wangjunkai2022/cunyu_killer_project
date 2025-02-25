.class Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$5;
.super Ljava/lang/Object;
.source "OpeninstallFlutterPlugin.java"

# interfaces
.implements Lcom/appinstall/api/listener/AppWakeUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->wakeup(Landroid/content/Intent;)V
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

    .line 218
    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$5;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWakeUpFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWakeUpAlwaysCallback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/appinstall/api/model/Error;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpenInstallPlugin"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object p2, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$5;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {p2}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$100(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object p2

    invoke-static {p1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$000(Lcom/appinstall/api/model/AppData;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "onWakeupNotification"

    invoke-virtual {p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
