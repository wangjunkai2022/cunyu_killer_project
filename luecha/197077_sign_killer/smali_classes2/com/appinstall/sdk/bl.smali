.class public Lcom/appinstall/sdk/bl;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/bl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/appinstall/sdk/bl;->c:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appinstall/sdk/bl;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/bl;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appinstall/sdk/bl;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/bl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/bl;->b:Ljava/lang/String;

    return-void
.end method

.method public b(I)Z
    .locals 1

    iget v0, p0, Lcom/appinstall/sdk/bl;->c:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/appinstall/sdk/bl;->c:I

    return v0
.end method
