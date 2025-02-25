.class Lcom/appinstall/sdk/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appinstall/sdk/bl;

.field final synthetic b:Lcom/appinstall/sdk/m;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/m;Lcom/appinstall/sdk/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iput-object p2, p0, Lcom/appinstall/sdk/w;->a:Lcom/appinstall/sdk/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)J
    .locals 2

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_0
    const/16 v0, 0x9

    if-ge p1, v0, :cond_1

    const-wide/16 v0, 0xa

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x3c

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v0}, Lcom/appinstall/sdk/d;->c()Lcom/appinstall/sdk/e;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    iget-object v1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/f;->a(Ljava/lang/String;)Lcom/appinstall/sdk/e;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/appinstall/sdk/e;->a:Lcom/appinstall/sdk/e;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v1}, Lcom/appinstall/sdk/f;->e()V

    :cond_1
    sget-object v1, Lcom/appinstall/sdk/e;->a:Lcom/appinstall/sdk/e;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/appinstall/sdk/e;->c:Lcom/appinstall/sdk/e;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/appinstall/sdk/e;->e:Lcom/appinstall/sdk/e;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/appinstall/sdk/e;->d:Lcom/appinstall/sdk/e;

    if-ne v0, v1, :cond_15

    iget-object v1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v1}, Lcom/appinstall/sdk/f;->c()Lcom/appinstall/sdk/g;

    move-result-object v1

    iget-object v3, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v3, v3, Lcom/appinstall/sdk/m;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v3, v1}, Lcom/appinstall/sdk/g;->a(Lcom/appinstall/sdk/g;)V

    iget-object v1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v1}, Lcom/appinstall/sdk/g;->i()V

    iget-object v1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v1, v0}, Lcom/appinstall/sdk/d;->a(Lcom/appinstall/sdk/e;)V

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v0}, Lcom/appinstall/sdk/d;->d()V

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->i:Lcom/appinstall/sdk/bi;

    invoke-virtual {v0, v2}, Lcom/appinstall/sdk/bi;->a(Z)V

    :goto_0
    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v0}, Lcom/appinstall/sdk/m;->e(Lcom/appinstall/sdk/m;)V

    goto/16 :goto_b

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    sget-object v1, Lcom/appinstall/sdk/e;->b:Lcom/appinstall/sdk/e;

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/d;->a(Lcom/appinstall/sdk/e;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v3, p0, Lcom/appinstall/sdk/w;->a:Lcom/appinstall/sdk/bl;

    const-string/jumbo v4, "\u83b7\u53d6\u5230 %s"

    const/4 v5, 0x1

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v3}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/sdk/m;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v6, Lcom/appinstall/sdk/x;

    invoke-direct {v6, p0, v1}, Lcom/appinstall/sdk/x;-><init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    move v3, v5

    goto :goto_3

    :cond_4
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/appinstall/sdk/bl;->b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/appinstall/sdk/w;->a:Lcom/appinstall/sdk/bl;

    invoke-virtual {v3}, Lcom/appinstall/sdk/bl;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "pbH"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v3, :cond_6

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v6, v3, v2

    invoke-static {v4, v3}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/appinstall/sdk/w;->a:Lcom/appinstall/sdk/bl;

    invoke-virtual {v3, v5}, Lcom/appinstall/sdk/bl;->b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/appinstall/sdk/w;->a:Lcom/appinstall/sdk/bl;

    invoke-virtual {v3}, Lcom/appinstall/sdk/bl;->a()Ljava/lang/String;

    move-result-object v3

    const-string v6, "pbT"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v3, :cond_6

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v6, v3, v2

    invoke-static {v4, v3}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v3, v3, Lcom/appinstall/sdk/m;->i:Lcom/appinstall/sdk/bi;

    invoke-virtual {v3, v2}, Lcom/appinstall/sdk/bi;->a(Z)V

    move v3, v2

    :goto_3
    add-int/2addr v3, v5

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v6}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/sdk/m;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lcom/appinstall/sdk/y;

    invoke-direct {v7, p0, v1}, Lcom/appinstall/sdk/y;-><init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/2addr v3, v5

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v6}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/sdk/m;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lcom/appinstall/sdk/z;

    invoke-direct {v7, p0, v1}, Lcom/appinstall/sdk/z;-><init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/2addr v3, v5

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v6}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/sdk/m;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lcom/appinstall/sdk/aa;

    invoke-direct {v7, p0, v1}, Lcom/appinstall/sdk/aa;-><init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->k:Lcom/appinstall/api/Configuration;

    invoke-virtual {v6}, Lcom/appinstall/api/Configuration;->isAdEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->k:Lcom/appinstall/api/Configuration;

    invoke-virtual {v6}, Lcom/appinstall/api/Configuration;->isMacDisabled()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v6}, Lcom/appinstall/sdk/m;->c(Lcom/appinstall/sdk/m;)Lcom/appinstall/sdk/bd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appinstall/sdk/bd;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mA"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->k:Lcom/appinstall/api/Configuration;

    invoke-virtual {v6}, Lcom/appinstall/api/Configuration;->isImeiDisabled()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v6}, Lcom/appinstall/sdk/m;->c(Lcom/appinstall/sdk/m;)Lcom/appinstall/sdk/bd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appinstall/sdk/bd;->b()Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v8, "im"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v7, "im2"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->k:Lcom/appinstall/api/Configuration;

    invoke-virtual {v6}, Lcom/appinstall/api/Configuration;->getGaid()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v6}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/sdk/m;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lcom/appinstall/sdk/ab;

    invoke-direct {v7, p0, v1}, Lcom/appinstall/sdk/ab;-><init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_9
    sget-boolean v6, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4f20\u5165\u7684 gaid \u4e3a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v7, v7, Lcom/appinstall/sdk/m;->k:Lcom/appinstall/api/Configuration;

    invoke-virtual {v7}, Lcom/appinstall/api/Configuration;->getGaid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->k:Lcom/appinstall/api/Configuration;

    invoke-virtual {v6}, Lcom/appinstall/api/Configuration;->getGaid()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ga"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->k:Lcom/appinstall/api/Configuration;

    invoke-virtual {v6}, Lcom/appinstall/api/Configuration;->getOaid()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v6}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/sdk/m;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lcom/appinstall/sdk/ac;

    invoke-direct {v7, p0, v1}, Lcom/appinstall/sdk/ac;-><init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_b
    sget-boolean v6, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4f20\u5165\u7684 oaid \u4e3a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v7, v7, Lcom/appinstall/sdk/m;->k:Lcom/appinstall/api/Configuration;

    invoke-virtual {v7}, Lcom/appinstall/api/Configuration;->getOaid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->k:Lcom/appinstall/api/Configuration;

    invoke-virtual {v6}, Lcom/appinstall/api/Configuration;->getOaid()Ljava/lang/String;

    move-result-object v6

    const-string v7, "oa"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_5
    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v6}, Lcom/appinstall/sdk/i;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, "md"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v6}, Lcom/appinstall/sdk/i;->f()Ljava/lang/String;

    move-result-object v6

    const-string v7, "bI"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v6}, Lcom/appinstall/sdk/i;->g()Ljava/lang/String;

    move-result-object v6

    const-string v7, "buiD"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v6}, Lcom/appinstall/sdk/i;->h()Ljava/lang/String;

    move-result-object v6

    const-string v7, "bd"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v6, v6, Lcom/appinstall/sdk/m;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v6}, Lcom/appinstall/sdk/i;->l()Ljava/util/List;

    move-result-object v6

    const-string v7, "loI"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_6
    if-lez v3, :cond_f

    const-wide/16 v6, 0x1

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v6, :cond_e

    add-int/lit8 v3, v3, -0x1

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v7, :cond_e

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-static {v4, v7}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :cond_f
    iget-object v1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->f:Lcom/appinstall/sdk/bw;

    iget-object v3, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    const-string v4, "init"

    invoke-virtual {v3, v2, v4}, Lcom/appinstall/sdk/m;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-virtual {v5}, Lcom/appinstall/sdk/m;->c()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v0}, Lcom/appinstall/sdk/bw;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/appinstall/sdk/by;

    move-result-object v1

    move v3, v2

    :goto_7
    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->a()Lcom/appinstall/sdk/by$a;

    move-result-object v5

    sget-object v6, Lcom/appinstall/sdk/by$a;->b:Lcom/appinstall/sdk/by$a;

    if-ne v5, v6, :cond_11

    :try_start_1
    iget-object v1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-direct {p0, v3}, Lcom/appinstall/sdk/w;->a(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/appinstall/sdk/d;->b(J)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8
    const/16 v1, 0x64

    if-ge v3, v1, :cond_10

    add-int/lit8 v3, v3, 0x1

    :cond_10
    iget-object v1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->f:Lcom/appinstall/sdk/bw;

    iget-object v5, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-virtual {v5, v2, v4}, Lcom/appinstall/sdk/m;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-virtual {v6}, Lcom/appinstall/sdk/m;->c()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v0}, Lcom/appinstall/sdk/bw;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/appinstall/sdk/by;

    move-result-object v1

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appinstall/sdk/m;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->a()Lcom/appinstall/sdk/by$a;

    move-result-object v0

    sget-object v2, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appinstall/sdk/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    sget-object v1, Lcom/appinstall/sdk/e;->d:Lcom/appinstall/sdk/e;

    :goto_9
    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/d;->a(Lcom/appinstall/sdk/e;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->a()Lcom/appinstall/sdk/by$a;

    move-result-object v0

    sget-object v2, Lcom/appinstall/sdk/by$a;->c:Lcom/appinstall/sdk/by$a;

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    sget-object v1, Lcom/appinstall/sdk/e;->e:Lcom/appinstall/sdk/e;

    goto :goto_9

    :cond_13
    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->a()Lcom/appinstall/sdk/by$a;

    move-result-object v0

    sget-object v2, Lcom/appinstall/sdk/by$a;->b:Lcom/appinstall/sdk/by$a;

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    sget-object v1, Lcom/appinstall/sdk/e;->c:Lcom/appinstall/sdk/e;

    goto :goto_9

    :cond_14
    :goto_a
    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v0}, Lcom/appinstall/sdk/d;->d()V

    iget-object v0, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    iget-object v1, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v2, v2, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v2}, Lcom/appinstall/sdk/d;->c()Lcom/appinstall/sdk/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appinstall/sdk/f;->a(Ljava/lang/String;Lcom/appinstall/sdk/e;)V

    goto/16 :goto_0

    :cond_15
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method
