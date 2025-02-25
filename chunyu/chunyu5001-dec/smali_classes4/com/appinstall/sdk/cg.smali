.class public Lcom/appinstall/sdk/cg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appinstall/sdk/cg;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;
    .locals 1

    new-instance v0, Lcom/appinstall/sdk/cg;

    invoke-direct {v0, p0}, Lcom/appinstall/sdk/cg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
