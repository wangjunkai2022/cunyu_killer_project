.class Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;
.super Ljava/lang/Object;
.source "TXAudioEffectManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMusicObserver(ILcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

.field final synthetic val$id:I

.field final synthetic val$observer:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;I)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;->this$0:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    iput-object p2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;->val$observer:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;

    iput p3, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;->val$observer:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$600()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;->this$0:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    invoke-static {v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$400(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;)I

    move-result v1

    iget v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;->val$id:I

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$500(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$600()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;->this$0:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    invoke-static {v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$400(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;)I

    move-result v1

    iget v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;->val$id:I

    invoke-static {v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$500(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;->val$observer:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 123
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$600()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AudioCenter:TXAudioEffectManager"

    const-string v2, "setMusicObserver map count: %d"

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
