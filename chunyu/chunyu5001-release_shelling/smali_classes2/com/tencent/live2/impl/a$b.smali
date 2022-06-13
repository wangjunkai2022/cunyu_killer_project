.class public final enum Lcom/tencent/live2/impl/a$b;
.super Ljava/lang/Enum;
.source "V2TXLiveDefInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/live2/impl/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/live2/impl/a$b;

.field public static final enum b:Lcom/tencent/live2/impl/a$b;

.field public static final enum c:Lcom/tencent/live2/impl/a$b;

.field private static final synthetic d:[Lcom/tencent/live2/impl/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lcom/tencent/live2/impl/a$b;

    const/4 v1, 0x0

    const-string v2, "TXLiveAsyncState_None"

    invoke-direct {v0, v2, v1}, Lcom/tencent/live2/impl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/impl/a$b;->a:Lcom/tencent/live2/impl/a$b;

    .line 41
    new-instance v0, Lcom/tencent/live2/impl/a$b;

    const/4 v2, 0x1

    const-string v3, "TXLiveAsyncState_Starting"

    invoke-direct {v0, v3, v2}, Lcom/tencent/live2/impl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/impl/a$b;->b:Lcom/tencent/live2/impl/a$b;

    .line 42
    new-instance v0, Lcom/tencent/live2/impl/a$b;

    const/4 v3, 0x2

    const-string v4, "TXLiveAsyncState_Stopping"

    invoke-direct {v0, v4, v3}, Lcom/tencent/live2/impl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/impl/a$b;->c:Lcom/tencent/live2/impl/a$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/live2/impl/a$b;

    .line 39
    sget-object v4, Lcom/tencent/live2/impl/a$b;->a:Lcom/tencent/live2/impl/a$b;

    aput-object v4, v0, v1

    sget-object v1, Lcom/tencent/live2/impl/a$b;->b:Lcom/tencent/live2/impl/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/live2/impl/a$b;->c:Lcom/tencent/live2/impl/a$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/live2/impl/a$b;->d:[Lcom/tencent/live2/impl/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/live2/impl/a$b;
    .locals 1

    .line 39
    const-class v0, Lcom/tencent/live2/impl/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/live2/impl/a$b;

    return-object p0
.end method

.method public static values()[Lcom/tencent/live2/impl/a$b;
    .locals 1

    .line 39
    sget-object v0, Lcom/tencent/live2/impl/a$b;->d:[Lcom/tencent/live2/impl/a$b;

    invoke-virtual {v0}, [Lcom/tencent/live2/impl/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/live2/impl/a$b;

    return-object v0
.end method
