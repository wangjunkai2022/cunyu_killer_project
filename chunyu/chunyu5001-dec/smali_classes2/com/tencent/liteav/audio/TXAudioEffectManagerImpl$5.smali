.class final Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;
.super Ljava/lang/Object;
.source "TXAudioEffectManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->onEffectProgress(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$curPtsMS:J

.field final synthetic val$durationMS:J

.field final synthetic val$id:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 0

    .line 354
    iput-wide p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$id:J

    iput-wide p3, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$curPtsMS:J

    iput-wide p5, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$durationMS:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 358
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$600()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$600()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;

    iget-wide v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$id:J

    long-to-int v2, v2

    iget-wide v3, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$curPtsMS:J

    iget-wide v5, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$durationMS:J

    invoke-interface/range {v1 .. v6}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;->onPlayProgress(IJJ)V

    .line 361
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$800()Lcom/tencent/liteav/audio/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$id:J

    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getAutoCacheHolder()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;->val$id:J

    invoke-static {v3, v4, v5}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$700(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/b;->a(JJ)V

    return-void
.end method
