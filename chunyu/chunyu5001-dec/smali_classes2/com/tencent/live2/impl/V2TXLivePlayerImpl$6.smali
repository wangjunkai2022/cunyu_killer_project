.class Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;
.super Ljava/lang/Object;
.source "V2TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->setRenderView(Landroid/view/SurfaceView;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

.field final synthetic val$view:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Landroid/view/SurfaceView;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iput-object p2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;->val$view:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;->val$view:Landroid/view/SurfaceView;

    invoke-static {v0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$702(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;->this$0:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-static {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;->val$view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/SurfaceView;)I

    :cond_0
    return-void
.end method
