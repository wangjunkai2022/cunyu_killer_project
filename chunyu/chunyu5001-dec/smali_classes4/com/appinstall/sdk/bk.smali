.class Lcom/appinstall/sdk/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appinstall/sdk/bi;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/bk;->a:Lcom/appinstall/sdk/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/appinstall/sdk/bk;->a:Lcom/appinstall/sdk/bi;

    const-string v1, "lifecycle"

    invoke-virtual {v0, v1}, Lcom/appinstall/sdk/bi;->a(Ljava/lang/String;)V

    return-void
.end method
