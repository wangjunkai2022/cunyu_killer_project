.class public final enum Lcom/appinstall/sdk/by$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appinstall/sdk/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/appinstall/sdk/by$a;

.field public static final enum b:Lcom/appinstall/sdk/by$a;

.field public static final enum c:Lcom/appinstall/sdk/by$a;

.field private static final synthetic d:[Lcom/appinstall/sdk/by$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/appinstall/sdk/by$a;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/appinstall/sdk/by$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    new-instance v0, Lcom/appinstall/sdk/by$a;

    const/4 v2, 0x1

    const-string v3, "FAIL"

    invoke-direct {v0, v3, v2}, Lcom/appinstall/sdk/by$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appinstall/sdk/by$a;->b:Lcom/appinstall/sdk/by$a;

    new-instance v0, Lcom/appinstall/sdk/by$a;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/appinstall/sdk/by$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appinstall/sdk/by$a;->c:Lcom/appinstall/sdk/by$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appinstall/sdk/by$a;

    sget-object v4, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    aput-object v4, v0, v1

    sget-object v1, Lcom/appinstall/sdk/by$a;->b:Lcom/appinstall/sdk/by$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appinstall/sdk/by$a;->c:Lcom/appinstall/sdk/by$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appinstall/sdk/by$a;->d:[Lcom/appinstall/sdk/by$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appinstall/sdk/by$a;
    .locals 1

    const-class v0, Lcom/appinstall/sdk/by$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appinstall/sdk/by$a;

    return-object p0
.end method

.method public static values()[Lcom/appinstall/sdk/by$a;
    .locals 1

    sget-object v0, Lcom/appinstall/sdk/by$a;->d:[Lcom/appinstall/sdk/by$a;

    invoke-virtual {v0}, [Lcom/appinstall/sdk/by$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appinstall/sdk/by$a;

    return-object v0
.end method
