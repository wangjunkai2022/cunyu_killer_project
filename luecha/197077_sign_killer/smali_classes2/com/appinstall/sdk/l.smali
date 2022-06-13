.class public Lcom/appinstall/sdk/l;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x8

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/appinstall/sdk/l;->a:I

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit16 p1, p1, 0x1f4

    iput p1, p0, Lcom/appinstall/sdk/l;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/appinstall/sdk/l;->a:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/appinstall/sdk/l;->a:I

    :cond_0
    iget v0, p0, Lcom/appinstall/sdk/l;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/appinstall/sdk/l;->b:I

    return v0
.end method
