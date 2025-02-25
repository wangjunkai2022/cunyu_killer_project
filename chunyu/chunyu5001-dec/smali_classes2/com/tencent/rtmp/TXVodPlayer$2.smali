.class Lcom/tencent/rtmp/TXVodPlayer$2;
.super Ljava/lang/Object;
.source "TXVodPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/TXVodPlayer;->postBitmapToMainThread(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/tencent/rtmp/TXVodPlayer;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/TXVodPlayer;Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer$2;->c:Lcom/tencent/rtmp/TXVodPlayer;

    iput-object p2, p0, Lcom/tencent/rtmp/TXVodPlayer$2;->a:Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;

    iput-object p3, p0, Lcom/tencent/rtmp/TXVodPlayer$2;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer$2;->a:Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;

    if-eqz v0, :cond_0

    .line 826
    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer$2;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;->onSnapshot(Landroid/graphics/Bitmap;)V

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer$2;->c:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->access$202(Lcom/tencent/rtmp/TXVodPlayer;Z)Z

    return-void
.end method
