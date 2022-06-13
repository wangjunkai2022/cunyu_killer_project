.class Lcom/appinstall/sdk/an$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appinstall/sdk/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/appinstall/sdk/an;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appinstall/sdk/an;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appinstall/sdk/an;-><init>(Lcom/appinstall/sdk/ao;)V

    sput-object v0, Lcom/appinstall/sdk/an$a;->a:Lcom/appinstall/sdk/an;

    return-void
.end method

.method static synthetic a()Lcom/appinstall/sdk/an;
    .locals 1

    sget-object v0, Lcom/appinstall/sdk/an$a;->a:Lcom/appinstall/sdk/an;

    return-object v0
.end method
