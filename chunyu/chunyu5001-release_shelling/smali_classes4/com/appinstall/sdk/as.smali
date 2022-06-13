.class Lcom/appinstall/sdk/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appinstall/sdk/ar;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/as;->a:Lcom/appinstall/sdk/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/appinstall/sdk/as;->a:Lcom/appinstall/sdk/ar;

    invoke-static {v0}, Lcom/appinstall/sdk/ar;->a(Lcom/appinstall/sdk/ar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appinstall/sdk/as;->a:Lcom/appinstall/sdk/ar;

    invoke-static {v0}, Lcom/appinstall/sdk/ar;->b(Lcom/appinstall/sdk/ar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appinstall/sdk/as;->a:Lcom/appinstall/sdk/ar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appinstall/sdk/ar;->a(Lcom/appinstall/sdk/ar;Z)Z

    iget-object v0, p0, Lcom/appinstall/sdk/as;->a:Lcom/appinstall/sdk/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appinstall/sdk/ar;->b(J)V

    :cond_0
    return-void
.end method
