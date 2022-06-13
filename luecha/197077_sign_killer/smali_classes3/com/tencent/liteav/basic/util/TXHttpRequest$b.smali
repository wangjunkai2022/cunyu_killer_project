.class Lcom/tencent/liteav/basic/util/TXHttpRequest$b;
.super Landroid/os/AsyncTask;
.source "TXHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/basic/util/TXHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[B",
        "Ljava/lang/Void;",
        "Lcom/tencent/liteav/basic/util/TXHttpRequest$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/util/TXHttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:J

.field private f:Lcom/tencent/liteav/basic/util/TXHttpRequest$d;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/basic/util/TXHttpRequest;Ljava/util/Map;ZJLcom/tencent/liteav/basic/util/TXHttpRequest$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/basic/util/TXHttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ",
            "Lcom/tencent/liteav/basic/util/TXHttpRequest$d;",
            ")V"
        }
    .end annotation

    .line 260
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 256
    iput-boolean v1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->d:Z

    const-wide/16 v1, 0x0

    .line 257
    iput-wide v1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->e:J

    .line 261
    iput-object p2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->c:Ljava/util/Map;

    .line 262
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->a:Ljava/lang/ref/WeakReference;

    .line 263
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->b:Landroid/os/Handler;

    goto :goto_0

    .line 267
    :cond_0
    iput-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->b:Landroid/os/Handler;

    .line 269
    :goto_0
    iput-boolean p3, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->d:Z

    .line 270
    iput-wide p4, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->e:J

    .line 271
    iput-object p6, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->f:Lcom/tencent/liteav/basic/util/TXHttpRequest$d;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/util/TXHttpRequest$b;)J
    .locals 2

    .line 252
    iget-wide v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->e:J

    return-wide v0
.end method


# virtual methods
.method protected varargs a([[B)Lcom/tencent/liteav/basic/util/TXHttpRequest$c;
    .locals 9

    const-string v0, "|"

    const-string v1, "TXHttpRequest"

    .line 275
    new-instance v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    invoke-direct {v2}, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;-><init>()V

    const/4 v3, 0x1

    .line 277
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p1, v5

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    const-string v6, "https"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->c:Ljava/util/Map;

    new-instance v6, Ljava/lang/String;

    aget-object v7, p1, v5

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    aget-object p1, p1, v3

    iget-boolean v7, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->d:Z

    iget-object v8, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->f:Lcom/tencent/liteav/basic/util/TXHttpRequest$d;

    invoke-static {v4, v6, p1, v7, v8}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->getHttpsPostRsp(Ljava/util/Map;Ljava/lang/String;[BZLcom/tencent/liteav/basic/util/TXHttpRequest$d;)Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    move-result-object v2

    .line 279
    iput v5, v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    goto :goto_0

    .line 281
    :cond_0
    iput v3, v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    const-string p1, "http request not support"

    .line 282
    iput-object p1, v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->b:Ljava/lang/String;

    .line 287
    iput v3, v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground Exception e="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TXPostRequest->result: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method protected a(Lcom/tencent/liteav/basic/util/TXHttpRequest$c;)V
    .locals 9

    .line 296
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/liteav/basic/util/TXHttpRequest;

    if-eqz v1, :cond_1

    .line 298
    invoke-static {v1}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->access$300(Lcom/tencent/liteav/basic/util/TXHttpRequest;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 300
    new-instance v2, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/tencent/liteav/basic/util/TXHttpRequest$b$1;-><init>(Lcom/tencent/liteav/basic/util/TXHttpRequest$b;Lcom/tencent/liteav/basic/util/TXHttpRequest$c;Lcom/tencent/liteav/basic/util/TXHttpRequest;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TXPostRequest->recvMsg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TXHttpRequest"

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {v1}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->access$300(Lcom/tencent/liteav/basic/util/TXHttpRequest;)J

    move-result-wide v2

    iget v4, p1, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    iget-object v5, p1, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->c:[B

    iget-object v6, p1, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->d:Ljava/util/Map;

    iget-wide v7, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->e:J

    invoke-static/range {v1 .. v8}, Lcom/tencent/liteav/basic/util/TXHttpRequest;->access$400(Lcom/tencent/liteav/basic/util/TXHttpRequest;JI[BLjava/util/Map;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->a([[B)Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 252
    check-cast p1, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/basic/util/TXHttpRequest$b;->a(Lcom/tencent/liteav/basic/util/TXHttpRequest$c;)V

    return-void
.end method
