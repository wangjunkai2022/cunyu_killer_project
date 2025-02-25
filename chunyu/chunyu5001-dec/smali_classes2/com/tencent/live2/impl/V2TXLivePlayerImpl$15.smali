.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->setPlayoutVolume(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;I)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iput p2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;->val$volume:I

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$1502(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;I)I

    .line 424
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;->val$volume:I

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setPlayoutVolume(I)I

    :cond_0
    return-void
.end method
