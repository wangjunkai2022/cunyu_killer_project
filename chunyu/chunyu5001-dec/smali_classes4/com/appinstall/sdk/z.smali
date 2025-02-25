.class Lcom/appinstall/sdk/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic b:Lcom/appinstall/sdk/w;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/w;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/z;->b:Lcom/appinstall/sdk/w;

    iput-object p2, p0, Lcom/appinstall/sdk/z;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/appinstall/sdk/z;->b:Lcom/appinstall/sdk/w;

    iget-object v0, v0, Lcom/appinstall/sdk/w;->b:Lcom/appinstall/sdk/m;

    iget-object v0, v0, Lcom/appinstall/sdk/m;->h:Lcom/appinstall/sdk/i;

    invoke-virtual {v0}, Lcom/appinstall/sdk/i;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appinstall/sdk/z;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v2, "aI"

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
