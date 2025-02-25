.class Lcom/example/super_network_kit/WsManager$2;
.super Lokhttp3/WebSocketListener;
.source "WsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/super_network_kit/WsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/super_network_kit/WsManager;


# direct methods
.method constructor <init>(Lcom/example/super_network_kit/WsManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 150
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$400(Lcom/example/super_network_kit/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/example/super_network_kit/WsManager$2$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/example/super_network_kit/WsManager$2$5;-><init>(Lcom/example/super_network_kit/WsManager$2;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/example/super_network_kit/listener/WsStatusListener;->onClosed(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 133
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$400(Lcom/example/super_network_kit/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/example/super_network_kit/WsManager$2$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/example/super_network_kit/WsManager$2$4;-><init>(Lcom/example/super_network_kit/WsManager$2;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/example/super_network_kit/listener/WsStatusListener;->onClosing(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$600(Lcom/example/super_network_kit/WsManager;)V

    .line 165
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 166
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 167
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$400(Lcom/example/super_network_kit/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/example/super_network_kit/WsManager$2$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/example/super_network_kit/WsManager$2$6;-><init>(Lcom/example/super_network_kit/WsManager$2;Ljava/lang/Throwable;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/example/super_network_kit/listener/WsStatusListener;->onFailure(Ljava/lang/Throwable;Lokhttp3/Response;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$400(Lcom/example/super_network_kit/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/example/super_network_kit/WsManager$2$3;

    invoke-direct {v0, p0, p2}, Lcom/example/super_network_kit/WsManager$2$3;-><init>(Lcom/example/super_network_kit/WsManager$2;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/example/super_network_kit/listener/WsStatusListener;->onMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$500(Lcom/example/super_network_kit/WsManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/example/super_network_kit/Util;->decompress([B)[B

    move-result-object p1

    .line 88
    new-instance p2, Lokio/ByteString;

    invoke-direct {p2, p1}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tunnel.onMessage\u89e3\u538b\u9519\u8bef:\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 99
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 101
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$400(Lcom/example/super_network_kit/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/example/super_network_kit/WsManager$2$2;

    invoke-direct {v0, p0, p2}, Lcom/example/super_network_kit/WsManager$2$2;-><init>(Lcom/example/super_network_kit/WsManager$2;Lokio/ByteString;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/example/super_network_kit/listener/WsStatusListener;->onMessage(Lokio/ByteString;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {v0, p1}, Lcom/example/super_network_kit/WsManager;->access$202(Lcom/example/super_network_kit/WsManager;Lokhttp3/WebSocket;)Lokhttp3/WebSocket;

    .line 65
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/example/super_network_kit/WsManager;->setCurrentStatus(I)V

    .line 66
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$300(Lcom/example/super_network_kit/WsManager;)V

    .line 67
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$400(Lcom/example/super_network_kit/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/example/super_network_kit/WsManager$2$1;

    invoke-direct {v0, p0, p2}, Lcom/example/super_network_kit/WsManager$2$1;-><init>(Lcom/example/super_network_kit/WsManager$2;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/example/super_network_kit/WsManager$2;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {p1}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/example/super_network_kit/listener/WsStatusListener;->onOpen(Lokhttp3/Response;)V

    :cond_1
    :goto_0
    return-void
.end method
