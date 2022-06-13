.class public Lcom/appinstall/sdk/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcom/appinstall/sdk/bt;

.field private final b:Lcom/appinstall/sdk/bs;


# direct methods
.method public constructor <init>(Lcom/appinstall/sdk/bs;Lcom/appinstall/sdk/bt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appinstall/sdk/bo;->a:Lcom/appinstall/sdk/bt;

    iput-object p1, p0, Lcom/appinstall/sdk/bo;->b:Lcom/appinstall/sdk/bs;

    return-void
.end method

.method public constructor <init>(Lcom/appinstall/sdk/bt;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/appinstall/sdk/bo;-><init>(Lcom/appinstall/sdk/bs;Lcom/appinstall/sdk/bt;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/appinstall/sdk/bt;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/bo;->a:Lcom/appinstall/sdk/bt;

    return-object v0
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/bo;->b:Lcom/appinstall/sdk/bs;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/bs;->a([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/bo;->a:Lcom/appinstall/sdk/bt;

    invoke-virtual {v0, p1}, Lcom/appinstall/sdk/bt;->a([B)V

    :goto_0
    return-void
.end method

.method public b()Lcom/appinstall/sdk/bs;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/bo;->b:Lcom/appinstall/sdk/bs;

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/bo;->b:Lcom/appinstall/sdk/bs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appinstall/sdk/bs;->d()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/bo;->a:Lcom/appinstall/sdk/bt;

    iget-object v0, v0, Lcom/appinstall/sdk/bt;->g:[B

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/appinstall/sdk/bo;->d()Lcom/appinstall/sdk/bo;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/appinstall/sdk/bo;
    .locals 3

    new-instance v0, Lcom/appinstall/sdk/bo;

    iget-object v1, p0, Lcom/appinstall/sdk/bo;->b:Lcom/appinstall/sdk/bs;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/appinstall/sdk/bs;->f()Lcom/appinstall/sdk/bs;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/appinstall/sdk/bo;->a:Lcom/appinstall/sdk/bt;

    invoke-virtual {v2}, Lcom/appinstall/sdk/bt;->b()Lcom/appinstall/sdk/bt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appinstall/sdk/bo;-><init>(Lcom/appinstall/sdk/bs;Lcom/appinstall/sdk/bt;)V

    return-object v0
.end method
