.class public final Lokhttp3/mockwebserver/RecordedRequest;
.super Ljava/lang/Object;
.source "RecordedRequest.java"


# instance fields
.field private final body:Lokio/Buffer;

.field private final bodySize:J

.field private final chunkSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final handshake:Lokhttp3/Handshake;

.field private final headers:Lokhttp3/Headers;

.field private final method:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final requestLine:Ljava/lang/String;

.field private final requestUrl:Lokhttp3/HttpUrl;

.field private final sequenceNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Headers;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J",
            "Lokio/Buffer;",
            "I",
            "Ljava/net/Socket;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lokhttp3/mockwebserver/RecordedRequest;->headers:Lokhttp3/Headers;

    .line 46
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->chunkSizes:Ljava/util/List;

    .line 47
    iput-wide p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->bodySize:J

    .line 48
    iput-object p6, p0, Lokhttp3/mockwebserver/RecordedRequest;->body:Lokio/Buffer;

    .line 49
    iput p7, p0, Lokhttp3/mockwebserver/RecordedRequest;->sequenceNumber:I

    .line 50
    instance-of p2, p8, Ljavax/net/ssl/SSLSocket;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 52
    :try_start_0
    move-object p4, p8

    check-cast p4, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p4

    invoke-static {p4}, Lokhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object p4

    iput-object p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->handshake:Lokhttp3/Handshake;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 57
    :cond_0
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->handshake:Lokhttp3/Handshake;

    :goto_0
    if-eqz p1, :cond_2

    const/16 p3, 0x20

    .line 61
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    add-int/lit8 p5, p4, 0x1

    .line 62
    invoke-virtual {p1, p3, p5}, Ljava/lang/String;->indexOf(II)I

    move-result p3

    const/4 p6, 0x0

    .line 63
    invoke-virtual {p1, p6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->method:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, p5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p1, "https"

    goto :goto_1

    :cond_1
    const-string p1, "http"

    .line 67
    :goto_1
    invoke-virtual {p8}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-virtual {p8}, Ljava/net/Socket;->getLocalPort()I

    move-result p3

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, p6

    const/4 p1, 0x1

    aput-object p2, p4, p1

    const/4 p1, 0x2

    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, p1

    const/4 p1, 0x3

    iget-object p2, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    aput-object p2, p4, p1

    const-string p1, "%s://%s:%s%s"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestUrl:Lokhttp3/HttpUrl;

    goto :goto_2

    .line 71
    :cond_2
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestUrl:Lokhttp3/HttpUrl;

    .line 72
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->method:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public getBody()Lokio/Buffer;
    .locals 1

    .line 121
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->body:Lokio/Buffer;

    return-object v0
.end method

.method public getBodySize()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->bodySize:J

    return-wide v0
.end method

.method public getChunkSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->chunkSizes:Ljava/util/List;

    return-object v0
.end method

.method public getHandshake()Lokhttp3/Handshake;
    .locals 1

    .line 147
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 95
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestLine()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Lokhttp3/HttpUrl;
    .locals 1

    .line 78
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestUrl:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 134
    iget v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->sequenceNumber:I

    return v0
.end method

.method public getTlsVersion()Lokhttp3/TlsVersion;
    .locals 1

    .line 139
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->handshake:Lokhttp3/Handshake;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUtf8Body()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lokhttp3/mockwebserver/RecordedRequest;->getBody()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    return-object v0
.end method
