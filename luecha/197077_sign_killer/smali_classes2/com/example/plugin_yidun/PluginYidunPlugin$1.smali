.class Lcom/example/plugin_yidun/PluginYidunPlugin$1;
.super Ljava/lang/Object;
.source "PluginYidunPlugin.java"

# interfaces
.implements Lcom/netease/mobsec/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/plugin_yidun/PluginYidunPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/plugin_yidun/PluginYidunPlugin;


# direct methods
.method constructor <init>(Lcom/example/plugin_yidun/PluginYidunPlugin;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin$1;->this$0:Lcom/example/plugin_yidun/PluginYidunPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 1

    .line 53
    iget-object p2, p0, Lcom/example/plugin_yidun/PluginYidunPlugin$1;->this$0:Lcom/example/plugin_yidun/PluginYidunPlugin;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/example/plugin_yidun/PluginYidunPlugin;->access$002(Lcom/example/plugin_yidun/PluginYidunPlugin;Ljava/lang/String;)Ljava/lang/String;

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 55
    iget-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin$1;->this$0:Lcom/example/plugin_yidun/PluginYidunPlugin;

    invoke-static {p1}, Lcom/example/plugin_yidun/PluginYidunPlugin;->access$100(Lcom/example/plugin_yidun/PluginYidunPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object p1

    const-string p2, "checkToken"

    const-string v0, "1"

    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
