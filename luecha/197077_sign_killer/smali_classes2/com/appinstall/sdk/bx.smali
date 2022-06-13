.class public Lcom/appinstall/sdk/bx;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/appinstall/sdk/cg;

.field private b:Ljavax/net/ssl/SSLSocketFactory;

.field private c:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HP"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/bx;->a:Lcom/appinstall/sdk/cg;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/appinstall/sdk/by;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-static {p1}, Lcom/appinstall/sdk/by;->a(Ljava/lang/String;)Lcom/appinstall/sdk/by;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/appinstall/sdk/by;

    sget-object v2, Lcom/appinstall/sdk/by$a;->b:Lcom/appinstall/sdk/by$a;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/appinstall/sdk/by;->b(Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/net/HttpURLConnection;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[BLjava/util/HashMap;)Lcom/appinstall/sdk/by;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of p2, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/appinstall/sdk/bx;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p0, Lcom/appinstall/sdk/bx;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    iget-object p2, p0, Lcom/appinstall/sdk/bx;->c:Ljavax/net/ssl/HostnameVerifier;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p0, Lcom/appinstall/sdk/bx;->c:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string p2, "POST"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, v0, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "Connection"

    const-string p4, "close"

    invoke-virtual {p1, p2, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-direct {p0, p1, p3}, Lcom/appinstall/sdk/bx;->a(Ljava/net/HttpURLConnection;[B)V

    invoke-direct {p0, p1}, Lcom/appinstall/sdk/bx;->a(Ljava/net/HttpURLConnection;)Lcom/appinstall/sdk/by;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Lcom/appinstall/sdk/by;

    sget-object p3, Lcom/appinstall/sdk/by$a;->b:Lcom/appinstall/sdk/by$a;

    const/4 p4, -0x1

    invoke-direct {p1, p3, p4}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appinstall/sdk/by;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object p1

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p2
.end method
