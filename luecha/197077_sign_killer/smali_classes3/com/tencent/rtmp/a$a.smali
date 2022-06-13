.class Lcom/tencent/rtmp/a$a;
.super Ljava/lang/Object;
.source "TXLivePlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/tencent/rtmp/a;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/tencent/rtmp/a$a;->a:Lcom/tencent/rtmp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x12c

    .line 528
    iput p1, p0, Lcom/tencent/rtmp/a$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/rtmp/a;Lcom/tencent/rtmp/a$1;)V
    .locals 0

    .line 527
    invoke-direct {p0, p1}, Lcom/tencent/rtmp/a$a;-><init>(Lcom/tencent/rtmp/a;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 531
    iput p1, p0, Lcom/tencent/rtmp/a$a;->b:I

    return-void
.end method

.method public run()V
    .locals 4

    .line 536
    iget-object v0, p0, Lcom/tencent/rtmp/a$a;->a:Lcom/tencent/rtmp/a;

    invoke-static {v0}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/a;)Lcom/tencent/liteav/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp/a$a;->a:Lcom/tencent/rtmp/a;

    invoke-static {v0}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/a;)Lcom/tencent/liteav/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/tencent/rtmp/a$a;->a:Lcom/tencent/rtmp/a;

    invoke-static {v0}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/a;)Lcom/tencent/liteav/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/j;->j()I

    move-result v0

    .line 538
    iget-object v1, p0, Lcom/tencent/rtmp/a$a;->a:Lcom/tencent/rtmp/a;

    invoke-static {v1}, Lcom/tencent/rtmp/a;->b(Lcom/tencent/rtmp/a;)Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/tencent/rtmp/a$a;->a:Lcom/tencent/rtmp/a;

    invoke-static {v1}, Lcom/tencent/rtmp/a;->b(Lcom/tencent/rtmp/a;)Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;->onAudioVolumeEvaluationNotify(I)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a$a;->a:Lcom/tencent/rtmp/a;

    invoke-static {v0}, Lcom/tencent/rtmp/a;->c(Lcom/tencent/rtmp/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/rtmp/a$a;->b:I

    if-lez v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/tencent/rtmp/a$a;->a:Lcom/tencent/rtmp/a;

    invoke-static {v0}, Lcom/tencent/rtmp/a;->c(Lcom/tencent/rtmp/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/rtmp/a$a;->a:Lcom/tencent/rtmp/a;

    invoke-static {v1}, Lcom/tencent/rtmp/a;->d(Lcom/tencent/rtmp/a;)Lcom/tencent/rtmp/a$a;

    move-result-object v1

    iget v2, p0, Lcom/tencent/rtmp/a$a;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
