.class Lcom/tencent/liteav/audio/TXCAudioEngine$1;
.super Ljava/lang/Object;
.source "TXCAudioEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/TXCAudioEngine;->onAudioKitError(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/liteav/audio/TXCAudioEngine;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/TXCAudioEngine;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine$1;->this$0:Lcom/tencent/liteav/audio/TXCAudioEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine$1;->this$0:Lcom/tencent/liteav/audio/TXCAudioEngine;

    invoke-static {v0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->access$000(Lcom/tencent/liteav/audio/TXCAudioEngine;)V

    return-void
.end method
