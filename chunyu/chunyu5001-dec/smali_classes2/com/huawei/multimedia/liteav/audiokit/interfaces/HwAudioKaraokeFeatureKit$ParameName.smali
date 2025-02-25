.class public final enum Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;
.super Ljava/lang/Enum;
.source "HwAudioKaraokeFeatureKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParameName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

.field public static final enum CMD_SET_AUDIO_EFFECT_MODE_BASE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

.field public static final enum CMD_SET_VOCAL_EQUALIZER_MODE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

.field public static final enum CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;


# instance fields
.field private mParameName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    const/4 v1, 0x0

    const-string v2, "CMD_SET_AUDIO_EFFECT_MODE_BASE"

    const-string v3, "Karaoke_reverb_mode="

    invoke-direct {v0, v2, v1, v3}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_AUDIO_EFFECT_MODE_BASE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    .line 22
    new-instance v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    const/4 v2, 0x1

    const-string v3, "CMD_SET_VOCAL_VOLUME_BASE"

    const-string v4, "Karaoke_volume="

    invoke-direct {v0, v3, v2, v4}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    .line 23
    new-instance v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    const/4 v3, 0x2

    const-string v4, "CMD_SET_VOCAL_EQUALIZER_MODE"

    const-string v5, "Karaoke_eq_mode="

    invoke-direct {v0, v4, v3, v5}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_VOCAL_EQUALIZER_MODE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    .line 20
    sget-object v4, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_AUDIO_EFFECT_MODE_BASE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    aput-object v4, v0, v1

    sget-object v1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_VOCAL_EQUALIZER_MODE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->$VALUES:[Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->mParameName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;
    .locals 1

    .line 20
    const-class v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    return-object p0
.end method

.method public static values()[Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;
    .locals 1

    .line 20
    sget-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->$VALUES:[Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    invoke-virtual {v0}, [Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    return-object v0
.end method


# virtual methods
.method public getParameName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->mParameName:Ljava/lang/String;

    return-object v0
.end method
