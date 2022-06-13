.class Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$3;
.super Ljava/lang/Object;
.source "TXCLiveBGMPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/TXCLiveBGMPlayer;->onPlayProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/g;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/tencent/liteav/audio/TXCLiveBGMPlayer;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/TXCLiveBGMPlayer;Lcom/tencent/liteav/audio/g;JJ)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$3;->d:Lcom/tencent/liteav/audio/TXCLiveBGMPlayer;

    iput-object p2, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$3;->a:Lcom/tencent/liteav/audio/g;

    iput-wide p3, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$3;->b:J

    iput-wide p5, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$3;->a:Lcom/tencent/liteav/audio/g;

    if-eqz v0, :cond_0

    .line 194
    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$3;->b:J

    iget-wide v3, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$3;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/g;->a(JJ)V

    :cond_0
    return-void
.end method
