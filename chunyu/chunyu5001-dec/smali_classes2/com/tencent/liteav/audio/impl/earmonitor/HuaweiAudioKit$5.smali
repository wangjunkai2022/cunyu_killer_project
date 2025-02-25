.class Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$5;
.super Ljava/lang/Object;
.source "HuaweiAudioKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->setSystemEarMonitoringVolume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;I)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$5;->b:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    iput p2, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$5;->b:Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    iget v1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$5;->a:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->access$800(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;I)V

    return-void
.end method
