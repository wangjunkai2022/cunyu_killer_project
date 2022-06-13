.class Lcom/tencent/live2/a/a$1;
.super Ljava/lang/Object;
.source "TXRTMPPlayerImpl.java"

# interfaces
.implements Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/live2/a/a;->snapshot()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/live2/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/live2/a/a;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/tencent/live2/a/a$1;->a:Lcom/tencent/live2/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshot(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/tencent/live2/a/a$1;->a:Lcom/tencent/live2/a/a;

    invoke-static {v0}, Lcom/tencent/live2/a/a;->a(Lcom/tencent/live2/a/a;)Lcom/tencent/live2/V2TXLivePlayerObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/tencent/live2/a/a$1;->a:Lcom/tencent/live2/a/a;

    invoke-static {v1}, Lcom/tencent/live2/a/a;->b(Lcom/tencent/live2/a/a;)Lcom/tencent/live2/V2TXLivePlayer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onSnapshotComplete(Lcom/tencent/live2/V2TXLivePlayer;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
