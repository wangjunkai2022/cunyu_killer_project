.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->enableReceiveSeiMessage(ZI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

.field final synthetic val$enable:Z

.field final synthetic val$payloadType:I


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;ZI)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iput-boolean p2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->val$enable:Z

    iput p3, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->val$payloadType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->val$enable:Z

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$502(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)Z

    .line 202
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->val$payloadType:I

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$602(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;I)I

    .line 203
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->val$enable:Z

    iget v2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;->val$payloadType:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/live2/V2TXLivePlayer;->enableReceiveSeiMessage(ZI)I

    :cond_0
    return-void
.end method
