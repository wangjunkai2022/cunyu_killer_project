.class Lcom/tencent/liteav/network/i$2;
.super Ljava/lang/Thread;
.source "TXCVodPlayerNetApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/tencent/liteav/network/i;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/i;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/tencent/liteav/network/i$2;->g:Lcom/tencent/liteav/network/i;

    iput p3, p0, Lcom/tencent/liteav/network/i$2;->a:I

    iput-object p4, p0, Lcom/tencent/liteav/network/i$2;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/liteav/network/i$2;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/liteav/network/i$2;->d:Ljava/lang/String;

    iput p7, p0, Lcom/tencent/liteav/network/i$2;->e:I

    iput-object p8, p0, Lcom/tencent/liteav/network/i$2;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "TXCVodPlayerNetApi"

    const/4 v1, -0x2

    .line 63
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 65
    iget-object v2, p0, Lcom/tencent/liteav/network/i$2;->g:Lcom/tencent/liteav/network/i;

    invoke-static {v2}, Lcom/tencent/liteav/network/i;->a(Lcom/tencent/liteav/network/i;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v7, "%s/%d/%s"

    if-eqz v2, :cond_0

    :try_start_1
    new-array v2, v6, [Ljava/lang/Object;

    const-string v6, "https://playvideo.qcloud.com/getplayinfo/v2"

    aput-object v6, v2, v5

    .line 66
    iget v5, p0, Lcom/tencent/liteav/network/i$2;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/tencent/liteav/network/i$2;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    const-string v6, "http://playvideo.qcloud.com/getplayinfo/v2"

    aput-object v6, v2, v5

    .line 68
    iget v5, p0, Lcom/tencent/liteav/network/i$2;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/tencent/liteav/network/i$2;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    :goto_0
    iget-object v3, p0, Lcom/tencent/liteav/network/i$2;->g:Lcom/tencent/liteav/network/i;

    iget-object v4, p0, Lcom/tencent/liteav/network/i$2;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/liteav/network/i$2;->d:Ljava/lang/String;

    iget v6, p0, Lcom/tencent/liteav/network/i$2;->e:I

    iget-object v7, p0, Lcom/tencent/liteav/network/i$2;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/liteav/network/i;->a(Lcom/tencent/liteav/network/i;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getplayinfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 79
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 81
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 82
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 83
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/tencent/liteav/network/i$2;->g:Lcom/tencent/liteav/network/i;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/liteav/network/i;->a(Lcom/tencent/liteav/network/i;Ljava/lang/String;)V

    goto :goto_2

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/tencent/liteav/network/i$2;->g:Lcom/tencent/liteav/network/i;

    const-string v3, "Request failed"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/network/i;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/liteav/network/i$2;->g:Lcom/tencent/liteav/network/i;

    const-string v2, "The request was exceptional"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/network/i;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 96
    :catch_1
    iget-object v0, p0, Lcom/tencent/liteav/network/i$2;->g:Lcom/tencent/liteav/network/i;

    const-string v2, "Incorrect format"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/network/i;->a(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method
