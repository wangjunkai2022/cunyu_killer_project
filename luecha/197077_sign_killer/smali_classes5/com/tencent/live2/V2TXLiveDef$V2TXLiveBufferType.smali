.class public final enum Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;
.super Ljava/lang/Enum;
.source "V2TXLiveDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "V2TXLiveBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

.field public static final enum V2TXLiveBufferTypeByteArray:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

.field public static final enum V2TXLiveBufferTypeByteBuffer:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

.field public static final enum V2TXLiveBufferTypeTexture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

.field public static final enum V2TXLiveBufferTypeUnknown:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 213
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    const/4 v1, 0x0

    const-string v2, "V2TXLiveBufferTypeUnknown"

    invoke-direct {v0, v2, v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeUnknown:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 216
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    const/4 v2, 0x1

    const-string v3, "V2TXLiveBufferTypeByteBuffer"

    invoke-direct {v0, v3, v2}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeByteBuffer:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 219
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    const/4 v3, 0x2

    const-string v4, "V2TXLiveBufferTypeByteArray"

    invoke-direct {v0, v4, v3}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeByteArray:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 222
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    const/4 v4, 0x3

    const-string v5, "V2TXLiveBufferTypeTexture"

    invoke-direct {v0, v5, v4}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeTexture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 210
    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeUnknown:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeByteBuffer:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeByteArray:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->V2TXLiveBufferTypeTexture:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;
    .locals 1

    .line 210
    const-class v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;
    .locals 1

    .line 210
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    invoke-virtual {v0}, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    return-object v0
.end method
