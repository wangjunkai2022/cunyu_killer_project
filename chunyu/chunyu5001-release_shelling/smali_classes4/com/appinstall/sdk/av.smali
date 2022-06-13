.class Lcom/appinstall/sdk/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appinstall/sdk/au;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/av;->a:Lcom/appinstall/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/appinstall/sdk/av;->a:Lcom/appinstall/sdk/au;

    invoke-static {v0}, Lcom/appinstall/sdk/au;->a(Lcom/appinstall/sdk/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appinstall/sdk/av;->a:Lcom/appinstall/sdk/au;

    invoke-static {v0}, Lcom/appinstall/sdk/au;->b(Lcom/appinstall/sdk/au;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/av;->a:Lcom/appinstall/sdk/au;

    invoke-static {v0}, Lcom/appinstall/sdk/au;->c(Lcom/appinstall/sdk/au;)Lcom/appinstall/sdk/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appinstall/sdk/aj;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method
