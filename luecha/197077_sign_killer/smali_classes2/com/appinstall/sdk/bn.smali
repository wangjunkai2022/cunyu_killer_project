.class Lcom/appinstall/sdk/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appinstall/sdk/bm;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/bn;->a:Lcom/appinstall/sdk/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/appinstall/sdk/bn;->a:Lcom/appinstall/sdk/bm;

    invoke-static {v0}, Lcom/appinstall/sdk/bm;->a(Lcom/appinstall/sdk/bm;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    const-string v1, "s_l"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
