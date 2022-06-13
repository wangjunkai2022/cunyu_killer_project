.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->enableObserveVideoFrame(ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

.field final synthetic val$bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

.field final synthetic val$enable:Z

.field final synthetic val$pixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iput-boolean p2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->val$enable:Z

    iput-object p3, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->val$pixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    iput-object p4, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->val$bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->val$enable:Z

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$1902(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)Z

    .line 495
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->val$pixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$2002(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;)Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    .line 496
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->val$bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$2102(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    .line 497
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->val$enable:Z

    iget-object v2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->val$pixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    iget-object v3, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;->val$bufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/live2/V2TXLivePlayer;->enableObserveVideoFrame(ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)I

    :cond_0
    return-void
.end method
