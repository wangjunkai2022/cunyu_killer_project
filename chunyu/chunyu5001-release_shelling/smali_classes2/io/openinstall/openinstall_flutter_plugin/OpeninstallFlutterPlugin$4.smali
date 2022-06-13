.class Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$4;
.super Ljava/lang/Object;
.source "OpeninstallFlutterPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;


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

    .line 203
    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$4;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$4;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {v0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$400(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$4;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {v0, p1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$600(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$4;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {v0, p1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$502(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Landroid/content/Intent;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
