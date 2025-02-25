.class public final Lokhttp3/mockwebserver/MockWebServer;
.super Lorg/junit/rules/ExternalResource;
.source "MockWebServer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;,
        Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;
    }
.end annotation


# static fields
.field private static final CLIENT_AUTH_NONE:I = 0x0

.field private static final CLIENT_AUTH_REQUESTED:I = 0x1

.field private static final CLIENT_AUTH_REQUIRED:I = 0x2

.field private static final UNTRUSTED_TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private bodyLimit:J

.field private clientAuth:I

.field private dispatcher:Lokhttp3/mockwebserver/Dispatcher;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private inetSocketAddress:Ljava/net/InetSocketAddress;

.field private final openClientSockets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final openConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/internal/http2/Http2Connection;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private protocolNegotiationEnabled:Z

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final requestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lokhttp3/mockwebserver/RecordedRequest;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private started:Z

.field private tunnelProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    invoke-static {}, Lokhttp3/internal/Internal;->initializeInstanceForTests()V

    .line 109
    new-instance v0, Lokhttp3/mockwebserver/MockWebServer$1;

    invoke-direct {v0}, Lokhttp3/mockwebserver/MockWebServer$1;-><init>()V

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer;->UNTRUSTED_TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    .line 124
    const-class v0, Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 100
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 129
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->openClientSockets:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 131
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->openConnections:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 133
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    .line 134
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    .line 140
    new-instance v1, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-direct {v1}, Lokhttp3/mockwebserver/QueueDispatcher;-><init>()V

    iput-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    const/4 v2, 0x2

    new-array v2, v2, [Lokhttp3/Protocol;

    .line 145
    sget-object v3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v3, v2, v0

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v0, v2, v1

    invoke-static {v2}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 100
    sget-object v0, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lokhttp3/mockwebserver/MockWebServer;)Ljava/net/ServerSocket;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$1000(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lokhttp3/mockwebserver/MockWebServer;->processHandshakeFailure(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/mockwebserver/MockWebServer;)I
    .locals 0

    .line 100
    iget p0, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    return p0
.end method

.method static synthetic access$1200(Lokhttp3/mockwebserver/MockWebServer;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    return p0
.end method

.method static synthetic access$1300(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/mockwebserver/MockWebServer;->readRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1700(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$1800(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct/range {p0 .. p5}, Lokhttp3/mockwebserver/MockWebServer;->handleWebSocketUpgrade(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method static synthetic access$1900(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/mockwebserver/MockWebServer;->writeHttpResponse(Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method static synthetic access$200(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->openClientSockets:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$2200(Lokhttp3/mockwebserver/MockWebServer;Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct/range {p0 .. p7}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    return-void
.end method

.method static synthetic access$2300(Lokhttp3/mockwebserver/MockWebServer;J)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lokhttp3/mockwebserver/MockWebServer;->sleepIfDelayed(J)V

    return-void
.end method

.method static synthetic access$300(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->openConnections:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    return-object p0
.end method

.method static synthetic access$500(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$600(Lokhttp3/mockwebserver/MockWebServer;ILjava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Lokhttp3/mockwebserver/MockWebServer;->dispatchBookkeepingRequest(ILjava/net/Socket;)V

    return-void
.end method

.method static synthetic access$700(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lokhttp3/mockwebserver/MockWebServer;->serveConnection(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$800(Lokhttp3/mockwebserver/MockWebServer;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static synthetic access$900(Lokhttp3/mockwebserver/MockWebServer;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lokhttp3/mockwebserver/MockWebServer;->tunnelProxy:Z

    return p0
.end method

.method private dispatchBookkeepingRequest(ILjava/net/Socket;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 616
    new-instance v9, Lokhttp3/mockwebserver/RecordedRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, v9

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V

    .line 618
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 619
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v9}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {p1, v9}, Lokhttp3/mockwebserver/Dispatcher;->dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method

.method private handleWebSocketUpgrade(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const-string v2, "Sec-WebSocket-Key"

    .line 697
    invoke-virtual {v0, v2}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-static {v2}, Lokhttp3/internal/ws/WebSocketProtocol;->acceptHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v3, v2}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v8, p3

    .line 700
    invoke-direct {p0, p1, v8, v1}, Lokhttp3/mockwebserver/MockWebServer;->writeHttpResponse(Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V

    .line 703
    invoke-virtual/range {p4 .. p4}, Lokhttp3/mockwebserver/RecordedRequest;->getTlsVersion()Lokhttp3/TlsVersion;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "https"

    goto :goto_0

    :cond_0
    const-string v3, "http"

    :goto_0
    const-string v4, "Host"

    .line 704
    invoke-virtual {v0, v4}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 705
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 707
    invoke-virtual/range {p4 .. p4}, Lokhttp3/mockwebserver/RecordedRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 708
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 709
    new-instance v4, Lokhttp3/Response$Builder;

    invoke-direct {v4}, Lokhttp3/Response$Builder;-><init>()V

    .line 710
    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 711
    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 712
    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 713
    invoke-virtual {v4, v3}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v4

    sget-object v5, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 714
    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 715
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v10

    .line 717
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v11, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 718
    new-instance v12, Lokhttp3/mockwebserver/MockWebServer$4;

    const/4 v6, 0x0

    move-object v4, v12

    move-object v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lokhttp3/mockwebserver/MockWebServer$4;-><init>(Lokhttp3/mockwebserver/MockWebServer;ZLokio/BufferedSource;Lokio/BufferedSink;Ljava/util/concurrent/CountDownLatch;)V

    .line 723
    new-instance v13, Lokhttp3/internal/ws/RealWebSocket;

    .line 724
    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getWebSocketListener()Lokhttp3/WebSocketListener;

    move-result-object v6

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    const-wide/16 v8, 0x0

    move-object v4, v13

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;J)V

    .line 725
    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getWebSocketListener()Lokhttp3/WebSocketListener;

    move-result-object v1

    invoke-virtual {v1, v13, v10}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MockWebServer WebSocket "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lokhttp3/mockwebserver/RecordedRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-virtual {v13, v0, v12}, Lokhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 729
    :try_start_0
    invoke-virtual {v13}, Lokhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    :try_start_1
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 735
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 739
    :try_start_3
    invoke-virtual {v13, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 741
    :goto_1
    invoke-static/range {p2 .. p2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static/range {p2 .. p2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private processHandshakeFailure(Ljava/net/Socket;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TLS"

    .line 601
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/net/ssl/TrustManager;

    .line 602
    sget-object v3, Lokhttp3/mockwebserver/MockWebServer;->UNTRUSTED_TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 603
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 605
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v3

    .line 604
    invoke-virtual {v0, p1, v2, v3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 607
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 608
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :catch_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    return-void
.end method

.method private readEmptyLine(Lokio/BufferedSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p1

    .line 832
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected empty but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 628
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 636
    :cond_0
    new-instance v11, Lokhttp3/Headers$Builder;

    invoke-direct {v11}, Lokhttp3/Headers$Builder;-><init>()V

    const-wide/16 v1, -0x1

    const/4 v12, 0x0

    move-wide v5, v1

    move v3, v12

    move v4, v3

    .line 641
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    .line 642
    sget-object v13, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v13, v11, v7}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V

    .line 643
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    cmp-long v15, v5, v1

    if-nez v15, :cond_2

    const-string v15, "content-length:"

    .line 644
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v5, 0xf

    .line 645
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :cond_2
    const-string v7, "transfer-encoding:"

    .line 647
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x12

    .line 648
    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v15, "chunked"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    :cond_3
    const-string v7, "expect:"

    .line 651
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x7

    .line 652
    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v13, "100-continue"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 657
    :cond_4
    iget-object v7, v8, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {v7}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v7

    if-eqz v3, :cond_5

    .line 658
    sget-object v3, Lokhttp3/mockwebserver/SocketPolicy;->EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

    if-eq v7, v3, :cond_6

    :cond_5
    sget-object v3, Lokhttp3/mockwebserver/SocketPolicy;->CONTINUE_ALWAYS:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v7, v3, :cond_7

    :cond_6
    const-string v3, "HTTP/1.1 100 Continue\r\n"

    .line 659
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v3, "Content-Length: 0\r\n"

    .line 660
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v3, "\r\n"

    .line 661
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 662
    invoke-interface/range {p3 .. p3}, Lokio/BufferedSink;->flush()V

    .line 666
    :cond_7
    new-instance v13, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;

    iget-wide v14, v8, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    invoke-direct {v13, v14, v15}, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;-><init>(J)V

    .line 667
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 668
    iget-object v0, v8, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {v0}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v15

    cmp-long v0, v5, v1

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_8

    const/16 v16, 0x1

    goto :goto_1

    :cond_8
    move/from16 v16, v12

    .line 671
    :goto_1
    invoke-static {v13}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v7}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_b

    .line 675
    :goto_2
    invoke-interface/range {p2 .. p2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    .line 677
    invoke-direct {v8, v9}, Lokhttp3/mockwebserver/MockWebServer;->readEmptyLine(Lokio/BufferedSource;)V

    const/16 v16, 0x1

    goto :goto_3

    .line 680
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-static {v13}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    int-to-long v5, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v7}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    .line 682
    invoke-direct {v8, v9}, Lokhttp3/mockwebserver/MockWebServer;->readEmptyLine(Lokio/BufferedSource;)V

    goto :goto_2

    :cond_b
    move/from16 v16, v12

    :goto_3
    const/16 v0, 0x20

    .line 686
    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v10, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v16, :cond_d

    .line 687
    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    .line 688
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request must not have a body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_d
    :goto_4
    new-instance v0, Lokhttp3/mockwebserver/RecordedRequest;

    invoke-virtual {v11}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v11

    invoke-static {v13}, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->access$2000(Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;)J

    move-result-wide v1

    .line 692
    invoke-static {v13}, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->access$2100(Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;)Lokio/Buffer;

    move-result-object v15

    move-object v9, v0

    move-object v12, v14

    move-wide v13, v1

    move/from16 v16, p4

    move-object/from16 v17, p1

    invoke-direct/range {v9 .. v17}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V

    return-object v0

    :catch_0
    return-object v1
.end method

.method private serveConnection(Ljava/net/Socket;)V
    .locals 5

    .line 437
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/mockwebserver/MockWebServer$3;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "MockWebServer %s"

    invoke-direct {v1, p0, v3, v2, p1}, Lokhttp3/mockwebserver/MockWebServer$3;-><init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/lang/String;[Ljava/lang/Object;Ljava/net/Socket;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sleepIfDelayed(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 770
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 772
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized start(Ljava/net/InetSocketAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 355
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z

    const-string v1, "MockWebServer"

    const/4 v2, 0x0

    .line 358
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    .line 359
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 360
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    .line 362
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 363
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    const/16 v3, 0x32

    invoke-virtual {v1, p1, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 365
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    .line 366
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/mockwebserver/MockWebServer$2;

    const-string v3, "MockWebServer %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-direct {v1, p0, v3, v0}, Lokhttp3/mockwebserver/MockWebServer$2;-><init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 355
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start() already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-nez v2, :cond_0

    return-void

    .line 786
    :cond_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 787
    invoke-virtual/range {p1 .. p1}, Lokhttp3/mockwebserver/MockResponse;->getThrottleBytesPerPeriod()J

    move-result-wide v3

    .line 788
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Lokhttp3/mockwebserver/MockResponse;->getThrottlePeriod(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    const-wide/16 v9, 0x2

    .line 790
    div-long v9, p5, v9

    const/4 v5, 0x1

    const/4 v11, 0x0

    if-eqz p7, :cond_1

    .line 792
    invoke-virtual/range {p1 .. p1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v6

    sget-object v12, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v6, v12, :cond_2

    goto :goto_0

    .line 793
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v6

    sget-object v12, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v6, v12, :cond_2

    goto :goto_0

    :cond_2
    move v5, v11

    :goto_0
    move-wide/from16 v12, p5

    .line 795
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v11

    :goto_2
    int-to-long v14, v6

    cmp-long v6, v14, v3

    if-gez v6, :cond_7

    sub-long v0, v3, v14

    .line 798
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide/from16 v16, v3

    if-eqz v5, :cond_3

    sub-long v3, v12, v9

    .line 801
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_3
    move-wide v3, v0

    move-object/from16 v0, p3

    .line 804
    invoke-interface {v0, v2, v3, v4}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v18, -0x1

    cmp-long v1, v3, v18

    if-nez v1, :cond_4

    return-void

    :cond_4
    move-object/from16 v1, p4

    .line 807
    invoke-interface {v1, v2, v3, v4}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 808
    invoke-interface/range {p4 .. p4}, Lokio/BufferedSink;->flush()V

    add-long/2addr v14, v3

    long-to-int v6, v14

    sub-long/2addr v12, v3

    if-eqz v5, :cond_5

    cmp-long v3, v12, v9

    if-nez v3, :cond_5

    .line 813
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->close()V

    return-void

    :cond_5
    const-wide/16 v3, 0x0

    cmp-long v14, v12, v3

    if-nez v14, :cond_6

    return-void

    :cond_6
    move-wide v0, v3

    move-wide/from16 v3, v16

    goto :goto_2

    :cond_7
    move-wide/from16 v16, v3

    move-wide v3, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    cmp-long v6, v7, v3

    if-eqz v6, :cond_8

    .line 822
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 824
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_8
    :goto_3
    move-wide v0, v3

    move-wide/from16 v3, v16

    goto :goto_1

    :cond_9
    return-void
.end method

.method private writeHttpResponse(Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0}, Lokhttp3/mockwebserver/MockResponse;->getHeadersDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lokhttp3/mockwebserver/MockWebServer;->sleepIfDelayed(J)V

    .line 748
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v0, "\r\n"

    .line 749
    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 751
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v1

    .line 752
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 753
    invoke-virtual {v1, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v4, ": "

    .line 754
    invoke-interface {p2, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 755
    invoke-virtual {v1, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 756
    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 758
    :cond_0
    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 759
    invoke-interface {p2}, Lokio/BufferedSink;->flush()V

    .line 761
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getBody()Lokio/Buffer;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    .line 763
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0}, Lokhttp3/mockwebserver/MockResponse;->getBodyDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lokhttp3/mockwebserver/MockWebServer;->sleepIfDelayed(J)V

    .line 764
    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v9

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v11}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized after()V
    .locals 4

    monitor-enter p0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 432
    :try_start_1
    sget-object v1, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "MockWebServer shutdown failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized before()V
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 154
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->shutdown()V

    return-void
.end method

.method public enqueue(Lokhttp3/mockwebserver/MockResponse;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    check-cast v0, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-virtual {p1}, Lokhttp3/mockwebserver/MockResponse;->clone()Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/mockwebserver/QueueDispatcher;->enqueueResponse(Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 165
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 159
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 160
    iget v0, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    .line 308
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public noClientAuth()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    return-void
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public requestClientAuth()V
    .locals 1

    const/4 v0, 0x1

    .line 266
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    return-void
.end method

.method public requireClientAuth()V
    .locals 1

    const/4 v0, 0x2

    .line 276
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    return-void
.end method

.method public setBodyLimit(J)V
    .locals 0

    .line 201
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    return-void
.end method

.method public setDispatcher(Lokhttp3/mockwebserver/Dispatcher;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 842
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    return-void

    .line 841
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setProtocolNegotiationEnabled(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    return-void
.end method

.method public setProtocols(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-static {p1}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 221
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    :goto_0
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 226
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 227
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 229
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 232
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-void

    .line 230
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 180
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    return-void

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setServerSocketFactory() must be called before start()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 412
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 413
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :try_start_2
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 426
    monitor-exit p0

    return-void

    .line 421
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gave up waiting for executor to shut down"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    :catch_0
    :try_start_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 413
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "shutdown() before start()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockWebServer;->start(I)V

    return-void
.end method

.method public start(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "localhost"

    .line 335
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lokhttp3/mockwebserver/MockWebServer;->start(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public start(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lokhttp3/mockwebserver/MockWebServer;->start(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public takeRequest()Lokhttp3/mockwebserver/RecordedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/mockwebserver/RecordedRequest;

    return-object v0
.end method

.method public takeRequest(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/mockwebserver/RecordedRequest;

    return-object p1
.end method

.method public toProxyAddress()Ljava/net/Proxy;
    .locals 3

    .line 169
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 170
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 172
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v2, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MockWebServer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 2

    .line 189
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 190
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public useHttps(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 0

    .line 245
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 246
    iput-boolean p2, p0, Lokhttp3/mockwebserver/MockWebServer;->tunnelProxy:Z

    return-void
.end method
