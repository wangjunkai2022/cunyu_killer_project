.class Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;
.super Ljava/lang/Thread;
.source "TXCMultAudioTrackPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioTrackThread"
.end annotation


# instance fields
.field volatile mIsLooping:Z

.field final synthetic this$0:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;->this$0:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;

    .line 25
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;->mIsLooping:Z

    return-void
.end method


# virtual methods
.method public startLoop()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;->mIsLooping:Z

    return-void
.end method

.method public stopLoop()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;->mIsLooping:Z

    return-void
.end method
