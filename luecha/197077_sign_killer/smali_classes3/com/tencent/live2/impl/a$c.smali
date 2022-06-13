.class public final enum Lcom/tencent/live2/impl/a$c;
.super Ljava/lang/Enum;
.source "V2TXLiveDefInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/live2/impl/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/live2/impl/a$c;

.field public static final enum b:Lcom/tencent/live2/impl/a$c;

.field public static final enum c:Lcom/tencent/live2/impl/a$c;

.field public static final enum d:Lcom/tencent/live2/impl/a$c;

.field private static final synthetic e:[Lcom/tencent/live2/impl/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/tencent/live2/impl/a$c;

    const/4 v1, 0x0

    const-string v2, "V2TXLiveProtocolTypeROOM"

    invoke-direct {v0, v2, v1}, Lcom/tencent/live2/impl/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/impl/a$c;->a:Lcom/tencent/live2/impl/a$c;

    .line 33
    new-instance v0, Lcom/tencent/live2/impl/a$c;

    const/4 v2, 0x1

    const-string v3, "V2TXLiveProtocolTypeTRTC"

    invoke-direct {v0, v3, v2}, Lcom/tencent/live2/impl/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/impl/a$c;->b:Lcom/tencent/live2/impl/a$c;

    .line 34
    new-instance v0, Lcom/tencent/live2/impl/a$c;

    const/4 v3, 0x2

    const-string v4, "V2TXLiveProtocolTypeRTMP"

    invoke-direct {v0, v4, v3}, Lcom/tencent/live2/impl/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/impl/a$c;->c:Lcom/tencent/live2/impl/a$c;

    .line 35
    new-instance v0, Lcom/tencent/live2/impl/a$c;

    const/4 v4, 0x3

    const-string v5, "V2TXLiveProtocolTypeWEBRTC"

    invoke-direct {v0, v5, v4}, Lcom/tencent/live2/impl/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/impl/a$c;->d:Lcom/tencent/live2/impl/a$c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/live2/impl/a$c;

    .line 31
    sget-object v5, Lcom/tencent/live2/impl/a$c;->a:Lcom/tencent/live2/impl/a$c;

    aput-object v5, v0, v1

    sget-object v1, Lcom/tencent/live2/impl/a$c;->b:Lcom/tencent/live2/impl/a$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/live2/impl/a$c;->c:Lcom/tencent/live2/impl/a$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/live2/impl/a$c;->d:Lcom/tencent/live2/impl/a$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/live2/impl/a$c;->e:[Lcom/tencent/live2/impl/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/live2/impl/a$c;
    .locals 1

    .line 31
    const-class v0, Lcom/tencent/live2/impl/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/live2/impl/a$c;

    return-object p0
.end method

.method public static values()[Lcom/tencent/live2/impl/a$c;
    .locals 1

    .line 31
    sget-object v0, Lcom/tencent/live2/impl/a$c;->e:[Lcom/tencent/live2/impl/a$c;

    invoke-virtual {v0}, [Lcom/tencent/live2/impl/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/live2/impl/a$c;

    return-object v0
.end method
