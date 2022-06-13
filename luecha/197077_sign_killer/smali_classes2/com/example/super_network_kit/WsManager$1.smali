.class Lcom/example/super_network_kit/WsManager$1;
.super Ljava/lang/Object;
.source "WsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/super_network_kit/WsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/super_network_kit/WsManager;


# direct methods
.method constructor <init>(Lcom/example/super_network_kit/WsManager;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager$1;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager$1;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {v0}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager$1;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {v0}, Lcom/example/super_network_kit/WsManager;->access$000(Lcom/example/super_network_kit/WsManager;)Lcom/example/super_network_kit/listener/WsStatusListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/super_network_kit/listener/WsStatusListener;->onReconnect()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/example/super_network_kit/WsManager$1;->this$0:Lcom/example/super_network_kit/WsManager;

    invoke-static {v0}, Lcom/example/super_network_kit/WsManager;->access$100(Lcom/example/super_network_kit/WsManager;)V

    return-void
.end method
