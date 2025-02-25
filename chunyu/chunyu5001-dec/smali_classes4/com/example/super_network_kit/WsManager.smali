.class public Lcom/example/super_network_kit/WsManager;
.super Ljava/lang/Object;
.source "WsManager.java"

# interfaces
.implements Lcom/example/super_network_kit/IWsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/super_network_kit/WsManager$Builder;
    }
.end annotation


# static fields
.field private static final RECONNECT_INTERVAL:I = 0x2710

.field private static final RECONNECT_MAX_TIME:J = 0x1d4c0L


# instance fields
.field private enableZip:Z

.field private isManualClose:Z

.field private isNeedReconnect:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStatus:I

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mRequest:Lokhttp3/Request;

.field private mWebSocket:Lokhttp3/WebSocket;

.field private mWebSocketListener:Lokhttp3/WebSocketListener;

.field private nextAESKey:Ljava/lang/String;

.field private reconnectCount:I

.field private reconnectRunnable:Ljava/lang/Runnable;

.field private salt:Ljava/lang/String;

.field private wsMainHandler:Landroid/os/Handler;

.field private wsStatusListener:Lcom/example/super_network_kit/listener/WsStatusListener;

.field private wsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/example/super_network_kit/WsManager$Builder;)V
    .locals 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/example/super_network_kit/WsManager;->mCurrentStatus:I

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/example/super_network_kit/WsManager;->isManualClose:Z

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/example/super_network_kit/WsManager;->wsMainHandler:Landroid/os/Handler;

    .line 42
    iput v0, p0, Lcom/example/super_network_kit/WsManager;->reconnectCount:I

    .line 51
    new-instance v0, Lcom/example/super_network_kit/WsManager$1;

    invoke-direct {v0, p0}, Lcom/example/super_network_kit/WsManager$1;-><init>(Lcom/example/super_network_kit/WsManager;)V

    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->reconnectRunnable:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/example/super_network_kit/WsManager$2;

    invoke-direct {v0, p0}, Lcom/example/super_network_kit/WsManager$2;-><init>(Lcom/example/super_network_kit/WsManager;)V

    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->mWebSocketListener:Lokhttp3/WebSocketListener;

    .line 181
    invoke-static {p1}, Lcom/example/super_network_kit/WsManager$Builder;->access$700(Lcom/example/super_network_kit/WsManager$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->mContext:Landroid/content/Context;

    .line 182
    invoke-static {p1}, Lcom/example/super_network_kit/WsManager$Builder;->access$800(Lcom/example/super_network_kit/WsManager$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->wsUrl:Ljava/lang/String;

    .line 183
    invoke-static {p1}, Lcom/example/super_network_kit/WsManager$Builder;->access$900(Lcom/example/super_network_kit/WsManager$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/super_network_kit/WsManager;->isNeedReconnect:Z

    .line 184
    invoke-static {p1}, Lcom/example/super_network_kit/WsManager$Builder;->access$1000(Lcom/example/super_network_kit/WsManager$Builder;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 185
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 187
    invoke-static {p1}, Lcom/example/super_network_kit/WsManager$Builder;->access$1100(Lcom/example/super_network_kit/WsManager$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/super_network_kit/WsManager;->enableZip:Z

    .line 188
    invoke-static {p1}, Lcom/example/super_network_kit/WsManager$Builder;->access$1200(Lcom/example/super_network_kit/WsManager$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/example/super_network_kit/WsManager;->salt:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/super_network_kit/WsManager;->wsStatusListener:Lcom/example/super_network_kit/listener/WsStatusListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/example/super_network_kit/WsManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/example/super_network_kit/WsManager;->buildConnect()V

    return-void
.end method

.method static synthetic access$202(Lcom/example/super_network_kit/WsManager;Lokhttp3/WebSocket;)Lokhttp3/WebSocket;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager;->mWebSocket:Lokhttp3/WebSocket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/example/super_network_kit/WsManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/example/super_network_kit/WsManager;->connected()V

    return-void
.end method

.method static synthetic access$400(Lcom/example/super_network_kit/WsManager;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/super_network_kit/WsManager;->wsMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/example/super_network_kit/WsManager;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/example/super_network_kit/WsManager;->enableZip:Z

    return p0
.end method

.method static synthetic access$600(Lcom/example/super_network_kit/WsManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/example/super_network_kit/WsManager;->tryReconnect()V

    return-void
.end method

.method private declared-synchronized buildConnect()V
    .locals 2

    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/example/super_network_kit/WsManager;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 307
    invoke-virtual {p0, v0}, Lcom/example/super_network_kit/WsManager;->setCurrentStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 310
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/example/super_network_kit/WsManager;->getCurrentStatus()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0}, Lcom/example/super_network_kit/WsManager;->setCurrentStatus(I)V

    .line 316
    invoke-direct {p0}, Lcom/example/super_network_kit/WsManager;->initWebSocket()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cancelReconnect()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->wsMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/example/super_network_kit/WsManager;->reconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lcom/example/super_network_kit/WsManager;->reconnectCount:I

    return-void
.end method

.method private connected()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->salt:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/example/super_network_kit/WsManager;->salt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/super_network_kit/Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->nextAESKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->nextAESKey:Ljava/lang/String;

    .line 282
    :goto_0
    invoke-direct {p0}, Lcom/example/super_network_kit/WsManager;->cancelReconnect()V

    return-void
.end method

.method private disconnect()V
    .locals 4

    .line 286
    iget v0, p0, Lcom/example/super_network_kit/WsManager;->mCurrentStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/example/super_network_kit/WsManager;->cancelReconnect()V

    .line 290
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mWebSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_2

    const/16 v2, 0x3e8

    const-string v3, "normal close"

    .line 294
    invoke-interface {v0, v2, v3}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->wsStatusListener:Lcom/example/super_network_kit/listener/WsStatusListener;

    if-eqz v0, :cond_2

    const/16 v2, 0x3e9

    const-string v3, "abnormal close"

    .line 298
    invoke-virtual {v0, v2, v3}, Lcom/example/super_network_kit/listener/WsStatusListener;->onClosed(ILjava/lang/String;)V

    .line 302
    :cond_2
    invoke-virtual {p0, v1}, Lcom/example/super_network_kit/WsManager;->setCurrentStatus(I)V

    return-void
.end method

.method private initWebSocket()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x1

    .line 194
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mRequest:Lokhttp3/Request;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/example/super_network_kit/WsManager;->wsUrl:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_network_kit/WsManager;->mRequest:Lokhttp3/Request;

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/example/super_network_kit/WsManager;->mRequest:Lokhttp3/Request;

    iget-object v2, p0, Lcom/example/super_network_kit/WsManager;->mWebSocketListener:Lokhttp3/WebSocketListener;

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/example/super_network_kit/WsManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 209
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private isNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "connectivity"

    .line 360
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 362
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private send(Ljava/lang/Object;)Z
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mWebSocket:Lokhttp3/WebSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/example/super_network_kit/WsManager;->mCurrentStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 343
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 344
    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 345
    :cond_0
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_1

    .line 346
    check-cast p1, Lokio/ByteString;

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    move-result v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 350
    invoke-direct {p0}, Lcom/example/super_network_kit/WsManager;->tryReconnect()V

    :cond_2
    return v1
.end method

.method private tryReconnect()V
    .locals 7

    .line 252
    iget-boolean v0, p0, Lcom/example/super_network_kit/WsManager;->isNeedReconnect:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/example/super_network_kit/WsManager;->isManualClose:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/example/super_network_kit/WsManager;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 257
    invoke-virtual {p0, v0}, Lcom/example/super_network_kit/WsManager;->setCurrentStatus(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 261
    invoke-virtual {p0, v0}, Lcom/example/super_network_kit/WsManager;->setCurrentStatus(I)V

    .line 263
    iget v0, p0, Lcom/example/super_network_kit/WsManager;->reconnectCount:I

    mul-int/lit16 v0, v0, 0x2710

    int-to-long v0, v0

    .line 264
    iget-object v2, p0, Lcom/example/super_network_kit/WsManager;->wsMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/example/super_network_kit/WsManager;->reconnectRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x1d4c0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    move-wide v0, v4

    .line 265
    :cond_2
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    iget v0, p0, Lcom/example/super_network_kit/WsManager;->reconnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/example/super_network_kit/WsManager;->reconnectCount:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentStatus()I
    .locals 1

    monitor-enter p0

    .line 231
    :try_start_0
    iget v0, p0, Lcom/example/super_network_kit/WsManager;->mCurrentStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWebSocket()Lokhttp3/WebSocket;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->mWebSocket:Lokhttp3/WebSocket;

    return-object v0
.end method

.method public declared-synchronized isWsConnected()Z
    .locals 2

    monitor-enter p0

    .line 226
    :try_start_0
    iget v0, p0, Lcom/example/super_network_kit/WsManager;->mCurrentStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendMessage(Ljava/lang/String;)Z
    .locals 2

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->nextAESKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager;->nextAESKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/example/super_network_kit/Util;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/example/super_network_kit/WsManager;->send(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "network"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public sendMessage(Lokio/ByteString;)Z
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcom/example/super_network_kit/WsManager;->send(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setCurrentStatus(I)V
    .locals 0

    monitor-enter p0

    .line 236
    :try_start_0
    iput p1, p0, Lcom/example/super_network_kit/WsManager;->mCurrentStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setWsStatusListener(Lcom/example/super_network_kit/listener/WsStatusListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager;->wsStatusListener:Lcom/example/super_network_kit/listener/WsStatusListener;

    return-void
.end method

.method public startConnect()V
    .locals 1

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/example/super_network_kit/WsManager;->isManualClose:Z

    .line 242
    invoke-direct {p0}, Lcom/example/super_network_kit/WsManager;->buildConnect()V

    return-void
.end method

.method public stopConnect()V
    .locals 1

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/example/super_network_kit/WsManager;->isManualClose:Z

    .line 248
    invoke-direct {p0}, Lcom/example/super_network_kit/WsManager;->disconnect()V

    return-void
.end method
