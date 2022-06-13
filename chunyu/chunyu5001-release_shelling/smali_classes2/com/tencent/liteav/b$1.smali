.class Lcom/tencent/liteav/b$1;
.super Ljava/lang/Object;
.source "TXCDataReport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/b;->c()Lcom/tencent/liteav/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/liteav/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/b;Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/tencent/liteav/b$1;->b:Lcom/tencent/liteav/b;

    iput-object p2, p0, Lcom/tencent/liteav/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 349
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/network/a/a/a;->c()Lcom/tencent/liteav/network/a/c;

    move-result-object v0

    .line 350
    new-instance v1, Lcom/tencent/liteav/network/a/b;

    iget-object v2, p0, Lcom/tencent/liteav/b$1;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/network/a/b;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/network/a/c;->a(Lcom/tencent/liteav/network/a/b;Lcom/tencent/liteav/network/a/d;)[Lcom/tencent/liteav/network/a/e;

    move-result-object v0

    .line 352
    array-length v1, v0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 353
    invoke-virtual {v5}, Lcom/tencent/liteav/network/a/e;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 354
    iget-object v5, v5, Lcom/tencent/liteav/network/a/e;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/liteav/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 360
    :cond_1
    :goto_1
    invoke-static {}, Lcom/tencent/liteav/b;->e()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/b$1;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/tencent/liteav/b$a;->b:Lcom/tencent/liteav/b$a;

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/tencent/liteav/b$a;->c:Lcom/tencent/liteav/b$a;

    :goto_2
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {}, Lcom/tencent/liteav/b;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/liteav/b$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isTencent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 364
    invoke-static {}, Lcom/tencent/liteav/b;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "check dns failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
