.class Lcom/appinstall/sdk/q;
.super Lcom/appinstall/sdk/k;


# instance fields
.field final synthetic c:Lcom/appinstall/sdk/m;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/m;I)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    invoke-direct {p0, p2}, Lcom/appinstall/sdk/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->i:Lcom/appinstall/sdk/bi;

    invoke-virtual {p0}, Lcom/appinstall/sdk/q;->a()I

    move-result v1

    const-string v2, "stat"

    invoke-virtual {v0, v2, v1}, Lcom/appinstall/sdk/bi;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {p0}, Lcom/appinstall/sdk/q;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appinstall/sdk/d;->a(J)V

    iget-object v0, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v0}, Lcom/appinstall/sdk/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v0}, Lcom/appinstall/sdk/f;->b()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u521d\u59cb\u5316\u65f6\u9519\u8bef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->c:Lcom/appinstall/sdk/g;

    invoke-virtual {v0}, Lcom/appinstall/sdk/g;->f()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "registerStatsEnabled is disable"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->f:Lcom/appinstall/sdk/bw;

    iget-object v2, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    const/4 v3, 0x1

    const-string v4, "stats/register"

    invoke-virtual {v2, v3, v4}, Lcom/appinstall/sdk/m;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    invoke-virtual {v4}, Lcom/appinstall/sdk/m;->c()Ljava/util/Map;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v0, v2, v4, v5}, Lcom/appinstall/sdk/bw;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/appinstall/sdk/by;

    move-result-object v0

    iget-object v2, p0, Lcom/appinstall/sdk/q;->c:Lcom/appinstall/sdk/m;

    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appinstall/sdk/m;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->a()Lcom/appinstall/sdk/by$a;

    move-result-object v2

    sget-object v4, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    if-ne v2, v4, :cond_5

    sget-boolean v2, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v2, :cond_4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "statRegister success"

    invoke-static {v4, v2}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v2, :cond_6

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "statRegister warning : %s"

    invoke-static {v0, v2}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-boolean v2, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v2, :cond_6

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "statRegister fail : %s"

    invoke-static {v0, v2}, Lcom/appinstall/sdk/cf;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method
