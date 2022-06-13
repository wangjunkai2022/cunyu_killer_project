.class public abstract Lcom/appinstall/sdk/ah;
.super Landroid/os/Handler;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/appinstall/sdk/d;

.field protected c:Lcom/appinstall/sdk/g;

.field protected d:Ljava/lang/String;

.field protected e:Z

.field protected f:Lcom/appinstall/sdk/bw;

.field protected g:Lcom/appinstall/sdk/f;

.field protected h:Lcom/appinstall/sdk/i;

.field protected i:Lcom/appinstall/sdk/bi;

.field protected j:Lcom/appinstall/sdk/ba;

.field protected k:Lcom/appinstall/api/Configuration;

.field protected l:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/appinstall/sdk/d;Lcom/appinstall/sdk/f;Ljava/lang/String;Lcom/appinstall/sdk/g;Lcom/appinstall/api/Configuration;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/appinstall/sdk/ah;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/appinstall/sdk/ah;->b:Lcom/appinstall/sdk/d;

    iput-object p4, p0, Lcom/appinstall/sdk/ah;->g:Lcom/appinstall/sdk/f;

    iput-object p5, p0, Lcom/appinstall/sdk/ah;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/appinstall/sdk/ah;->c:Lcom/appinstall/sdk/g;

    iput-object p7, p0, Lcom/appinstall/sdk/ah;->k:Lcom/appinstall/api/Configuration;

    invoke-static {}, Lcom/appinstall/sdk/bw;->a()Lcom/appinstall/sdk/bw;

    move-result-object p2

    iput-object p2, p0, Lcom/appinstall/sdk/ah;->f:Lcom/appinstall/sdk/bw;

    invoke-static {p1}, Lcom/appinstall/sdk/i;->a(Landroid/content/Context;)Lcom/appinstall/sdk/i;

    move-result-object p2

    iput-object p2, p0, Lcom/appinstall/sdk/ah;->h:Lcom/appinstall/sdk/i;

    invoke-static {p1}, Lcom/appinstall/sdk/bi;->a(Landroid/content/Context;)Lcom/appinstall/sdk/bi;

    move-result-object p2

    iput-object p2, p0, Lcom/appinstall/sdk/ah;->i:Lcom/appinstall/sdk/bi;

    invoke-static {p1}, Lcom/appinstall/sdk/ba;->a(Landroid/content/Context;)Lcom/appinstall/sdk/ba;

    move-result-object p1

    iput-object p1, p0, Lcom/appinstall/sdk/ah;->j:Lcom/appinstall/sdk/ba;

    return-void
.end method


# virtual methods
.method protected a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/appinstall/sdk/bu;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/appinstall/sdk/bu;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-boolean v1, p0, Lcom/appinstall/sdk/ah;->e:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "v2_5"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "v2"

    :goto_1
    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/appinstall/sdk/ah;->d:Ljava/lang/String;

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "https://%s/api/%s/android/%s/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 1

    invoke-virtual {p0}, Lcom/appinstall/sdk/ah;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/appinstall/sdk/ai;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/appinstall/sdk/ai;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/appinstall/sdk/ah;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/appinstall/api/listener/AppWakeUpListener;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/appinstall/sdk/ai;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/appinstall/sdk/ai;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/appinstall/sdk/ah;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/appinstall/api/listener/GetUpdateApkListener;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/appinstall/sdk/ai;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Lcom/appinstall/sdk/ai;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/appinstall/sdk/ah;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/appinstall/sdk/aq;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/appinstall/sdk/ai;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/appinstall/sdk/ai;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/appinstall/sdk/ah;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/appinstall/sdk/bl;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/appinstall/sdk/ai;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/appinstall/sdk/ai;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/appinstall/sdk/ah;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/Boolean;ILcom/appinstall/api/listener/AppInstallListener;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/appinstall/sdk/ai;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Lcom/appinstall/sdk/ai;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/appinstall/sdk/ah;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/appinstall/sdk/g;->b(Ljava/lang/String;)Lcom/appinstall/sdk/g;

    move-result-object p1

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/g;->a(Lcom/appinstall/sdk/g;)V

    iget-object p1, p0, Lcom/appinstall/sdk/ah;->g:Lcom/appinstall/sdk/f;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {p1, v0}, Lcom/appinstall/sdk/f;->a(Lcom/appinstall/sdk/g;)V

    iget-object p1, p0, Lcom/appinstall/sdk/ah;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->i()V

    :cond_1
    iget-object p1, p0, Lcom/appinstall/sdk/ah;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/appinstall/sdk/ah;->j:Lcom/appinstall/sdk/ba;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/appinstall/sdk/ah;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v1}, Lcom/appinstall/sdk/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appinstall/sdk/ba;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/appinstall/sdk/ai;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/appinstall/sdk/ai;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/appinstall/sdk/ah;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/appinstall/sdk/ah;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/appinstall/sdk/ah;->e:Z

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->f:Lcom/appinstall/sdk/bw;

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/bw;->a(Z)V

    return-void
.end method

.method protected c()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    iget-object v1, p0, Lcom/appinstall/sdk/ah;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v1}, Lcom/appinstall/sdk/i;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    iget-object v1, p0, Lcom/appinstall/sdk/ah;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v1}, Lcom/appinstall/sdk/i;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "andI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    iget-object v1, p0, Lcom/appinstall/sdk/ah;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v1}, Lcom/appinstall/sdk/i;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    iget-object v1, p0, Lcom/appinstall/sdk/ah;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v1}, Lcom/appinstall/sdk/i;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    iget-object v1, p0, Lcom/appinstall/sdk/ah;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v1}, Lcom/appinstall/sdk/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    iget-object v1, p0, Lcom/appinstall/sdk/ah;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v1}, Lcom/appinstall/sdk/i;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "verI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    const-string v1, "apV"

    const-string v2, "2.6.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/ah;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v0}, Lcom/appinstall/sdk/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->j:Lcom/appinstall/sdk/ba;

    iget-object v1, p0, Lcom/appinstall/sdk/ah;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appinstall/sdk/ah;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v0}, Lcom/appinstall/sdk/g;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    const-string v2, "iI"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/ah;->l:Ljava/util/Map;

    return-object v0
.end method
