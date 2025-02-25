.class Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerAutoCacheHolder;
.super Ljava/lang/Object;
.source "TXAudioEffectManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioEffectManagerAutoCacheHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;-><init>(ILcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;)V

    sput-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerAutoCacheHolder;->INSTANCE:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
    .locals 1

    .line 46
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerAutoCacheHolder;->INSTANCE:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    return-object v0
.end method
