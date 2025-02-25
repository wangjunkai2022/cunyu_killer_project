.class Lcom/appinstall/sdk/ad;
.super Lcom/appinstall/sdk/j;


# instance fields
.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Lcom/appinstall/sdk/m;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/m;ILandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    iput-object p3, p0, Lcom/appinstall/sdk/ad;->c:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/appinstall/sdk/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public c()Lcom/appinstall/sdk/by;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->i:Lcom/appinstall/sdk/bi;

    invoke-virtual {p0}, Lcom/appinstall/sdk/ad;->a()I

    move-result v1

    const-string/jumbo v2, "wakeup"

    invoke-virtual {v0, v2, v1}, Lcom/appinstall/sdk/bi;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {p0}, Lcom/appinstall/sdk/ad;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appinstall/sdk/d;->a(J)V

    iget-object v0, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v0}, Lcom/appinstall/sdk/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v0}, Lcom/appinstall/sdk/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appinstall/sdk/by;

    sget-object v2, Lcom/appinstall/sdk/by$a;->c:Lcom/appinstall/sdk/by$a;

    const/16 v3, -0xc

    invoke-direct {v1, v2, v3}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u521d\u59cb\u5316\u65f6\u9519\u8bef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appinstall/sdk/by;->b(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/ad;->c:Landroid/net/Uri;

    const-string v1, "decode-wakeup-url"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    iget-object v4, v4, Lcom/appinstall/sdk/m;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v4}, Lcom/appinstall/sdk/i;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bd"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    iget-object v4, v4, Lcom/appinstall/sdk/m;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v4}, Lcom/appinstall/sdk/i;->l()Ljava/util/List;

    move-result-object v4

    const-string v5, "loI"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iget-object v3, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    invoke-static {v3}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/sdk/m;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v5, Lcom/appinstall/sdk/ae;

    invoke-direct {v5, p0, v4}, Lcom/appinstall/sdk/ae;-><init>(Lcom/appinstall/sdk/ad;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v3, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    iget-object v3, v3, Lcom/appinstall/sdk/m;->f:Lcom/appinstall/sdk/bw;

    iget-object v4, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    invoke-virtual {v4, v2, v1}, Lcom/appinstall/sdk/m;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    invoke-virtual {v2}, Lcom/appinstall/sdk/m;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3, v1, v2, v0}, Lcom/appinstall/sdk/bw;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/appinstall/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/appinstall/sdk/ad;->d:Lcom/appinstall/sdk/m;

    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appinstall/sdk/m;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v4, "The wakeup parameter is invalid"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/appinstall/sdk/cd;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appinstall/sdk/by;

    sget-object v2, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    invoke-direct {v1, v2, v3}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    invoke-virtual {v1, v0}, Lcom/appinstall/sdk/by;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/appinstall/sdk/by;

    sget-object v1, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    invoke-direct {v0, v1, v3}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/by;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "h"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/appinstall/sdk/ad;->c:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "waU"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/appinstall/sdk/by;

    sget-object v1, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    invoke-direct {v0, v1, v3}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/appinstall/sdk/by;

    sget-object v1, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    invoke-direct {v0, v1, v3}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    :goto_1
    invoke-virtual {v0, v4}, Lcom/appinstall/sdk/by;->b(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/appinstall/sdk/ad;->c()Lcom/appinstall/sdk/by;

    move-result-object v0

    return-object v0
.end method
