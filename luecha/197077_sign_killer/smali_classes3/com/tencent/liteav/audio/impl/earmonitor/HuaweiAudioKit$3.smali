.class Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$3;
.super Ljava/lang/Object;
.source "HuaweiAudioKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->startSystemEarMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$3;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$3;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$400(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$3;->a:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$500(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V

    return-void
.end method
