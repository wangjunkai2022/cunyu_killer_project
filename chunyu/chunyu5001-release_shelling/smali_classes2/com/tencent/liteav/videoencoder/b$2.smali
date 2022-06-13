.class Lcom/tencent/liteav/videoencoder/b$2;
.super Ljava/lang/Object;
.source "TXCHWVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoencoder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoencoder/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .line 1340
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b$2;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$2;->a:Lcom/tencent/liteav/videoencoder/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->d(Lcom/tencent/liteav/videoencoder/b;I)V

    return-void
.end method
