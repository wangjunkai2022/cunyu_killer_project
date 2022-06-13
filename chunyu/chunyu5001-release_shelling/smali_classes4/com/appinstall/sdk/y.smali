.class Lcom/appinstall/sdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic b:Lcom/appinstall/sdk/w;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/y;->b:Lcom/appinstall/sdk/w;

    iput-object p2, p0, Lcom/appinstall/sdk/y;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/appinstall/sdk/y;->b:Lcom/appinstall/sdk/w;

    iget-object v0, v0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v0}, Lcom/appinstall/sdk/m;->b(Lcom/appinstall/sdk/m;)Lcom/appinstall/sdk/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/appinstall/sdk/y;->b:Lcom/appinstall/sdk/w;

    iget-object v1, v1, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/bc;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/appinstall/sdk/y;->b:Lcom/appinstall/sdk/w;

    iget-object v0, v0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    invoke-static {v0}, Lcom/appinstall/sdk/m;->b(Lcom/appinstall/sdk/m;)Lcom/appinstall/sdk/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appinstall/sdk/bc;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appinstall/sdk/y;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v2, "gR"

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
