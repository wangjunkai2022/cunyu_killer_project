.class Lcom/appinstall/sdk/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic b:Lcom/appinstall/sdk/w;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/aa;->b:Lcom/appinstall/sdk/w;

    iput-object p2, p0, Lcom/appinstall/sdk/aa;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/appinstall/sdk/ap;->a()Lcom/appinstall/sdk/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/appinstall/sdk/aa;->b:Lcom/appinstall/sdk/w;

    iget-object v1, v1, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v1, v1, Lcom/appinstall/sdk/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/ap;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/appinstall/sdk/aa;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "si"

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
