.class public Lcom/appinstall/sdk/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appinstall/sdk/ai;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/appinstall/sdk/ai;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/appinstall/sdk/ai;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/ai;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/ai;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/ai;->c:Ljava/lang/Object;

    return-object v0
.end method
