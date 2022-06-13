.class public final enum Lcom/tencent/liteav/basic/e/h;
.super Ljava/lang/Enum;
.source "TXCRotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/basic/e/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/basic/e/h;

.field public static final enum b:Lcom/tencent/liteav/basic/e/h;

.field public static final enum c:Lcom/tencent/liteav/basic/e/h;

.field public static final enum d:Lcom/tencent/liteav/basic/e/h;

.field private static final synthetic e:[Lcom/tencent/liteav/basic/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/tencent/liteav/basic/e/h;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/basic/e/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/e/h;->a:Lcom/tencent/liteav/basic/e/h;

    new-instance v0, Lcom/tencent/liteav/basic/e/h;

    const/4 v2, 0x1

    const-string v3, "ROTATION_90"

    invoke-direct {v0, v3, v2}, Lcom/tencent/liteav/basic/e/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/e/h;->b:Lcom/tencent/liteav/basic/e/h;

    new-instance v0, Lcom/tencent/liteav/basic/e/h;

    const/4 v3, 0x2

    const-string v4, "ROTATION_180"

    invoke-direct {v0, v4, v3}, Lcom/tencent/liteav/basic/e/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/e/h;->c:Lcom/tencent/liteav/basic/e/h;

    new-instance v0, Lcom/tencent/liteav/basic/e/h;

    const/4 v4, 0x3

    const-string v5, "ROTATION_270"

    invoke-direct {v0, v5, v4}, Lcom/tencent/liteav/basic/e/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/e/h;->d:Lcom/tencent/liteav/basic/e/h;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/liteav/basic/e/h;

    .line 4
    sget-object v5, Lcom/tencent/liteav/basic/e/h;->a:Lcom/tencent/liteav/basic/e/h;

    aput-object v5, v0, v1

    sget-object v1, Lcom/tencent/liteav/basic/e/h;->b:Lcom/tencent/liteav/basic/e/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/basic/e/h;->c:Lcom/tencent/liteav/basic/e/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/liteav/basic/e/h;->d:Lcom/tencent/liteav/basic/e/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/liteav/basic/e/h;->e:[Lcom/tencent/liteav/basic/e/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/basic/e/h;
    .locals 1

    .line 4
    const-class v0, Lcom/tencent/liteav/basic/e/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/basic/e/h;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/basic/e/h;
    .locals 1

    .line 4
    sget-object v0, Lcom/tencent/liteav/basic/e/h;->e:[Lcom/tencent/liteav/basic/e/h;

    invoke-virtual {v0}, [Lcom/tencent/liteav/basic/e/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/basic/e/h;

    return-object v0
.end method
