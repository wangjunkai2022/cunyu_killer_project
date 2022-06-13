.class Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$2;
.super Ljava/lang/Object;
.source "TXCLiveBGMPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/TXCLiveBGMPlayer;->onPlayEnd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/g;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/liteav/audio/TXCLiveBGMPlayer;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/TXCLiveBGMPlayer;Lcom/tencent/liteav/audio/g;I)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$2;->c:Lcom/tencent/liteav/audio/TXCLiveBGMPlayer;

    iput-object p2, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$2;->a:Lcom/tencent/liteav/audio/g;

    iput p3, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$2;->a:Lcom/tencent/liteav/audio/g;

    if-eqz v0, :cond_0

    .line 176
    iget v1, p0, Lcom/tencent/liteav/audio/TXCLiveBGMPlayer$2;->b:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/audio/g;->a(I)V

    :cond_0
    return-void
.end method
