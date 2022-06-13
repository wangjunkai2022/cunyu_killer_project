.class public final enum Lcom/tencent/liteav/network/a/d$a;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/network/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/network/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/network/a/d$a;

.field public static final enum b:Lcom/tencent/liteav/network/a/d$a;

.field public static final enum c:Lcom/tencent/liteav/network/a/d$a;

.field private static final synthetic d:[Lcom/tencent/liteav/network/a/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lcom/tencent/liteav/network/a/d$a;

    const/4 v1, 0x0

    const-string v2, "NO_NETWORK"

    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/network/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/network/a/d$a;->a:Lcom/tencent/liteav/network/a/d$a;

    new-instance v0, Lcom/tencent/liteav/network/a/d$a;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2}, Lcom/tencent/liteav/network/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/network/a/d$a;->b:Lcom/tencent/liteav/network/a/d$a;

    new-instance v0, Lcom/tencent/liteav/network/a/d$a;

    const/4 v3, 0x2

    const-string v4, "MOBILE"

    invoke-direct {v0, v4, v3}, Lcom/tencent/liteav/network/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/network/a/d$a;->c:Lcom/tencent/liteav/network/a/d$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/liteav/network/a/d$a;

    .line 61
    sget-object v4, Lcom/tencent/liteav/network/a/d$a;->a:Lcom/tencent/liteav/network/a/d$a;

    aput-object v4, v0, v1

    sget-object v1, Lcom/tencent/liteav/network/a/d$a;->b:Lcom/tencent/liteav/network/a/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/network/a/d$a;->c:Lcom/tencent/liteav/network/a/d$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/liteav/network/a/d$a;->d:[Lcom/tencent/liteav/network/a/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/network/a/d$a;
    .locals 1

    .line 61
    const-class v0, Lcom/tencent/liteav/network/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/network/a/d$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/network/a/d$a;
    .locals 1

    .line 61
    sget-object v0, Lcom/tencent/liteav/network/a/d$a;->d:[Lcom/tencent/liteav/network/a/d$a;

    invoke-virtual {v0}, [Lcom/tencent/liteav/network/a/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/network/a/d$a;

    return-object v0
.end method
