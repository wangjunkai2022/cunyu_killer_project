.class public final enum Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;
.super Ljava/lang/Enum;
.source "V2TXLiveDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "V2TXLiveAudioQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

.field public static final enum V2TXLiveAudioQualityDefault:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

.field public static final enum V2TXLiveAudioQualityMusic:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

.field public static final enum V2TXLiveAudioQualitySpeech:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 286
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    const/4 v1, 0x0

    const-string v2, "V2TXLiveAudioQualitySpeech"

    invoke-direct {v0, v2, v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->V2TXLiveAudioQualitySpeech:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    .line 289
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    const/4 v2, 0x1

    const-string v3, "V2TXLiveAudioQualityDefault"

    invoke-direct {v0, v3, v2}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->V2TXLiveAudioQualityDefault:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    .line 292
    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    const/4 v3, 0x2

    const-string v4, "V2TXLiveAudioQualityMusic"

    invoke-direct {v0, v4, v3}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->V2TXLiveAudioQualityMusic:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    .line 283
    sget-object v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->V2TXLiveAudioQualitySpeech:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    aput-object v4, v0, v1

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->V2TXLiveAudioQualityDefault:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->V2TXLiveAudioQualityMusic:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;
    .locals 1

    .line 283
    const-class v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    return-object p0
.end method

.method public static values()[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;
    .locals 1

    .line 283
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    invoke-virtual {v0}, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioQuality;

    return-object v0
.end method
