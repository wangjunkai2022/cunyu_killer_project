.class public abstract Lcom/tencent/liteav/txcplayer/a;
.super Ljava/lang/Object;
.source "AbstractTXVCubePlayer.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;


# instance fields
.field private mOnBufferingUpdateListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

.field private mOnCompletionListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

.field private mOnErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

.field private mOnGetTargetState:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;

.field private mOnHLSKeyErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

.field private mOnHevcVideoDecoderErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

.field private mOnInfoListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

.field private mOnPreparedListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

.field private mOnSeekCompleteListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

.field private mOnTimedTextListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

.field private mOnVideoDecoderErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

.field private mOnVideoSizeChangedListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTXCVodVideoViewTargetState()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnGetTargetState:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyHLSKeyError()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnHLSKeyErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyHevcVideoDecoderError()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnHevcVideoDecoderErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnBufferingUpdate(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnBufferingUpdateListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;I)V

    :cond_0
    return-void
.end method

.method public final notifyOnCompletion()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnCompletionListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnError(II)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final notifyOnInfo(IIILjava/lang/Object;)Z
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnInfoListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;IIILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final notifyOnPrepared()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnPreparedListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnSeekComplete()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnSeekCompleteListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_0
    return-void
.end method

.method public final notifyOnTimedText(Lcom/tencent/liteav/txcplayer/j;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnTimedTextListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcplayer/j;)V

    :cond_0
    return-void
.end method

.method public final notifyOnVideoSizeChanged(IIIILjava/lang/String;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnVideoSizeChangedListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 117
    invoke-interface/range {v0 .. v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final notifyVideoDecoderError()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnVideoDecoderErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnPreparedListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 82
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnBufferingUpdateListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 83
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnCompletionListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    .line 84
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnSeekCompleteListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 85
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnVideoSizeChangedListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    .line 86
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 87
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnInfoListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 88
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnTimedTextListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 89
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnHLSKeyErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 90
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnHevcVideoDecoderErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 91
    iput-object v0, p0, Lcom/tencent/liteav/txcplayer/a;->mOnVideoDecoderErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    return-void
.end method

.method public final setOnBufferingUpdateListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnBufferingUpdateListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    return-void
.end method

.method public final setOnCompletionListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnCompletionListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;

    return-void
.end method

.method public final setOnErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    return-void
.end method

.method public setOnGetTXCVodVideoViewTargetState(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnGetTargetState:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;

    return-void
.end method

.method public final setOnHLSKeyErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnHLSKeyErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    return-void
.end method

.method public final setOnHevcVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnHevcVideoDecoderErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    return-void
.end method

.method public final setOnInfoListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnInfoListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    return-void
.end method

.method public final setOnPreparedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnPreparedListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    return-void
.end method

.method public final setOnSeekCompleteListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnSeekCompleteListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    return-void
.end method

.method public final setOnTimedTextListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnTimedTextListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    return-void
.end method

.method public final setOnVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnVideoDecoderErrorListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    return-void
.end method

.method public final setOnVideoSizeChangedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/a;->mOnVideoSizeChangedListener:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    return-void
.end method
