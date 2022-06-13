.class final Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;
.super Ljava/lang/Object;
.source "TXAudioEffectManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->onEffectStart(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$errCode:I

.field final synthetic val$id:J


# direct methods
.method constructor <init>(JI)V
    .locals 0

    .line 340
    iput-wide p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;->val$id:J

    iput p3, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;->val$errCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectStart -> effect id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;->val$id:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;->val$errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$600()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;->val$id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$600()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;->val$id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;->val$id:J

    long-to-int v1, v1

    iget v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;->val$errCode:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;->onStart(II)V

    :cond_0
    return-void
.end method
