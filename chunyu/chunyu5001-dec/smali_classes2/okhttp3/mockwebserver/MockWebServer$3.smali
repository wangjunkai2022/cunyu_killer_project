.class Lokhttp3/mockwebserver/MockWebServer$3;
.super Lokhttp3/internal/NamedRunnable;
.source "MockWebServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/mockwebserver/MockWebServer;->serveConnection(Ljava/net/Socket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field sequenceNumber:I

.field final synthetic this$0:Lokhttp3/mockwebserver/MockWebServer;

.field final synthetic val$raw:Ljava/net/Socket;


# direct methods
.method varargs constructor <init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/lang/String;[Ljava/lang/Object;Ljava/net/Socket;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iput-object p4, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 438
    iput p1, p0, Lokhttp3/mockwebserver/MockWebServer$3;->sequenceNumber:I

    return-void
.end method

.method private createTunnel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    .line 537
    :cond_0
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v2

    .line 538
    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    invoke-direct {p0, v3, v0, v1}, Lokhttp3/mockwebserver/MockWebServer$3;->processOneRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    sget-object v3, Lokhttp3/mockwebserver/SocketPolicy;->UPGRADE_TO_SSL_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v2, v3, :cond_0

    return-void

    .line 539
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tunnel without any CONNECT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processOneRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget v1, p0, Lokhttp3/mockwebserver/MockWebServer$3;->sequenceNumber:I

    invoke-static {v0, p1, p2, p3, v1}, Lokhttp3/mockwebserver/MockWebServer;->access$1500(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 554
    :cond_0
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$1600(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 555
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$1700(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/mockwebserver/Dispatcher;->dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object v8

    .line 558
    invoke-virtual {v8}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v2

    sget-object v3, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v2, v3, :cond_1

    .line 559
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return v1

    .line 562
    :cond_1
    invoke-virtual {v8}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v2

    sget-object v3, Lokhttp3/mockwebserver/SocketPolicy;->NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v2, v3, :cond_3

    .line 564
    invoke-interface {p2}, Lokio/BufferedSource;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 565
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected data"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v2, "Connection"

    .line 569
    invoke-virtual {v0, v2}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Upgrade"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_4

    .line 570
    invoke-virtual {v0, v3}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "websocket"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v9

    goto :goto_0

    :cond_4
    move v2, v1

    .line 571
    :goto_0
    invoke-virtual {v8}, Lokhttp3/mockwebserver/MockResponse;->getWebSocketListener()Lokhttp3/WebSocketListener;

    move-result-object v3

    if-eqz v3, :cond_5

    move v3, v9

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 573
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lokhttp3/mockwebserver/MockWebServer;->access$1800(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V

    move p2, v1

    goto :goto_2

    .line 576
    :cond_6
    iget-object p2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {p2, p1, p3, v8}, Lokhttp3/mockwebserver/MockWebServer;->access$1900(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V

    move p2, v9

    .line 579
    :goto_2
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p3, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 580
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " received request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and responded: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 585
    :cond_7
    invoke-virtual {v8}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object p3

    sget-object v0, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne p3, v0, :cond_8

    .line 586
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return v1

    .line 588
    :cond_8
    invoke-virtual {v8}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object p3

    sget-object v0, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_INPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne p3, v0, :cond_9

    .line 589
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V

    goto :goto_3

    .line 590
    :cond_9
    invoke-virtual {v8}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object p3

    sget-object v0, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_OUTPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne p3, v0, :cond_a

    .line 591
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V

    .line 594
    :cond_a
    :goto_3
    iget p1, p0, Lokhttp3/mockwebserver/MockWebServer$3;->sequenceNumber:I

    add-int/2addr p1, v9

    iput p1, p0, Lokhttp3/mockwebserver/MockWebServer$3;->sequenceNumber:I

    return p2
.end method


# virtual methods
.method protected execute()V
    .locals 6

    const-string v0, " connection from "

    .line 442
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer$3;->processConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 447
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    .line 448
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " crashed"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 444
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    .line 445
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public processConnection()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v0

    .line 454
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 456
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$800(Lokhttp3/mockwebserver/MockWebServer;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 457
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$900(Lokhttp3/mockwebserver/MockWebServer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    invoke-direct {p0}, Lokhttp3/mockwebserver/MockWebServer$3;->createTunnel()V

    .line 460
    :cond_0
    sget-object v2, Lokhttp3/mockwebserver/SocketPolicy;->FAIL_HANDSHAKE:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v0, v2, :cond_1

    .line 461
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget v1, p0, Lokhttp3/mockwebserver/MockWebServer$3;->sequenceNumber:I

    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    invoke-static {v0, v1, v2}, Lokhttp3/mockwebserver/MockWebServer;->access$600(Lokhttp3/mockwebserver/MockWebServer;ILjava/net/Socket;)V

    .line 462
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    invoke-static {v0, v1}, Lokhttp3/mockwebserver/MockWebServer;->access$1000(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V

    return-void

    .line 465
    :cond_1
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$800(Lokhttp3/mockwebserver/MockWebServer;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    .line 466
    invoke-virtual {v7}, Ljava/net/Socket;->getPort()I

    move-result v7

    const/4 v8, 0x1

    .line 465
    invoke-virtual {v2, v5, v6, v7, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    .line 467
    move-object v5, v2

    check-cast v5, Ljavax/net/ssl/SSLSocket;

    .line 468
    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 469
    iget-object v6, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v6}, Lokhttp3/mockwebserver/MockWebServer;->access$1100(Lokhttp3/mockwebserver/MockWebServer;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 470
    invoke-virtual {v5, v8}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v6, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v6}, Lokhttp3/mockwebserver/MockWebServer;->access$1100(Lokhttp3/mockwebserver/MockWebServer;)I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 472
    invoke-virtual {v5, v8}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 474
    :cond_3
    :goto_0
    iget-object v6, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v6}, Lokhttp3/mockwebserver/MockWebServer;->access$200(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v6, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v6}, Lokhttp3/mockwebserver/MockWebServer;->access$1200(Lokhttp3/mockwebserver/MockWebServer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 477
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v6

    iget-object v7, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v7}, Lokhttp3/mockwebserver/MockWebServer;->access$1300(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v5, v3, v7}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 480
    :cond_4
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 482
    iget-object v6, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v6}, Lokhttp3/mockwebserver/MockWebServer;->access$1200(Lokhttp3/mockwebserver/MockWebServer;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 483
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v5}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 484
    invoke-static {v1}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 486
    :cond_6
    :goto_1
    iget-object v5, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v5}, Lokhttp3/mockwebserver/MockWebServer;->access$200(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 487
    :cond_7
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v2}, Lokhttp3/mockwebserver/MockWebServer;->access$1300(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/List;

    move-result-object v2

    sget-object v5, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 488
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    .line 489
    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    goto :goto_2

    .line 491
    :cond_8
    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    .line 494
    :goto_2
    sget-object v5, Lokhttp3/mockwebserver/SocketPolicy;->STALL_SOCKET_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v0, v5, :cond_9

    return-void

    .line 498
    :cond_9
    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-eq v1, v0, :cond_e

    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    if-ne v1, v0, :cond_a

    goto :goto_4

    .line 508
    :cond_a
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    if-ne v1, v0, :cond_d

    .line 512
    invoke-static {v2}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 513
    invoke-static {v2}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    .line 515
    :goto_3
    invoke-direct {p0, v2, v0, v1}, Lokhttp3/mockwebserver/MockWebServer$3;->processOneRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    .line 518
    :cond_b
    iget v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->sequenceNumber:I

    if-nez v0, :cond_c

    .line 519
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " connection from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$3;->val$raw:Ljava/net/Socket;

    .line 521
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " didn\'t make a request"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 525
    :cond_c
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 526
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$200(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 509
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 499
    :cond_e
    :goto_4
    new-instance v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;

    iget-object v5, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-direct {v0, v5, v2, v1, v3}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;-><init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokhttp3/Protocol;Lokhttp3/mockwebserver/MockWebServer$1;)V

    .line 500
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-direct {v1, v4}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    .line 501
    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v1

    .line 502
    invoke-virtual {v1, v0}, Lokhttp3/internal/http2/Http2Connection$Builder;->listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection$Builder;->build()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->start()V

    .line 505
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$300(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$3;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$200(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
