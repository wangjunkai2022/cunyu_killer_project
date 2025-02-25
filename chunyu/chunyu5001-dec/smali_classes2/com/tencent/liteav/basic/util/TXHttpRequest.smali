.class public Lcom/tencent/liteav/basic/util/TXHttpRequest;
.super Ljava/lang/Object;
.source "TXHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/basic/util/TXHttpRequest$b;,
        Lcom/tencent/liteav/basic/util/TXHttpRequest$c;,
        Lcom/tencent/liteav/basic/util/TXHttpRequest$a;,
        Lcom/tencent/liteav/basic/util/TXHttpRequest$d;
    }
.end annotation


# static fields
.field private static final CON_TIMEOUT:I = 0x1388

.field private static final READ_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "TXHttpRequest"


# instance fields
.field private mNativeHttps:J

.field private mSock5ProxyConfig:Lcom/tencent/liteav/basic/util/TXHttpRequest$d;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest;->mNativeHttps:J

    .line 45
    new-instance v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;-><init>(Lcom/tencent/liteav/basic/util/TXHttpRequest$1;)V

    iput-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest;->mSock5ProxyConfig:Lcom/tencent/liteav/basic/util/TXHttpRequest$d;

    .line 70
    iput-wide p1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest;->mNativeHttps:J

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/liteav/basic/util/TXHttpRequest;)Lcom/tencent/liteav/basic/util/TXHttpRequest$d;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest;->mSock5ProxyConfig:Lcom/tencent/liteav/basic/util/TXHttpRequest$d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/liteav/basic/util/TXHttpRequest;Landroid/os/Handler;Lcom/tencent/liteav/basic/util/TXHttpRequest$c;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->notifyResult(Landroid/os/Handler;Lcom/tencent/liteav/basic/util/TXHttpRequest$c;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/liteav/basic/util/TXHttpRequest;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest;->mNativeHttps:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/tencent/liteav/basic/util/TXHttpRequest;JI[BLjava/util/Map;J)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p7}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->nativeOnRecvMessage(JI[BLjava/util/Map;J)V

    return-void
.end method

.method public static downloadFileInternal(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/basic/util/TXHttpRequest$d;)Lcom/tencent/liteav/basic/util/TXHttpRequest$c;
    .locals 7

    .line 75
    new-instance v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 80
    :try_start_0
    iget-object v2, p2, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p2, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->b:I

    if-lez v2, :cond_0

    .line 81
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p2, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->a:Ljava/lang/String;

    iget v6, p2, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->b:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 83
    new-instance v3, Lcom/tencent/liteav/basic/util/TXHttpRequest$a;

    iget-object v4, p2, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->c:Ljava/lang/String;

    iget-object p2, p2, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->d:Ljava/lang/String;

    invoke-direct {v3, v4, p2}, Lcom/tencent/liteav/basic/util/TXHttpRequest$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 87
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    .line 89
    :cond_1
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    :goto_1
    move-object v1, p2

    const-string p2, "GET"

    .line 92
    invoke-virtual {v1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 93
    invoke-virtual {v1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/16 v2, 0x1388

    .line 94
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 95
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 96
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 101
    invoke-static {v1}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->getHeaders(Ljavax/net/ssl/HttpsURLConnection;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->d:Ljava/util/Map;

    .line 102
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 103
    iput p2, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    if-eqz v1, :cond_3

    goto :goto_3

    .line 98
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download file failed with "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->b:Ljava/lang/String;

    const-string p2, "TXHttpRequest"

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download file failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 109
    :goto_3
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    return-object v0

    :goto_4
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 111
    :cond_4
    throw p0
.end method

.method private static getHeaders(Ljavax/net/ssl/HttpsURLConnection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HttpsURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    .line 236
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getHttpsPostRsp(Ljava/util/Map;Ljava/lang/String;[BZLcom/tencent/liteav/basic/util/TXHttpRequest$d;)Lcom/tencent/liteav/basic/util/TXHttpRequest$c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[BZ",
            "Lcom/tencent/liteav/basic/util/TXHttpRequest$d;",
            ")",
            "Lcom/tencent/liteav/basic/util/TXHttpRequest$c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHttpsPostRsp->request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXHttpRequest"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHttpsPostRsp->data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 158
    iget-object v0, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->b:I

    if-lez v0, :cond_0

    .line 159
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->a:Ljava/lang/String;

    iget v5, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->b:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 161
    new-instance v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$a;

    iget-object v3, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->c:Ljava/lang/String;

    iget-object p4, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->d:Ljava/lang/String;

    invoke-direct {v2, v3, p4}, Lcom/tencent/liteav/basic/util/TXHttpRequest$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    new-instance p4, Ljava/net/URL;

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {p4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    :goto_1
    const/4 p4, 0x1

    .line 172
    invoke-virtual {p1, p4}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 173
    invoke-virtual {p1, p4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/16 p4, 0x1388

    .line 174
    invoke-virtual {p1, p4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 175
    invoke-virtual {p1, p4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string p4, "POST"

    .line 176
    invoke-virtual {p1, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 179
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, v0, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, "Connection"

    const-string p4, "Keep-Alive"

    .line 184
    invoke-virtual {p1, p0, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_3
    new-instance p0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-direct {p0, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 189
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 190
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    .line 191
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V

    .line 193
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p0

    .line 194
    new-instance p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    invoke-direct {p4}, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;-><init>()V

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_8

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_8

    .line 196
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 197
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    :goto_3
    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 200
    invoke-virtual {v0, p2, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 202
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 204
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->d:Ljava/util/Map;

    .line 205
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    .line 206
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 208
    iget-object v4, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 212
    :cond_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-nez p3, :cond_7

    .line 214
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 216
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->c:[B

    .line 217
    iput v3, p4, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getHttpsPostRsp->rsp size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    .line 220
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getHttpsPostRsp->response code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "response: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeOnRecvMessage(JI[BLjava/util/Map;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method private notifyResult(Landroid/os/Handler;Lcom/tencent/liteav/basic/util/TXHttpRequest$c;J)V
    .locals 9

    if-eqz p1, :cond_0

    .line 140
    new-instance v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/tencent/liteav/basic/util/TXHttpRequest$2;-><init>(Lcom/tencent/liteav/basic/util/TXHttpRequest;Lcom/tencent/liteav/basic/util/TXHttpRequest$c;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 147
    :cond_0
    iget-wide v2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest;->mNativeHttps:J

    iget v4, p2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    iget-object v5, p2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->c:[B

    iget-object v6, p2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->d:Ljava/util/Map;

    move-object v1, p0

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->nativeOnRecvMessage(JI[BLjava/util/Map;J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public asyncPostRequest(Ljava/util/Map;[B[BZJLcom/tencent/liteav/basic/util/TXHttpRequest$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B[BZJ",
            "Lcom/tencent/liteav/basic/util/TXHttpRequest$d;",
            ")V"
        }
    .end annotation

    .line 229
    new-instance v7, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;-><init>(Lcom/tencent/liteav/basic/util/TXHttpRequest;Ljava/util/Map;ZJLcom/tencent/liteav/basic/util/TXHttpRequest$d;)V

    const/4 p1, 0x2

    new-array p1, p1, [[B

    const/4 p4, 0x0

    aput-object p2, p1, p4

    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 230
    invoke-virtual {v7, p1}, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 10

    .line 124
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v4, v1

    .line 127
    :goto_0
    new-instance v9, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/tencent/liteav/basic/util/TXHttpRequest$1;-><init>(Lcom/tencent/liteav/basic/util/TXHttpRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;JLjava/util/concurrent/ExecutorService;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x0

    return p1
.end method

.method public sendHttpsRequest(Ljava/util/Map;Ljava/lang/String;[BZJ)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[BZJ)I"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendHttpsRequest->enter action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p3

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TXHttpRequest"

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v0, p0

    iget-object v10, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest;->mSock5ProxyConfig:Lcom/tencent/liteav/basic/util/TXHttpRequest$d;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->asyncPostRequest(Ljava/util/Map;[B[BZJLcom/tencent/liteav/basic/util/TXHttpRequest$d;)V

    const/4 v1, 0x0

    return v1
.end method

.method public setSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest;->mSock5ProxyConfig:Lcom/tencent/liteav/basic/util/TXHttpRequest$d;

    iput-object p1, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->a:Ljava/lang/String;

    .line 49
    iput p2, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->b:I

    .line 50
    iput-object p3, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->c:Ljava/lang/String;

    .line 51
    iput-object p4, v0, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->d:Ljava/lang/String;

    return-void
.end method
