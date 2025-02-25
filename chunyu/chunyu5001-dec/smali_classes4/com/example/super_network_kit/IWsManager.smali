.class interface abstract Lcom/example/super_network_kit/IWsManager;
.super Ljava/lang/Object;
.source "IWsManager.java"


# virtual methods
.method public abstract getCurrentStatus()I
.end method

.method public abstract getWebSocket()Lokhttp3/WebSocket;
.end method

.method public abstract isWsConnected()Z
.end method

.method public abstract sendMessage(Ljava/lang/String;)Z
.end method

.method public abstract sendMessage(Lokio/ByteString;)Z
.end method

.method public abstract setCurrentStatus(I)V
.end method

.method public abstract startConnect()V
.end method

.method public abstract stopConnect()V
.end method
