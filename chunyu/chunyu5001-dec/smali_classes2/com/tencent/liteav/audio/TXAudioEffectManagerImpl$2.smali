.class Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$2;
.super Ljava/lang/Object;
.source "TXAudioEffectManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->stopAllMusics(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

.field final synthetic val$finalId:J


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;J)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$2;->this$0:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    iput-wide p2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$2;->val$finalId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 232
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->access$600()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$2;->val$finalId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
