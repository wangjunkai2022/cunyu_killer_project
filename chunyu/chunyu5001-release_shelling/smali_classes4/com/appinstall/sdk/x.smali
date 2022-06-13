.class Lcom/appinstall/sdk/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic b:Lcom/appinstall/sdk/w;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/x;->b:Lcom/appinstall/sdk/w;

    iput-object p2, p0, Lcom/appinstall/sdk/x;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/appinstall/sdk/x;->b:Lcom/appinstall/sdk/w;

    iget-object v0, v0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->i:Lcom/appinstall/sdk/bi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/bi;->b(Z)Lcom/appinstall/sdk/bl;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/appinstall/sdk/bl;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/appinstall/sdk/x;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Lcom/appinstall/sdk/bl;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pbH"

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const-string v3, "pbT"

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/bl;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appinstall/sdk/x;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Lcom/appinstall/sdk/bl;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appinstall/sdk/x;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appinstall/sdk/x;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pbR"

    :goto_1
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lcom/appinstall/sdk/x;->b:Lcom/appinstall/sdk/w;

    iget-object v0, v0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->i:Lcom/appinstall/sdk/bi;

    invoke-virtual {v0, v2}, Lcom/appinstall/sdk/bi;->a(Z)V

    return-void
.end method
