.class public final enum Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;
.super Ljava/lang/Enum;
.source "V2TXLiveDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "V2TXLivePushStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

.field public static final enum V2TXLivePushStatusConnectSuccess:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

.field public static final enum V2TXLivePushStatusConnecting:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

.field public static final enum V2TXLivePushStatusDisconnected:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

.field public static final enum V2TXLivePushStatusReconnecting:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 386
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    const/4 v1, 0x0

    const-string v2, "V2TXLivePushStatusDisconnected"

    invoke-direct {v0, v2, v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusDisconnected:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    .line 389
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    const/4 v2, 0x1

    const-string v3, "V2TXLivePushStatusConnecting"

    invoke-direct {v0, v3, v2}, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusConnecting:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    .line 392
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    const/4 v3, 0x2

    const-string v4, "V2TXLivePushStatusConnectSuccess"

    invoke-direct {v0, v4, v3}, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusConnectSuccess:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    .line 395
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    const/4 v4, 0x3

    const-string v5, "V2TXLivePushStatusReconnecting"

    invoke-direct {v0, v5, v4}, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusReconnecting:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    .line 383
    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusDisconnected:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusConnecting:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusConnectSuccess:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->V2TXLivePushStatusReconnecting:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;
    .locals 1

    .line 383
    const-class v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    return-object p0
.end method

.method public static values()[Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;
    .locals 1

    .line 383
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    invoke-virtual {v0}, [Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLivePushStatus;

    return-object v0
.end method
