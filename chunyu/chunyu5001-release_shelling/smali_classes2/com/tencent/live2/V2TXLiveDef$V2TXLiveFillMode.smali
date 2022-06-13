.class public final enum Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;
.super Ljava/lang/Enum;
.source "V2TXLiveDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "V2TXLiveFillMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

.field public static final enum V2TXLiveFillModeFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

.field public static final enum V2TXLiveFillModeFit:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 162
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    const/4 v1, 0x0

    const-string v2, "V2TXLiveFillModeFill"

    invoke-direct {v0, v2, v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    .line 165
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    const/4 v2, 0x1

    const-string v3, "V2TXLiveFillModeFit"

    invoke-direct {v0, v3, v2}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFit:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    .line 159
    sget-object v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFit:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;
    .locals 1

    .line 159
    const-class v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    return-object p0
.end method

.method public static values()[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;
    .locals 1

    .line 159
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    invoke-virtual {v0}, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    return-object v0
.end method
