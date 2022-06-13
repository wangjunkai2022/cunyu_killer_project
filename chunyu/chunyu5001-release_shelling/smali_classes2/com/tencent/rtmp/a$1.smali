.class Lcom/tencent/rtmp/a$1;
.super Ljava/lang/Object;
.source "TXLivePlayerImpl.java"

# interfaces
.implements Lcom/tencent/liteav/basic/e/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;

.field final synthetic b:Lcom/tencent/rtmp/a;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/a;Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/tencent/rtmp/a$1;->b:Lcom/tencent/rtmp/a;

    iput-object p2, p0, Lcom/tencent/rtmp/a$1;->a:Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/tencent/rtmp/a$1;->b:Lcom/tencent/rtmp/a;

    iget-object v1, p0, Lcom/tencent/rtmp/a$1;->a:Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;

    invoke-static {v0, v1, p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/a;Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V

    return-void
.end method
