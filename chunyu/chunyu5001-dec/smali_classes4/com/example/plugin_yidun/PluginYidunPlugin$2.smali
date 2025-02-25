.class Lcom/example/plugin_yidun/PluginYidunPlugin$2;
.super Ljava/lang/Object;
.source "PluginYidunPlugin.java"

# interfaces
.implements Lcom/netease/mobsec/GetTokenCallback;


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

    .line 67
    iput-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin$2;->this$0:Lcom/example/plugin_yidun/PluginYidunPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/example/plugin_yidun/PluginYidunPlugin$2;->this$0:Lcom/example/plugin_yidun/PluginYidunPlugin;

    invoke-static {p1, p3}, Lcom/example/plugin_yidun/PluginYidunPlugin;->access$202(Lcom/example/plugin_yidun/PluginYidunPlugin;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
