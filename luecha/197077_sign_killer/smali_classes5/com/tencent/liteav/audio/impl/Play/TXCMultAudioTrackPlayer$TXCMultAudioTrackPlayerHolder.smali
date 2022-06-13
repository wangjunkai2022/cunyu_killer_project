.class Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$TXCMultAudioTrackPlayerHolder;
.super Ljava/lang/Object;
.source "TXCMultAudioTrackPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TXCMultAudioTrackPlayerHolder"
.end annotation


# static fields
.field private static instance:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;-><init>(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$1;)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$TXCMultAudioTrackPlayerHolder;->instance:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;
    .locals 1

    .line 49
    sget-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$TXCMultAudioTrackPlayerHolder;->instance:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;

    return-object v0
.end method
