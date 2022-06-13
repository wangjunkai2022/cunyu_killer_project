.class public Lcom/appinstall/sdk/aj;
.super Lcom/appinstall/sdk/ah;


# instance fields
.field private final m:Lcom/appinstall/sdk/cg;

.field private final n:Lcom/appinstall/sdk/at;

.field private o:J

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/appinstall/sdk/d;Lcom/appinstall/sdk/f;Ljava/lang/String;Lcom/appinstall/sdk/g;Lcom/appinstall/api/Configuration;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/appinstall/sdk/ah;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/appinstall/sdk/d;Lcom/appinstall/sdk/f;Ljava/lang/String;Lcom/appinstall/sdk/g;Lcom/appinstall/api/Configuration;)V

    const-string p2, "St"

    invoke-static {p2}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object p2

    iput-object p2, p0, Lcom/appinstall/sdk/aj;->m:Lcom/appinstall/sdk/cg;

    const/4 p2, 0x0

    iput p2, p0, Lcom/appinstall/sdk/aj;->p:I

    new-instance p2, Lcom/appinstall/sdk/at;

    invoke-direct {p2, p1, p5}, Lcom/appinstall/sdk/at;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/appinstall/sdk/aj;->n:Lcom/appinstall/sdk/at;

    invoke-virtual {p4}, Lcom/appinstall/sdk/f;->d()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/appinstall/sdk/aj;->o:J

    return-void
.end method

.method private b(Lcom/appinstall/sdk/aq;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/appinstall/sdk/aq;->b()I

    move-result v0

    const-string v1, "eventStatsEnabled is false"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v0}, Lcom/appinstall/sdk/g;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean p1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/appinstall/sdk/aq;->b()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v0}, Lcom/appinstall/sdk/g;->e()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean p1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz p1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Lcom/appinstall/sdk/aq;->b()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/appinstall/sdk/aj;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->f()Z

    move-result p1

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "registerStatsEnabled is false"

    invoke-static {v0, p1}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v2

    :cond_5
    return v3
.end method

.method private c(Lcom/appinstall/sdk/aq;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/appinstall/sdk/aj;->b(Lcom/appinstall/sdk/aq;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/appinstall/sdk/aj;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/aj;->n:Lcom/appinstall/sdk/at;

    invoke-virtual {v0}, Lcom/appinstall/sdk/at;->c()V

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->n:Lcom/appinstall/sdk/at;

    invoke-virtual {p1}, Lcom/appinstall/sdk/aq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/at;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appinstall/sdk/aq;->c()Z

    move-result p1

    goto :goto_0
.end method

.method private c(Z)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appinstall/sdk/aj;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->e()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/appinstall/sdk/aj;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->f()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/appinstall/sdk/aj;->n:Lcom/appinstall/sdk/at;

    invoke-virtual {p1}, Lcom/appinstall/sdk/at;->d()V

    return v0

    :cond_0
    iget-object p1, p0, Lcom/appinstall/sdk/aj;->n:Lcom/appinstall/sdk/at;

    invoke-virtual {p1}, Lcom/appinstall/sdk/at;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/appinstall/sdk/aj;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->g()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/appinstall/sdk/aj;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {p1}, Lcom/appinstall/sdk/g;->g()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iget-wide v5, p0, Lcom/appinstall/sdk/aj;->o:J

    sub-long/2addr v1, v5

    cmp-long p1, v3, v1

    if-gez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/appinstall/sdk/aj;->p:I

    return-void
.end method

.method private e()V
    .locals 2

    iget v0, p0, Lcom/appinstall/sdk/aj;->p:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appinstall/sdk/aj;->p:I

    :cond_0
    return-void
.end method

.method private f()Z
    .locals 2

    iget v0, p0, Lcom/appinstall/sdk/aj;->p:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->b:Lcom/appinstall/sdk/d;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/appinstall/sdk/d;->a(J)V

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v0}, Lcom/appinstall/sdk/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v0}, Lcom/appinstall/sdk/f;->b()Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/aj;->n:Lcom/appinstall/sdk/at;

    invoke-virtual {v0}, Lcom/appinstall/sdk/at;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appinstall/sdk/aj;->f:Lcom/appinstall/sdk/bw;

    const/4 v2, 0x1

    const-string v3, "stats/events"

    invoke-virtual {p0, v2, v3}, Lcom/appinstall/sdk/aj;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/appinstall/sdk/aj;->c()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/appinstall/sdk/bw;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/appinstall/sdk/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appinstall/sdk/aj;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/appinstall/sdk/aj;->o:J

    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->a()Lcom/appinstall/sdk/by$a;

    move-result-object v1

    sget-object v3, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    sget-boolean v1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "statEvents success"

    invoke-static {v3, v1}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "statEvents warning : %s"

    invoke-static {v0, v1}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/appinstall/sdk/aj;->d()V

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->n:Lcom/appinstall/sdk/at;

    invoke-virtual {v0}, Lcom/appinstall/sdk/at;->d()V

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->g:Lcom/appinstall/sdk/f;

    iget-wide v1, p0, Lcom/appinstall/sdk/aj;->o:J

    invoke-virtual {v0, v1, v2}, Lcom/appinstall/sdk/f;->a(J)V

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v1, :cond_4

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "statEvents fail : %s"

    invoke-static {v0, v1}, Lcom/appinstall/sdk/cf;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/appinstall/sdk/aj;->e()V

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->n:Lcom/appinstall/sdk/at;

    invoke-virtual {v0}, Lcom/appinstall/sdk/at;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appinstall/sdk/aj;->n:Lcom/appinstall/sdk/at;

    invoke-virtual {v0}, Lcom/appinstall/sdk/at;->d()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    invoke-super {p0}, Lcom/appinstall/sdk/ah;->a()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/appinstall/sdk/ai;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appinstall/sdk/aq;

    invoke-direct {p0, p1}, Lcom/appinstall/sdk/aj;->c(Lcom/appinstall/sdk/aq;)V

    goto :goto_2

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/appinstall/sdk/ai;

    invoke-virtual {p1}, Lcom/appinstall/sdk/ai;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v2}, Lcom/appinstall/sdk/aj;->c(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/appinstall/sdk/aj;->g()V

    goto :goto_2

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_4

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/appinstall/sdk/aj;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/appinstall/sdk/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_0

    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/appinstall/sdk/aj;->a()V

    :cond_5
    :goto_2
    return-void
.end method
