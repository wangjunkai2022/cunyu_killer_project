.class Lcom/tencent/liteav/e$1;
.super Ljava/lang/Object;
.source "TXCTimeShiftUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/e$a;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tencent/liteav/e$a;

.field final synthetic e:Lcom/tencent/liteav/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/e;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/e$a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    iput p2, p0, Lcom/tencent/liteav/e$1;->a:I

    iput-object p3, p0, Lcom/tencent/liteav/e$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/liteav/e$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/liteav/e$1;->d:Lcom/tencent/liteav/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "TXCTimeShiftUtil"

    .line 66
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/tencent/liteav/e;->a(Lcom/tencent/liteav/e;J)J

    .line 67
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/liteav/e;->a(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    iget v3, p0, Lcom/tencent/liteav/e$1;->a:I

    invoke-static {v1, v3}, Lcom/tencent/liteav/e;->a(Lcom/tencent/liteav/e;I)I

    .line 69
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    iget-object v3, p0, Lcom/tencent/liteav/e$1;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tencent/liteav/e;->b(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    iget-object v3, p0, Lcom/tencent/liteav/e$1;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getStreamIDByStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/liteav/e;->a(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    iget-object v3, p0, Lcom/tencent/liteav/e$1;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getAppNameByStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/liteav/e;->c(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v1}, Lcom/tencent/liteav/e;->a(Lcom/tencent/liteav/e;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    const-string v3, "live"

    invoke-static {v1, v3}, Lcom/tencent/liteav/e;->c(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v1}, Lcom/tencent/liteav/e;->b(Lcom/tencent/liteav/e;)I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v3}, Lcom/tencent/liteav/e;->c(Lcom/tencent/liteav/e;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v3}, Lcom/tencent/liteav/e;->a(Lcom/tencent/liteav/e;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    iget-object v3, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v3}, Lcom/tencent/liteav/e;->d(Lcom/tencent/liteav/e;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "http://%s/timeshift/%s/%s/timeshift.m3u8?delay=0"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    iget-object v7, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v7}, Lcom/tencent/liteav/e;->c(Lcom/tencent/liteav/e;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    iget-object v7, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v7}, Lcom/tencent/liteav/e;->b(Lcom/tencent/liteav/e;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    iget-object v7, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v7}, Lcom/tencent/liteav/e;->d(Lcom/tencent/liteav/e;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    iget-object v4, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v4}, Lcom/tencent/liteav/e;->e(Lcom/tencent/liteav/e;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "http://%s/%s/%s/timeshift.m3u8?delay=0&appid=%s&txKbps=0"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 86
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 87
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 88
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 89
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v3, 0x1388

    .line 90
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 91
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "GET"

    .line 92
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Charsert"

    const-string v4, "UTF-8"

    .line 93
    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "text/plain;"

    .line 94
    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 104
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSeekTime: receive response, strResponse = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v1, v2}, Lcom/tencent/liteav/e;->d(Lcom/tencent/liteav/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 108
    iget-object v2, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/liteav/e;->a(Lcom/tencent/liteav/e;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 111
    iget-object v2, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/tencent/liteav/e;->a(Lcom/tencent/liteav/e;J)J

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSeekTime error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "live start time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v4}, Lcom/tencent/liteav/e;->f(Lcom/tencent/liteav/e;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",currentTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",diff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v4}, Lcom/tencent/liteav/e;->f(Lcom/tencent/liteav/e;)J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/tencent/liteav/e$1;->e:Lcom/tencent/liteav/e;

    invoke-static {v0}, Lcom/tencent/liteav/e;->f(Lcom/tencent/liteav/e;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 119
    iget-object v0, p0, Lcom/tencent/liteav/e$1;->d:Lcom/tencent/liteav/e$a;

    if-eqz v0, :cond_4

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    new-instance v3, Lcom/tencent/liteav/e$1$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/tencent/liteav/e$1$1;-><init>(Lcom/tencent/liteav/e$1;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
