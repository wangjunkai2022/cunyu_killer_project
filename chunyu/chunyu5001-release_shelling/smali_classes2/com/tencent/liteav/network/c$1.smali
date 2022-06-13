.class Lcom/tencent/liteav/network/c$1;
.super Ljava/lang/Object;
.source "TXCHttpURLClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/c;->a(Ljava/lang/String;Lcom/tencent/liteav/network/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/liteav/network/c$b;

.field final synthetic c:Lcom/tencent/liteav/network/c;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/c;Ljava/lang/String;Lcom/tencent/liteav/network/c$b;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tencent/liteav/network/c$1;->c:Lcom/tencent/liteav/network/c;

    iput-object p2, p0, Lcom/tencent/liteav/network/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/liteav/network/c$1;->b:Lcom/tencent/liteav/network/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 49
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/tencent/liteav/network/c$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v2, 0x3a98

    .line 51
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 52
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 53
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 54
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/tencent/liteav/network/c$1;->b:Lcom/tencent/liteav/network/c$b;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/tencent/liteav/network/c$1;->b:Lcom/tencent/liteav/network/c$b;

    invoke-interface {v1}, Lcom/tencent/liteav/network/c$b;->a()V

    :cond_0
    return-void

    .line 60
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/network/c$1;->b:Lcom/tencent/liteav/network/c$b;

    if-eqz v1, :cond_3

    .line 67
    iget-object v1, p0, Lcom/tencent/liteav/network/c$1;->b:Lcom/tencent/liteav/network/c$b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/liteav/network/c$b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 69
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    iget-object v1, p0, Lcom/tencent/liteav/network/c$1;->b:Lcom/tencent/liteav/network/c$b;

    if-eqz v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/tencent/liteav/network/c$1;->b:Lcom/tencent/liteav/network/c$b;

    invoke-interface {v1}, Lcom/tencent/liteav/network/c$b;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    if-eqz v0, :cond_5

    .line 75
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_6

    .line 75
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    :cond_6
    :goto_4
    throw v1
.end method
