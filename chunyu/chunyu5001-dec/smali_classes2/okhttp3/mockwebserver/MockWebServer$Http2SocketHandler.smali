.class Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "MockWebServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/mockwebserver/MockWebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Http2SocketHandler"
.end annotation


# instance fields
.field private final protocol:Lokhttp3/Protocol;

.field private final sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final socket:Ljava/net/Socket;

.field final synthetic this$0:Lokhttp3/mockwebserver/MockWebServer;


# direct methods
.method private constructor <init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokhttp3/Protocol;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    .line 891
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 894
    iput-object p2, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    .line 895
    iput-object p3, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->protocol:Lokhttp3/Protocol;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokhttp3/Protocol;Lokhttp3/mockwebserver/MockWebServer$1;)V
    .locals 0

    .line 888
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;-><init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokhttp3/Protocol;)V

    return-void
.end method

.method private pushPromises(Lokhttp3/internal/http2/Http2Stream;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/Http2Stream;",
            "Ljava/util/List<",
            "Lokhttp3/mockwebserver/PushPromise;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1022
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/mockwebserver/PushPromise;

    .line 1023
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    iget-object v6, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/mockwebserver/MockWebServer;->url(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->method()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->path()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->headers()Lokhttp3/Headers;

    move-result-object v4

    .line 1028
    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_0

    .line 1029
    new-instance v8, Lokhttp3/internal/http2/Header;

    invoke-virtual {v4, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1031
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->method()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " HTTP/1.1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1032
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 1033
    iget-object v4, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v4}, Lokhttp3/mockwebserver/MockWebServer;->access$1700(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    new-instance v5, Lokhttp3/mockwebserver/RecordedRequest;

    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->headers()Lokhttp3/Headers;

    move-result-object v9

    const-wide/16 v11, 0x0

    new-instance v13, Lokio/Buffer;

    invoke-direct {v13}, Lokio/Buffer;-><init>()V

    iget-object v7, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1034
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v14

    iget-object v15, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    move-object v7, v5

    invoke-direct/range {v7 .. v15}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V

    .line 1033
    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1035
    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->response()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/mockwebserver/MockResponse;->getBody()Lokio/Buffer;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    .line 1037
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v3, v6}, Lokhttp3/internal/http2/Http2Connection;->pushStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v3

    .line 1038
    invoke-virtual {v2}, Lokhttp3/mockwebserver/PushPromise;->response()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->writeResponse(Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/MockResponse;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private readRequest(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 937
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getRequestHeaders()Ljava/util/List;

    move-result-object v1

    .line 938
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 942
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "<:method omitted>"

    const-string v7, "<:path omitted>"

    move-object v8, v6

    move-object v9, v7

    move v6, v4

    move v7, v5

    :goto_0
    if-ge v6, v3, :cond_5

    .line 943
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lokhttp3/internal/http2/Header;

    iget-object v10, v10, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 944
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokhttp3/internal/http2/Header;

    iget-object v11, v11, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-virtual {v11}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    .line 945
    sget-object v12, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {v10, v12}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v8, v11

    goto :goto_2

    .line 947
    :cond_0
    sget-object v12, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {v10, v12}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v9, v11

    goto :goto_2

    .line 949
    :cond_1
    iget-object v12, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->protocol:Lokhttp3/Protocol;

    sget-object v13, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-eq v12, v13, :cond_3

    iget-object v12, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->protocol:Lokhttp3/Protocol;

    sget-object v13, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    if-ne v12, v13, :cond_2

    goto :goto_1

    .line 952
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 950
    :cond_3
    :goto_1
    invoke-virtual {v10}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 954
    :goto_2
    invoke-virtual {v10}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    const-string v12, "expect"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "100-continue"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v7, v4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 959
    :cond_5
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v12

    .line 961
    iget-object v1, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v14

    if-nez v7, :cond_6

    .line 962
    invoke-virtual {v14}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v1

    sget-object v2, Lokhttp3/mockwebserver/SocketPolicy;->EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v1, v2, :cond_6

    .line 963
    new-instance v1, Lokhttp3/internal/http2/Header;

    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v3, "100 Continue"

    .line 964
    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 963
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v5}, Lokhttp3/internal/http2/Http2Stream;->sendResponseHeaders(Ljava/util/List;Z)V

    .line 965
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    goto :goto_3

    :cond_6
    move-object/from16 v2, p1

    move v5, v7

    .line 969
    :goto_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    if-eqz v5, :cond_8

    const-string v3, "content-length"

    .line 971
    invoke-virtual {v12, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 973
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_4

    :cond_7
    const-wide v3, 0x7fffffffffffffffL

    :goto_4
    move-wide/from16 v18, v3

    .line 975
    iget-object v13, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget-object v15, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/http2/Http2Stream;->getSource()Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v16

    const/16 v20, 0x1

    move-object/from16 v17, v1

    invoke-static/range {v13 .. v20}, Lokhttp3/mockwebserver/MockWebServer;->access$2200(Lokhttp3/mockwebserver/MockWebServer;Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    .line 978
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " HTTP/1.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 980
    new-instance v2, Lokhttp3/mockwebserver/RecordedRequest;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v14

    iget-object v3, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 981
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v17

    iget-object v3, v0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    move-object v10, v2

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    invoke-direct/range {v10 .. v18}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V

    return-object v2
.end method

.method private writeResponse(Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 985
    invoke-virtual {p2}, Lokhttp3/mockwebserver/MockResponse;->getSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 987
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/internal/http2/Http2Connection;->setSettings(Lokhttp3/internal/http2/Settings;)V

    .line 990
    :cond_0
    invoke-virtual {p2}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v2

    sget-object v3, Lokhttp3/mockwebserver/SocketPolicy;->NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v2, v3, :cond_1

    return-void

    .line 993
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 994
    invoke-virtual {p2}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, " "

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 995
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    .line 999
    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v5, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-direct {v4, v5, v3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-virtual {p2}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v3

    .line 1001
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    move-result v4

    const/4 v5, 0x0

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_2

    .line 1002
    new-instance v8, Lokhttp3/internal/http2/Header;

    invoke-virtual {v3, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1005
    :cond_2
    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v4}, Lokhttp3/mockwebserver/MockResponse;->getHeadersDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Lokhttp3/mockwebserver/MockWebServer;->access$2300(Lokhttp3/mockwebserver/MockWebServer;J)V

    .line 1007
    invoke-virtual {p2}, Lokhttp3/mockwebserver/MockResponse;->getBody()Lokio/Buffer;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1008
    invoke-virtual {p2}, Lokhttp3/mockwebserver/MockResponse;->getPushPromises()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v5, v6

    .line 1009
    :cond_4
    invoke-virtual {p1, v2, v5}, Lokhttp3/internal/http2/Http2Stream;->sendResponseHeaders(Ljava/util/List;Z)V

    .line 1010
    invoke-virtual {p2}, Lokhttp3/mockwebserver/MockResponse;->getPushPromises()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->pushPromises(Lokhttp3/internal/http2/Http2Stream;Ljava/util/List;)V

    if-eqz v3, :cond_5

    .line 1012
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream;->getSink()Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v8

    .line 1013
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2}, Lokhttp3/mockwebserver/MockResponse;->getBodyDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lokhttp3/mockwebserver/MockWebServer;->access$2300(Lokhttp3/mockwebserver/MockWebServer;J)V

    .line 1014
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, p2

    move-object v4, v8

    invoke-static/range {v0 .. v7}, Lokhttp3/mockwebserver/MockWebServer;->access$2200(Lokhttp3/mockwebserver/MockWebServer;Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    .line 1015
    invoke-interface {v8}, Lokio/BufferedSink;->close()V

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 1017
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v1}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_6
    :goto_1
    return-void

    .line 996
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public onStream(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v1

    sget-object v2, Lokhttp3/mockwebserver/SocketPolicy;->RESET_STREAM_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v1, v2, :cond_0

    .line 902
    :try_start_0
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->sequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    invoke-static {v1, v2, v3}, Lokhttp3/mockwebserver/MockWebServer;->access$600(Lokhttp3/mockwebserver/MockWebServer;ILjava/net/Socket;)V

    .line 903
    invoke-virtual {v0}, Lokhttp3/mockwebserver/MockResponse;->getHttp2ErrorCode()I

    move-result v0

    invoke-static {v0}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 906
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 910
    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->readRequest(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/mockwebserver/RecordedRequest;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$1600(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 912
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$1700(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 916
    :try_start_1
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/mockwebserver/Dispatcher;->dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 920
    invoke-virtual {v1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v2

    sget-object v3, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v2, v3, :cond_1

    .line 921
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    return-void

    .line 924
    :cond_1
    invoke-direct {p0, p1, v1}, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->writeResponse(Lokhttp3/internal/http2/Http2Stream;Lokhttp3/mockwebserver/MockResponse;)V

    .line 925
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 926
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " received request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and responded: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " protocol is "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;->protocol:Lokhttp3/Protocol;

    .line 927
    invoke-virtual {v0}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 926
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 930
    :cond_2
    invoke-virtual {v1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v0

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v0, v1, :cond_3

    .line 931
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Stream;->getConnection()Lokhttp3/internal/http2/Http2Connection;

    move-result-object p1

    .line 932
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_3
    return-void

    :catch_1
    move-exception p1

    .line 918
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
