.class Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;
.super Ljava/lang/Object;
.source "OpeninstallFlutterPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->initWithPermission(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Landroid/app/Activity;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    iput-object p2, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 189
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {v0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$300(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    move-result-object v0

    iget-object v1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {v1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$200(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 190
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$402(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Z)Z

    .line 191
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {v0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$500(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    iget-object v1, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$600(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    invoke-static {v0}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$500(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$600(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Landroid/content/Intent;)V

    .line 195
    iget-object v0, p0, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin$3;->this$0:Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;->access$502(Lio/openinstall/openinstall_flutter_plugin/OpeninstallFlutterPlugin;Landroid/content/Intent;)Landroid/content/Intent;

    :goto_0
    return-void
.end method
