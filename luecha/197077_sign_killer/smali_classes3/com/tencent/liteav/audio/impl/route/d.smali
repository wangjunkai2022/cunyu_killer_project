.class public final enum Lcom/tencent/liteav/audio/impl/route/d;
.super Ljava/lang/Enum;
.source "BluetoothState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/audio/impl/route/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/audio/impl/route/d;

.field public static final enum b:Lcom/tencent/liteav/audio/impl/route/d;

.field public static final enum c:Lcom/tencent/liteav/audio/impl/route/d;

.field public static final enum d:Lcom/tencent/liteav/audio/impl/route/d;

.field public static final enum e:Lcom/tencent/liteav/audio/impl/route/d;

.field public static final enum f:Lcom/tencent/liteav/audio/impl/route/d;

.field public static final enum g:Lcom/tencent/liteav/audio/impl/route/d;

.field public static final enum h:Lcom/tencent/liteav/audio/impl/route/d;

.field private static final synthetic i:[Lcom/tencent/liteav/audio/impl/route/d;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 6
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/d;

    const/4 v1, 0x0

    const-string v2, "UNINITIALIZED"

    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/audio/impl/route/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/d;->a:Lcom/tencent/liteav/audio/impl/route/d;

    .line 9
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/d;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, Lcom/tencent/liteav/audio/impl/route/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/d;->b:Lcom/tencent/liteav/audio/impl/route/d;

    .line 13
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/d;

    const/4 v3, 0x2

    const-string v4, "HEADSET_UNAVAILABLE"

    invoke-direct {v0, v4, v3}, Lcom/tencent/liteav/audio/impl/route/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/d;->c:Lcom/tencent/liteav/audio/impl/route/d;

    .line 17
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/d;

    const/4 v4, 0x3

    const-string v5, "HEADSET_AVAILABLE"

    invoke-direct {v0, v5, v4}, Lcom/tencent/liteav/audio/impl/route/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/d;->d:Lcom/tencent/liteav/audio/impl/route/d;

    .line 20
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/d;

    const/4 v5, 0x4

    const-string v6, "SCO_DISCONNECTING"

    invoke-direct {v0, v6, v5}, Lcom/tencent/liteav/audio/impl/route/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/d;->e:Lcom/tencent/liteav/audio/impl/route/d;

    .line 23
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/d;

    const/4 v6, 0x5

    const-string v7, "SCO_CONNECTING"

    invoke-direct {v0, v7, v6}, Lcom/tencent/liteav/audio/impl/route/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/d;->f:Lcom/tencent/liteav/audio/impl/route/d;

    .line 26
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/d;

    const/4 v7, 0x6

    const-string v8, "SCO_CONNECTED"

    invoke-direct {v0, v8, v7}, Lcom/tencent/liteav/audio/impl/route/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/d;->g:Lcom/tencent/liteav/audio/impl/route/d;

    .line 28
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/d;

    const/4 v8, 0x7

    const-string v9, "SCO_DISCONNECTED"

    invoke-direct {v0, v9, v8}, Lcom/tencent/liteav/audio/impl/route/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/d;->h:Lcom/tencent/liteav/audio/impl/route/d;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/tencent/liteav/audio/impl/route/d;

    .line 4
    sget-object v9, Lcom/tencent/liteav/audio/impl/route/d;->a:Lcom/tencent/liteav/audio/impl/route/d;

    aput-object v9, v0, v1

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/d;->b:Lcom/tencent/liteav/audio/impl/route/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/d;->c:Lcom/tencent/liteav/audio/impl/route/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/d;->d:Lcom/tencent/liteav/audio/impl/route/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/d;->e:Lcom/tencent/liteav/audio/impl/route/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/d;->f:Lcom/tencent/liteav/audio/impl/route/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/d;->g:Lcom/tencent/liteav/audio/impl/route/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/d;->h:Lcom/tencent/liteav/audio/impl/route/d;

    aput-object v1, v0, v8

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/d;->i:[Lcom/tencent/liteav/audio/impl/route/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/audio/impl/route/d;
    .locals 1

    .line 4
    const-class v0, Lcom/tencent/liteav/audio/impl/route/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/audio/impl/route/d;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/audio/impl/route/d;
    .locals 1

    .line 4
    sget-object v0, Lcom/tencent/liteav/audio/impl/route/d;->i:[Lcom/tencent/liteav/audio/impl/route/d;

    invoke-virtual {v0}, [Lcom/tencent/liteav/audio/impl/route/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/audio/impl/route/d;

    return-object v0
.end method
