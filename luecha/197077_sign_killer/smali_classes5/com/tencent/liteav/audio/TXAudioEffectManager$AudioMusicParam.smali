.class public Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;
.super Ljava/lang/Object;
.source "TXAudioEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioMusicParam"
.end annotation


# instance fields
.field public endTimeMS:J

.field public id:I

.field public isShortFile:Z

.field public loopCount:I

.field public path:Ljava/lang/String;

.field public publish:Z

.field public startTimeMS:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    .line 147
    iput p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    const/4 p1, 0x0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->loopCount:I

    .line 149
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->publish:Z

    .line 150
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->isShortFile:Z

    const-wide/16 p1, 0x0

    .line 151
    iput-wide p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->startTimeMS:J

    const-wide/16 p1, -0x1

    .line 152
    iput-wide p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->endTimeMS:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loopCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->loopCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", publish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->publish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShortFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->isShortFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startTimeMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->startTimeMS:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->endTimeMS:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
