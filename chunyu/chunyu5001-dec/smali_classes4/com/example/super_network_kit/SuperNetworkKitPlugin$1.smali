.class Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;
.super Lcom/example/super_network_kit/listener/WsStatusListener;
.source "SuperNetworkKitPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/super_network_kit/SuperNetworkKitPlugin;->initConnection(Ljava/lang/String;Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/super_network_kit/SuperNetworkKitPlugin;

.field final synthetic val$onClosedMethodName:Ljava/lang/String;

.field final synthetic val$onFailureMethodName:Ljava/lang/String;

.field final synthetic val$onMessageMethodName:Ljava/lang/String;

.field final synthetic val$onOpenMethodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/super_network_kit/SuperNetworkKitPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->this$0:Lcom/example/super_network_kit/SuperNetworkKitPlugin;

    iput-object p2, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->val$onOpenMethodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->val$onMessageMethodName:Ljava/lang/String;

    iput-object p4, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->val$onClosedMethodName:Ljava/lang/String;

    iput-object p5, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->val$onFailureMethodName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/example/super_network_kit/listener/WsStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(ILjava/lang/String;)V
    .locals 1

    .line 161
    invoke-super {p0, p1, p2}, Lcom/example/super_network_kit/listener/WsStatusListener;->onClosed(ILjava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->this$0:Lcom/example/super_network_kit/SuperNetworkKitPlugin;

    invoke-static {p1}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->access$000(Lcom/example/super_network_kit/SuperNetworkKitPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->val$onClosedMethodName:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    .line 167
    invoke-super {p0, p1, p2}, Lcom/example/super_network_kit/listener/WsStatusListener;->onFailure(Ljava/lang/Throwable;Lokhttp3/Response;)V

    .line 168
    iget-object p2, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->this$0:Lcom/example/super_network_kit/SuperNetworkKitPlugin;

    invoke-static {p2}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->access$000(Lcom/example/super_network_kit/SuperNetworkKitPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object p2

    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->val$onFailureMethodName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Lcom/example/super_network_kit/listener/WsStatusListener;->onMessage(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->this$0:Lcom/example/super_network_kit/SuperNetworkKitPlugin;

    invoke-static {v0}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->access$000(Lcom/example/super_network_kit/SuperNetworkKitPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->val$onMessageMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMessage(Lokio/ByteString;)V
    .locals 3

    .line 149
    invoke-super {p0, p1}, Lcom/example/super_network_kit/listener/WsStatusListener;->onMessage(Lokio/ByteString;)V

    .line 150
    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->this$0:Lcom/example/super_network_kit/SuperNetworkKitPlugin;

    invoke-static {v0}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->access$000(Lcom/example/super_network_kit/SuperNetworkKitPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->val$onMessageMethodName:Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onOpen(Lokhttp3/Response;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Lcom/example/super_network_kit/listener/WsStatusListener;->onOpen(Lokhttp3/Response;)V

    .line 138
    iget-object p1, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->this$0:Lcom/example/super_network_kit/SuperNetworkKitPlugin;

    invoke-static {p1}, Lcom/example/super_network_kit/SuperNetworkKitPlugin;->access$000(Lcom/example/super_network_kit/SuperNetworkKitPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/example/super_network_kit/SuperNetworkKitPlugin$1;->val$onOpenMethodName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReconnect()V
    .locals 0

    .line 155
    invoke-super {p0}, Lcom/example/super_network_kit/listener/WsStatusListener;->onReconnect()V

    return-void
.end method
