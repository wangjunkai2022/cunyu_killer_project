.class Lcom/appinstall/sdk/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/appinstall/sdk/m;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/n;->a:Lcom/appinstall/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "INIT-T-"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
