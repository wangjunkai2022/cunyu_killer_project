.class public final enum Lcom/tencent/liteav/basic/enums/b;
.super Ljava/lang/Enum;
.source "TXVideoPixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/basic/enums/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/basic/enums/b;

.field public static final enum b:Lcom/tencent/liteav/basic/enums/b;

.field public static final enum c:Lcom/tencent/liteav/basic/enums/b;

.field public static final enum d:Lcom/tencent/liteav/basic/enums/b;

.field public static final enum e:Lcom/tencent/liteav/basic/enums/b;

.field public static final enum f:Lcom/tencent/liteav/basic/enums/b;

.field private static final synthetic g:[Lcom/tencent/liteav/basic/enums/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lcom/tencent/liteav/basic/enums/b;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/basic/enums/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/enums/b;->a:Lcom/tencent/liteav/basic/enums/b;

    .line 5
    new-instance v0, Lcom/tencent/liteav/basic/enums/b;

    const/4 v2, 0x1

    const-string v3, "I420"

    invoke-direct {v0, v3, v2}, Lcom/tencent/liteav/basic/enums/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/enums/b;->b:Lcom/tencent/liteav/basic/enums/b;

    .line 6
    new-instance v0, Lcom/tencent/liteav/basic/enums/b;

    const/4 v3, 0x2

    const-string v4, "TEXTURE_2D"

    invoke-direct {v0, v4, v3}, Lcom/tencent/liteav/basic/enums/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/enums/b;->c:Lcom/tencent/liteav/basic/enums/b;

    .line 7
    new-instance v0, Lcom/tencent/liteav/basic/enums/b;

    const/4 v4, 0x3

    const-string v5, "TEXTURE_EXTERNAL_OES"

    invoke-direct {v0, v5, v4}, Lcom/tencent/liteav/basic/enums/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/enums/b;->d:Lcom/tencent/liteav/basic/enums/b;

    .line 8
    new-instance v0, Lcom/tencent/liteav/basic/enums/b;

    const/4 v5, 0x4

    const-string v6, "NV21"

    invoke-direct {v0, v6, v5}, Lcom/tencent/liteav/basic/enums/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/enums/b;->e:Lcom/tencent/liteav/basic/enums/b;

    .line 9
    new-instance v0, Lcom/tencent/liteav/basic/enums/b;

    const/4 v6, 0x5

    const-string v7, "RGBA"

    invoke-direct {v0, v7, v6}, Lcom/tencent/liteav/basic/enums/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/basic/enums/b;->f:Lcom/tencent/liteav/basic/enums/b;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/liteav/basic/enums/b;

    .line 3
    sget-object v7, Lcom/tencent/liteav/basic/enums/b;->a:Lcom/tencent/liteav/basic/enums/b;

    aput-object v7, v0, v1

    sget-object v1, Lcom/tencent/liteav/basic/enums/b;->b:Lcom/tencent/liteav/basic/enums/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/basic/enums/b;->c:Lcom/tencent/liteav/basic/enums/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/liteav/basic/enums/b;->d:Lcom/tencent/liteav/basic/enums/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/liteav/basic/enums/b;->e:Lcom/tencent/liteav/basic/enums/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/liteav/basic/enums/b;->f:Lcom/tencent/liteav/basic/enums/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/liteav/basic/enums/b;->g:[Lcom/tencent/liteav/basic/enums/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/basic/enums/b;
    .locals 1

    .line 3
    const-class v0, Lcom/tencent/liteav/basic/enums/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/basic/enums/b;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/basic/enums/b;
    .locals 1

    .line 3
    sget-object v0, Lcom/tencent/liteav/basic/enums/b;->g:[Lcom/tencent/liteav/basic/enums/b;

    invoke-virtual {v0}, [Lcom/tencent/liteav/basic/enums/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/basic/enums/b;

    return-object v0
.end method
