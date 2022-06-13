.class public Lcom/netease/nis/captcha/e;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/captcha/e$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/nis/captcha/e;->a:Landroid/os/Handler;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/netease/nis/captcha/e;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/captcha/e;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/netease/nis/captcha/e$b;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get request url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s"

    invoke-static {v1, v0}, Lcom/netease/nis/captcha/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/netease/nis/captcha/e;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/netease/nis/captcha/e$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/nis/captcha/e$a;-><init>(Ljava/lang/String;Lcom/netease/nis/captcha/e$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;ZZLjava/lang/String;Landroid/net/Network;Lcom/netease/nis/captcha/e$b;)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/netease/nis/captcha/e;->b(Ljava/lang/String;ZZLjava/lang/String;Landroid/net/Network;Lcom/netease/nis/captcha/e$b;)V

    return-void
.end method

.method private static b(Ljava/lang/String;ZZLjava/lang/String;Landroid/net/Network;Lcom/netease/nis/captcha/e$b;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p0, v3, :cond_0

    .line 3
    invoke-virtual {p4, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/16 v2, 0x2710

    .line 7
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p1, :cond_1

    const-string v3, "POST"

    .line 11
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_1

    :cond_1
    const-string v3, "GET"

    .line 14
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 17
    :goto_1
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 18
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v2, "Content-Type"

    if-eqz p2, :cond_2

    :try_start_2
    const-string v3, "application/json"

    .line 20
    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v3, "application/x-www-form-urlencoded"

    .line 22
    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v2, "connection"

    const-string v3, "Keep-Alive"

    .line 24
    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v2, "UTF-8"

    if-eqz p3, :cond_3

    .line 27
    :try_start_3
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 28
    :try_start_4
    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 29
    array-length v4, v0

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 30
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 31
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    move-object v0, v3

    goto/16 :goto_8

    .line 33
    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 34
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    :goto_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 38
    new-instance p4, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>([B)V

    .line 39
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 41
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 43
    invoke-interface {p5, p2}, Lcom/netease/nis/captcha/e$b;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 44
    :cond_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_7

    const-string v2, "Location"

    .line 45
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 47
    invoke-static/range {v3 .. v8}, Lcom/netease/nis/captcha/e;->b(Ljava/lang/String;ZZLjava/lang/String;Landroid/net/Network;Lcom/netease/nis/captcha/e$b;)V

    goto :goto_5

    .line 49
    :cond_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const-string p2, "\u83b7\u53d6\u91cd\u5b9a\u5411url\u5931\u8d25"

    invoke-interface {p5, p1, p2}, Lcom/netease/nis/captcha/e$b;->onError(ILjava/lang/String;)V

    goto :goto_5

    .line 52
    :cond_7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const-string p2, "\u4e0e\u670d\u52a1\u7aef\u5efa\u7acb\u8fde\u63a5\u5931\u8d25"

    invoke-interface {p5, p1, p2}, Lcom/netease/nis/captcha/e$b;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    if-eqz p0, :cond_8

    .line 59
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v0, :cond_a

    .line 63
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_9

    :catch_1
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :catch_2
    move-exception p1

    goto :goto_8

    :goto_6
    move-object v3, v0

    :goto_7
    move-object v0, p0

    move-object p0, p1

    goto :goto_a

    :catchall_1
    move-exception p0

    move-object v3, v0

    goto :goto_a

    :catch_3
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 66
    :goto_8
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x2711

    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u7f51\u7edc\u8fde\u63a5\u51fa\u73b0\u5f02\u5e38:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p2, p1}, Lcom/netease/nis/captcha/e$b;->onError(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p0, :cond_9

    .line 70
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    if-eqz v0, :cond_a

    .line 74
    :try_start_8
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    :catch_4
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_9
    return-void

    :catchall_2
    move-exception p1

    goto :goto_6

    :goto_a
    if-eqz v0, :cond_b

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    if-eqz v3, :cond_c

    .line 81
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_b

    :catch_5
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/netease/nis/captcha/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_c
    :goto_b
    throw p0
.end method
