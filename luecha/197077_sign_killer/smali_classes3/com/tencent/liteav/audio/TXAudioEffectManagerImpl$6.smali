.class final Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$6;
.super Ljava/lang/Object;
.source "TXAudioEffectManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->onEffectLoop(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:J

.field final synthetic val$loopCountRemain:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 369
    iput-wide p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$6;->val$id:J

    iput-wide p3, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$6;->val$loopCountRemain:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectLoop -> id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$6;->val$id:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " loopCountRemain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$6;->val$loopCountRemain:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$800()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$6;->val$id:J

    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getAutoCacheHolder()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$6;->val$id:J

    invoke-static {v3, v4, v5}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$700(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/b;->e(JJ)V

    return-void
.end method
