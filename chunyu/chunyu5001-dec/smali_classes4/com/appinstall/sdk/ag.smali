.class Lcom/appinstall/sdk/ag;
.super Lcom/appinstall/sdk/j;


# instance fields
.field final synthetic c:Z

.field final synthetic d:Lcom/appinstall/sdk/m;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/m;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/ag;->d:Lcom/appinstall/sdk/m;

    iput-boolean p3, p0, Lcom/appinstall/sdk/ag;->c:Z

    invoke-direct {p0, p2}, Lcom/appinstall/sdk/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public c()Lcom/appinstall/sdk/by;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/appinstall/sdk/ag;->a()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x1f4

    :cond_0
    iget-boolean v1, p0, Lcom/appinstall/sdk/ag;->c:Z

    const-string v2, "install"

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/appinstall/sdk/ag;->d:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->i:Lcom/appinstall/sdk/bi;

    invoke-virtual {v0, v2}, Lcom/appinstall/sdk/bi;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/appinstall/sdk/ag;->d:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->i:Lcom/appinstall/sdk/bi;

    invoke-virtual {v1, v2, v0}, Lcom/appinstall/sdk/bi;->a(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/appinstall/sdk/ag;->d:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {p0}, Lcom/appinstall/sdk/ag;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/appinstall/sdk/d;->a(J)V

    iget-object v0, p0, Lcom/appinstall/sdk/ag;->d:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v0}, Lcom/appinstall/sdk/d;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/appinstall/sdk/ag;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/appinstall/sdk/by;

    sget-object v1, Lcom/appinstall/sdk/by$a;->c:Lcom/appinstall/sdk/by$a;

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    const-string/jumbo v1, "\u8d85\u65f6\u8fd4\u56de\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/by;->b(Ljava/lang/String;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/appinstall/sdk/ag;->d:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->b:Lcom/appinstall/sdk/d;

    invoke-virtual {v0}, Lcom/appinstall/sdk/d;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appinstall/sdk/ag;->d:Lcom/appinstall/sdk/m;

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

    :cond_3
    iget-object v0, p0, Lcom/appinstall/sdk/ag;->d:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->g:Lcom/appinstall/sdk/f;

    invoke-virtual {v0}, Lcom/appinstall/sdk/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appinstall/sdk/by;

    sget-object v2, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/appinstall/sdk/by;-><init>(Lcom/appinstall/sdk/by$a;I)V

    invoke-virtual {v1, v0}, Lcom/appinstall/sdk/by;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appinstall/sdk/ag;->d:Lcom/appinstall/sdk/m;

    invoke-virtual {v1}, Lcom/appinstall/sdk/by;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appinstall/sdk/m;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/appinstall/sdk/ag;->c()Lcom/appinstall/sdk/by;

    move-result-object v0

    return-object v0
.end method
