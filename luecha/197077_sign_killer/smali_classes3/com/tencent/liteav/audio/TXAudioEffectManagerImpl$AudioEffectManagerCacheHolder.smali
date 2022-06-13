.class Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerCacheHolder;
.super Ljava/lang/Object;
.source "TXAudioEffectManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioEffectManagerCacheHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;-><init>(ILcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;)V

    sput-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerCacheHolder;->INSTANCE:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
    .locals 1

    .line 42
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerCacheHolder;->INSTANCE:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    return-object v0
.end method
