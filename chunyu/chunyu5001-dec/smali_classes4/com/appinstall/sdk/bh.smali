.class public Lcom/appinstall/sdk/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/appinstall/sdk/bm;

.field private final b:Lcom/appinstall/sdk/bl;


# direct methods
.method protected constructor <init>(Lcom/appinstall/sdk/bm;Lcom/appinstall/sdk/bl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appinstall/sdk/bh;->a:Lcom/appinstall/sdk/bm;

    iput-object p2, p0, Lcom/appinstall/sdk/bh;->b:Lcom/appinstall/sdk/bl;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appinstall/sdk/bh;->b:Lcom/appinstall/sdk/bl;

    invoke-virtual {v0}, Lcom/appinstall/sdk/bl;->c()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appinstall/sdk/bh;->a:Lcom/appinstall/sdk/bm;

    invoke-virtual {v0}, Lcom/appinstall/sdk/bm;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
